package com.exam.service;

import com.baomidou.mybatisplus.spring.service.IService;
import com.exam.entity.Users;
import java.util.Map;
import com.exam.vo.LoginRequestVo;



public interface UsersService extends IService<Users> {
    public Map<String, Object> login(LoginRequestVo loginRequestVo);
}
