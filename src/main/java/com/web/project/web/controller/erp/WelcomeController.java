package com.web.project.web.controller.erp;

import com.mysql.cj.xdevapi.JsonArray;
import com.web.project.web.model.Recruit;
import com.web.project.web.model.menu;
import com.web.project.web.model.ouser.User;
import com.web.project.web.service.Ixc;
import com.web.project.web.service.IxcImpl;

import com.web.project.web.service.User.IuserImpl;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;
/**
 * Created by Server on 2018/1/17.
 */
@Component("jacksonObjectMapper")

@Controller
@RequestMapping("/web")
public class WelcomeController {

    @Resource
    private IuserImpl ixc;


    @RequestMapping(value="/index")
    public String getIndex()
    {
        return "erp/textJ";
    }

    @RequestMapping(value="/entity",method=RequestMethod.GET,produces="application/json" )
    @ResponseBody
    public menu getEntity(HttpServletRequest request,HttpServletResponse response,User infoParameter)throws Exception
    {

         List<User> Tlist=ixc.GetListUser(infoParameter);
        int count=ixc.GetCount();
         menu info=new menu();
         info.setCode(0);
         info.setMsg("ok");
         info.setCount(count);
        info.setData(Tlist);
         return info;
    }
}
