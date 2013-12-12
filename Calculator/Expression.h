//
//  Expression.h
//  Calculator
//
//  Created by Sujit Anand on 12/11/13.
//  Copyright (c) 2013 Sujit Anand. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Expression : NSObject{
    
}

@property (nonatomic) int num1;
@property (nonatomic) int num2;



+(int)add:(int)num1 With:(int)num2;
+(int)sub:(int)num1 With:(int)num2;
+(int)mul:(int)num1 With:(int)num2;
+(int)div:(int)num1 With:(int)num2;

@end
