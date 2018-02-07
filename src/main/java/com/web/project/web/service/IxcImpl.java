package com.web.project.web.service;

import com.web.project.web.mapper.RecruitMapper;
import com.web.project.web.model.Recruit;
import org.apache.ibatis.jdbc.Null;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Server on 2018/1/31.
 */
@Service
public class IxcImpl implements  Runnable{
//    @Resource
//    private  RecruitMapper recruitMapper;
    public void run() {
        for(int i=0;i<3;i++){
            System.out.println(Thread.currentThread().getName()
                    + "运行，i = " + i) ;    // 取得当前线程的名字
        }
    }

    public List<Recruit> getS() throws Exception {
        SqlSession session = DBTools.getSession();
        List<Recruit> user= null;
        try{
            RecruitMapper mapper  = session.getMapper(RecruitMapper.class);
            user=mapper.GetListRecruit();
            session.commit();
        }catch(Exception e){
            session.rollback();
        }finally{
            session.close();
        }
        return user;
    }


}
