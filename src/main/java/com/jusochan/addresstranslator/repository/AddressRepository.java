package com.jusochan.addresstranslator.repository;

import com.jusochan.addresstranslator.dto.RoadAddressDto;
import lombok.RequiredArgsConstructor;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@RequiredArgsConstructor
public class AddressRepository {

    private final JdbcTemplate jdbcTemplate;

    /**
     * 도로명(한글)으로 검색
     */
    public List<RoadAddressDto> searchByRoadName(String keyword) {

        String sql = """
        SELECT
            k.road_name_kor,
            k.road_name_eng,
            k.sido_kor,
            k.sigungu_kor,
            f.zipcode,
            '' AS dong_name_kor      -- 일단 빈 문자열
        FROM road_address_kor k
        JOIN road_address_full f
          ON k.road_code = f.road_code
        WHERE
              k.road_name_kor LIKE CONCAT('%', ?, '%')   -- ①
           OR k.sigungu_kor    LIKE CONCAT('%', ?, '%')  -- ②
        LIMIT 50
        """;

        return jdbcTemplate.query(sql,
                (rs, rowNum) -> new RoadAddressDto(
                        rs.getString("road_name_kor"),
                        rs.getString("road_name_eng"),
                        rs.getString("sido_kor"),
                        rs.getString("sigungu_kor"),
                        rs.getString("zipcode"),
                        rs.getString("dong_name_kor")
                ),
                keyword, keyword   // ✅ ? 개수(2개)와 파라미터(2개)가 일치
        );
    }
}
