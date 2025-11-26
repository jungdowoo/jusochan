package com.jusochan.addresstranslator.controller;


import com.jusochan.addresstranslator.dto.RoadAddressDto;
import com.jusochan.addresstranslator.repository.AddressRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequiredArgsConstructor
public class AddressApiController {

    private final AddressRepository addressRepository;

    @GetMapping("/api/search-road")
    public List<RoadAddressDto> searchRoad(@RequestParam("q") String keyword) {
        // 키워드가 너무 짧으면 빈 결과
        if(keyword == null || keyword.trim().length() < 2) {
            return List.of();
        }
        return addressRepository.searchByRoadName(keyword.trim());
    }
}
