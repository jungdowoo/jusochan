package com.jusochan.addresstranslator.dto;


import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class RoadAddressDto {
    private String roadNameKor;
    private String roadNameEng;
    private String sidoKor;
    private String sigunguKor;
    private String zipcode;
    private String dongNameKor;
}
