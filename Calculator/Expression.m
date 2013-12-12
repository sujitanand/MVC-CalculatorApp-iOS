//
//  Expression.m
//  Calculator
//
//  Created by Sujit Anand on 12/11/13.
//  Copyright (c) 2013 Sujit Anand. All rights reserved.
//

#import "Expression.h"

@implementation Expression

@synthesize num1,num2;

+(int)add:(int)num1 With:(int)num2 {
    return (num1 + num2);
}
+(int)sub:(int)num1 With:(int)num2{
    return (num1 - num2);
}
+(int)mul:(int)num1 With:(int)num2{
    return (num1 * num2);
}
+(int)div:(int)num1 With:(int)num2{
    if (num2 == 0) {
        NSLog(@"NOOOOOOOO");
        return 0;
    }
    else{
        return (num1 / num2);
    }
}

@end
