package com.wip.tool;

import org.jsoup.Connection;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import java.io.IOException;

public class ArticleUrlTool {

    public static void main(String[] args) throws IOException {
        String url = "https://www.jianshu.com/c/ef7836bf3e22";
        Document document = Jsoup.connect(url).get();
        Elements select = document.select(".note-list>li>div>a");
        System.out.println(document);
        for (Element element : select) {
            System.out.println(element.attr("href"));
        }

    }
}
