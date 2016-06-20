//
//  Tire.h
//  OC-内存管理（对象所有权）
//
//  Created by qingyun on 16/4/6.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Tire : NSObject
{
    NSString *_tireName;
    double _tireRadius;//半径
}
-(void)setTireName:(NSString *)name;
-(void)setTireRadius:(double)radius;
@end
