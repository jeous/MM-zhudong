package com.web.project.web.service.User;

import com.web.project.web.mapper.RecruitMapper;
import com.web.project.web.mapper.Usermapper.UserMapper;
import com.web.project.web.model.Recruit;
import com.web.project.web.model.ouser.User;
import com.web.project.web.service.DBTools;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Server on 2018/3/12.
 */
@Service
public class IuserImpl implements Iuser {

    public List<User> GetListUser(User infoParameter) throws Exception{
        SqlSession session = DBTools.getSession();
        List<User> user= null;
        try{
           UserMapper mapper  = session.getMapper(UserMapper.class);
            user=mapper.GetListUser(infoParameter);
            session.commit();
        }catch(Exception e){
            session.rollback();
        }finally{
            session.close();
        }
        return user;
    }

    public int GetCount() throws Exception {
        SqlSession session=DBTools.getSession();
        int count=0;
        try{
            UserMapper mapper=session.getMapper(UserMapper.class);
            count= mapper.GetListUserCount();
        }catch(Exception e){
            session.rollback();
        }finally {
            session.close();
        }
        return count;
    }
}
