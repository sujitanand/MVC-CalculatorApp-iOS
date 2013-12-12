//
//  MainViewController.h
//  Calculator
//
//  Created by Sujit Anand on 12/11/13.
//  Copyright (c) 2013 Sujit Anand. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Expression.h"

@interface MainViewController : UIViewController <UITextFieldDelegate>{
    UITextField *input1;
    UITextField *input2;
    UITextField *result;
    UIButton *btnPlus;
    UIButton *btnMinus;
    UIButton *btnMul;
    UIButton *btnDiv;
    UIButton *equals;

}

@property (nonatomic,strong) Expression *expr;
@end
