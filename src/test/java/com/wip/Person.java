package com.wip;

/**
 * @Auther: Administrator
 * @Date: 2018-12-03
 * @Description:
 */
public class Person {

    private int age;

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public static void change(Person p){
         p = new Person();
         p.setAge(20);
    }
}
