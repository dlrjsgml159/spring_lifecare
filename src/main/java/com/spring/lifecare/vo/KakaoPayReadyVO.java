package com.spring.lifecare.vo;

import java.util.Date;

import lombok.Data;

@Data
public class KakaoPayReadyVO {

    //response
    private String tid, next_redirect_pc_url, next_redirect_mobile_url;
    private Date created_at;
    
}
