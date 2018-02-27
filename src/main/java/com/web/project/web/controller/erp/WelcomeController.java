package com.web.project.web.controller.erp;

import com.mysql.cj.xdevapi.JsonArray;
import com.web.project.web.model.Recruit;
import com.web.project.web.service.Ixc;
import com.web.project.web.service.IxcImpl;

import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * Created by Server on 2018/1/17.
 */
@Controller
@RequestMapping("/web")
public class WelcomeController {

    @Resource
    private IxcImpl ixc;


    @RequestMapping(value="/index")
    public String getIndex()
    {
        return "erp/textJ";
    }

    @RequestMapping(value="/entity",method=RequestMethod.POST,produces="application/json" )
    @ResponseBody
    public List<Recruit> getEntity(HttpServletResponse response)throws Exception
    {
        List<Recruit> Tlist=ixc.getS();

        return Tlist;
    }
}
