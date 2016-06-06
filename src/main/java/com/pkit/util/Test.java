package com.pkit.util;

import com.alibaba.druid.filter.config.ConfigTools;

/**
 * Created by xiaoping on 2016/5/12.
 */
public class Test {
    public static void main(String[] args) throws Exception {
        String password = "gaoyu7780109";
        System.out.println(ConfigTools.encrypt(password));
    }
}
