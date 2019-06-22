package com.wip.async;

import com.wip.config.AppConfig;
import com.wip.controller.admin.ArticleController;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.scheduling.annotation.Async;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.text.SimpleDateFormat;
import java.util.Date;

@Component
public class AsyncTask {
    private static final Logger LOGGER = LoggerFactory.getLogger(AsyncTask.class);

    @Scheduled(cron = AppConfig.time)
    public void articleCollect() {
        LOGGER.info("开始采集文章...." + new Date());
        //拿到必备元素 1.被采集平台URL 2.文章采集方式 3.按照什么关键字进行采集 4.文章保存

    }
}
