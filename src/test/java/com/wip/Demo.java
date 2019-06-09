package com.wip;

import org.junit.Test;

/**
 * @Auther: Administrator
 * @Date: 2018-12-03
 * @Description:
 */
public class Demo {

    public static void change(int age){
        age = 20 ;
    }

    public static void main(String[] args) {
        int age = 10 ;
        change(age);
        System.out.println(age);
    }


}
