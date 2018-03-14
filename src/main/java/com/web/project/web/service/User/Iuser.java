package com.web.project.web.service.User;


import com.web.project.web.model.ouser.User;

import java.util.List;

/**
 * Created by Server on 2018/3/12.
 */
public interface Iuser {

    List<User> GetListUser(User infoParameter)throws Exception;

    int  GetCount() throws Exception;
}
