package com.web.project.web.controller.erp.erp;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Server on 2018/1/31.
 */
@RequestMapping("/erp")
@Controller
public class OneController {
    @RequestMapping("/one")
    public String getOnejsp()
    {
        return "/erp/one/zms";
    }
}
