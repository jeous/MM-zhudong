package com.web.project.web.service;

import org.springframework.stereotype.Service;

/**
 * Created by Server on 2018/1/31.
 */
@Service
public class IxcImpl implements  Runnable{
    public void run() {
        for(int i=0;i<3;i++){
            System.out.println(Thread.currentThread().getName()
                    + "运行，i = " + i) ;    // 取得当前线程的名字
        }
    }
}
