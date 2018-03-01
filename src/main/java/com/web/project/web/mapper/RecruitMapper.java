package com.web.project.web.mapper;

import com.web.project.web.model.Recruit;

import java.util.List;

/**
 * Created by Server on 2018/2/2.
 */
public interface RecruitMapper {


    public List<Recruit> GetListRecruit()throws Exception;

    public Recruit insertInfo(Recruit info)throws Exception;


}
