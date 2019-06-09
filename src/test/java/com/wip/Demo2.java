package com.wip;

/**
 * @Auther: Administrator
 * @Date: 2018-12-03
 * @Description:
 */
public class Demo2 {

    public static void main(String[] args) {
        Person p = new Person();
        p.setAge(10);

        Person.change(p);
        System.out.println(p.getAge());
    }
}
