package com.web.project.web.controller.erp;

import com.web.project.web.service.Ixc;
import com.web.project.web.service.IxcImpl;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by Server on 2018/1/17.
 */
@Controller
@RequestMapping("/web")
public class WelcomeController {

    IxcImpl ixc=new IxcImpl();
    @RequestMapping(value="/index")
    public String getIndex()
    {
        return "erp/textJ";
    }

    @RequestMapping(value="/entity")
    @ResponseBody
    public void getEntity()
    {
        ixc.run();
    }
}
