package com.web.project.web.controller.erp;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by Server on 2018/1/17.
 */
@Controller
@RequestMapping("/web")
public class WelcomeController {

    @RequestMapping(value="/index")
    public String getIndex()
    {
        return "erp/textJ";
    }
}
