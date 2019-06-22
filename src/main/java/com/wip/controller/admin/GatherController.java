package com.wip.controller.admin;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/admin/gather")
public class GatherController {
    private static final Logger LOGGER = LoggerFactory.getLogger(GatherController.class);

    @RequestMapping(value = "")
    public String index() {

        return "admin/gather";
    }
}
