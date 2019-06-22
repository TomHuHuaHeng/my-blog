package com.wip.tool;

import java.util.HashMap;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import java.io.IOException;
import java.util.Map;


public class ArticleTool {

    public static void main(String[] args) throws IOException {
        //第一提供url连接 获取文章内容和标题
        Map domValue = getDomValue("https://www.jianshu.com/p/754ed930adce");

        Object title = domValue.get("title");
        Elements body = (Elements) domValue.get("body");
        Object author = domValue.get("author");
        String dom = body.toString();
        dom = dom.replace("*", ".");



        System.out.println(dom);
    }


    //获取Doc元素封装成具体的Map对象
    public static Map getDomValue(String url) throws IOException {
        Map<String, Elements> articleElements = new HashMap<String, Elements>();
        //通过传递过来的Url 获取相应的doc元素
        Document doc = Jsoup.connect(url).get();
        //解析获取对应的内容
        //1.获取标题信息
        articleElements.put("title", doc.select(".article>.title"));
        //2.获取主体内容
        articleElements.put("body", doc.select(".article>.show-content"));
        //3.获取作者信息
        articleElements.put("author", doc.select(".article>.author"));
        return articleElements;
    }


    public static String getDomHtmlStr(Elements elements) {


        return null;
    }

}
