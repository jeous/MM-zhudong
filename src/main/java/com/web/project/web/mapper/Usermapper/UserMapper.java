package com.web.project.web.mapper.Usermapper;

import com.web.project.web.model.ouser.User;

import java.util.List;

/**
 * Created by Server on 2018/3/12.
 */
public interface UserMapper {

     public  List<User> GetListUser(User infoParameter)throws Exception;

     public int GetListUserCount()throws Exception;

}
