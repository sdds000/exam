package com.example.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

import java.util.List;

/**
 * Created by Administrator on 2015/12/13.
 * model domain data entity
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode(callSuper = false)
public class User extends BaseModel {
    private Integer id;
    private String username;
    private String password;
    private String role;

    private List<Salary> salaries;
}
