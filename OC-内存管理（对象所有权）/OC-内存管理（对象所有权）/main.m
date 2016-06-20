//
//  main.m
//  OC-内存管理（对象所有权）
//
//  Created by qingyun on 16/4/6.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Car *c1=[Car new];//1-->main函数拥有
        [c1 setcarName:@"劳斯莱斯幻影"];
        [c1 setCarPrice:1020000];
        Tire *t1=[Tire new];//1-->main函数拥有
        [t1 setTireName:@"米其林"];
        [t1 setTireRadius:302];
        //复合
        [c1 setCarTire:t1];//Car拥有Tire属性 1--->2
        NSLog(@"%@",t1);
        [c1 showCarInfo];
        [t1 release];//t1--->0 main函数释放--->1
        [c1 showCarInfo];//t1已经被释放，t1不可使用，程序可能崩溃
        
        Tire *t2=[Tire new];//1
        [t2 setTireRadius:200];
        [t2 setTireName:@"玛吉斯"];
        //复合
        [c1 setCarTire:t2];//t1坏了，换t2-->2
        [c1 setCarTire:t2];
        [t2 release];//1-->main函数释放
        [c1 release];//c1--->0 main函数释放
    }
    return 0;
}
