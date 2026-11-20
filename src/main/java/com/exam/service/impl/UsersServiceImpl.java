package com.exam.service.impl;

import java.util.HashMap;
import java.util.Map;

import org.apache.commons.lang3.ObjectUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.spring.service.impl.ServiceImpl;
import com.exam.common.result.ResultCodeEnum;
import com.exam.entity.Users;
import com.exam.exception.MyException;
import com.exam.mapper.UsersMapper;
import com.exam.service.UsersService;
import com.exam.util.JwtUtil;
import com.exam.vo.LoginRequestVo;

import lombok.extern.slf4j.Slf4j;

@Slf4j 
@Service 
public class UsersServiceImpl extends ServiceImpl<UsersMapper, Users> implements UsersService {
    
    @Autowired 
    private UsersMapper usersMapper;
    
    
    @Override
    public Map<String, Object> login(LoginRequestVo loginRequestVo) {
        
        if (loginRequestVo == null
            || StringUtils.isBlank(loginRequestVo.getUsername())
            || StringUtils.isBlank(loginRequestVo.getPassword())
        ) {
            log.debug("登录参数为空");
            throw new MyException( ResultCodeEnum.LOGIN_PARAM_ERROR);
        }
        String username = loginRequestVo.getUsername().trim();

        // 根据用户名查用户
        LambdaQueryWrapper<Users> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.eq(Users::getUsername, username);
        Users user = usersMapper.selectOne(queryWrapper);

        if (ObjectUtils.isEmpty(user)) {
            log.debug("用户{}不存在", username);
            throw new MyException( ResultCodeEnum.USER_NOT_EXIST);
        }
        // 验证密码 md5
        String md5Password = DigestUtils.md5Hex(loginRequestVo.getPassword());
        if (!md5Password.equals(user.getPassword())) {
            log.debug("用户{}密码错误", username);
            throw new MyException( ResultCodeEnum.ACCOUNT_ERROR);
        }
        // 校验状态
        if (!"active".equalsIgnoreCase(user.getStatus())) {
            log.debug("用户{}状态异常", username);
            throw new MyException( ResultCodeEnum.ACCOUNT_DISABLED_ERROR);
        }
        // 生成token
        String role = user.getRole() != null ? user.getRole().toUpperCase() : "USER";
        String token = JwtUtil.createToken(user.getId(), username, role);

        // 组装 返回
        user.setPassword(null);
        user.setRole(role);
        Map<String, Object> result = new HashMap<>();
        result.put("userInfo", user);
        result.put("token", token);
        log.debug("登录成功，返回结果：{}", result);
        return result;
    }
    
}
