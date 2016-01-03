package com.bdc.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

/**
 * Created by Administrator on 2016/1/3.
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
@EqualsAndHashCode(callSuper = false)
public class Word extends BaseModel {
    private Integer id;
    private String english;
    private String chinese;
    private String sentence;
}
