//
//  MainViewController.m
//  Calculator
//
//  Created by Sujit Anand on 12/11/13.
//  Copyright (c) 2013 Sujit Anand. All rights reserved.
//

#import "MainViewController.h"
@implementation MainViewController
@synthesize expr;
-(id)init{
    if (self) {
    }
    return self;
}
-(void)viewDidLoad{
    
    [super viewDidLoad];
    expr = [[Expression alloc]init];
    input1 = [[UITextField alloc]initWithFrame:CGRectMake(10, 20, 120, 60)];
    input1.placeholder = @"Enter Number 1";
    input1.borderStyle = UITextBorderStyleLine;
    input1.userInteractionEnabled = YES;
    input1.keyboardType = UIKeyboardTypeDecimalPad;
    [self.view addSubview:input1];
    
    input2 = [[UITextField alloc]initWithFrame:CGRectMake(180, 20, 120, 60)];
    input2.placeholder = @"Enter Number 2";
    input2.userInteractionEnabled = YES;
    input2.borderStyle = UITextBorderStyleLine;
    input2.keyboardType = UIKeyboardTypeDecimalPad;
    [self.view addSubview:input2];
    
    btnPlus = [[UIButton alloc]initWithFrame:CGRectMake(10, 90, 120, 60)];
    btnPlus.userInteractionEnabled = YES;
    [btnPlus setTag:1];
    [btnPlus addTarget:self action:@selector(btnPlusPressed:) forControlEvents:UIControlEventTouchUpInside];
    [btnPlus setBackgroundColor:[UIColor redColor]];
    [btnPlus setTitle:@"ADD" forState:UIControlStateNormal];
    [btnPlus setTitleColor:[UIColor yellowColor] forState:UIControlStateNormal];
    [self.view addSubview:btnPlus];
    
    btnMinus = [[UIButton alloc]initWithFrame:CGRectMake(180, 90, 120, 60)];
    btnMinus.userInteractionEnabled = YES;
    [btnMinus setTag:2];
    [btnMinus setTitle:@"SUB" forState:UIControlStateNormal];
    [btnMinus addTarget:self action:@selector(btnMinusPressed:) forControlEvents:UIControlEventTouchUpInside];
    [btnMinus setBackgroundColor:[UIColor redColor]];
    [btnMinus setTitleColor:[UIColor yellowColor] forState:UIControlStateNormal];
    [self.view addSubview:btnMinus];
    
    btnMul = [[UIButton alloc]initWithFrame:CGRectMake(10, 160, 120, 60)];
    btnMul.userInteractionEnabled = YES;
    [btnMul setBackgroundColor:[UIColor redColor]];
    [btnMul setTag:3];
    [btnMul addTarget:self action:@selector(btnMulPressed:) forControlEvents:UIControlEventTouchUpInside];
    [btnMul setTitle:@"MUL" forState:UIControlStateNormal];
    [self.view addSubview:btnMul];
    
    btnDiv = [[UIButton alloc]initWithFrame:CGRectMake(180, 160, 120, 60)];
    btnDiv.userInteractionEnabled = YES;
    [btnDiv setTag:4];
    [btnDiv addTarget:self action:@selector(btnDivPressed:) forControlEvents:UIControlEventTouchUpInside];
    [btnDiv setBackgroundColor:[UIColor redColor]];
    [btnDiv setTitle:@"DIV" forState:UIControlStateNormal];
    [self.view addSubview:btnDiv];
    
    result = [[UITextField alloc]initWithFrame:CGRectMake(10, 250, 250, 60)];
    result.placeholder = @"RESULT IS :";
    result.userInteractionEnabled = NO;
    result.clearsOnBeginEditing = NO;
    result.borderStyle = UITextBorderStyleLine;
    [self.view addSubview:result];
}
-(void)btnPlusPressed:(UIButton *)sender{
    if (sender.tag == 1) {
        int num1 = [input1.text intValue];
        int num2 = [input2.text intValue];
        int sum;
        NSString *solution;
        sum = [Expression add:num1 With:num2];
        
        solution = [NSString stringWithFormat:@"%d",sum];
        NSLog(@"SUM solution is :%@",solution);
        
        [result setText:solution];
        NSLog(@"ADD IS :%@",result.text);
        [input1 resignFirstResponder];
        [input2 resignFirstResponder];
    }
    
    return;
}
-(void)btnMinusPressed:(UIButton *)sender{
    if (sender.tag == 2) {
        int num3 = [input1.text intValue];
        int num4 = [input2.text intValue];
        int diff;
        
        NSString *sumSolution;
        
        diff = [Expression sub:num3 With:num4];
        
        sumSolution = [NSString stringWithFormat:@"%d",diff];
        NSLog(@"MINUS solution is :%@",sumSolution);
        
        [result setText:sumSolution];
        NSLog(@"SUB IS :%@",result.text);
        [input1 resignFirstResponder];
        [input2 resignFirstResponder];
    }
    
    return;
}
-(void)btnMulPressed:(UIButton *)sender{
    if (sender.tag == 3) {
        int num5 = [input1.text intValue];
        int num6 = [input2.text intValue];
        int product;
        
        NSString *mulSolutions;
        product = [Expression mul:num5 With:num6];
        mulSolutions = [NSString stringWithFormat:@"%d",product];
        NSLog(@"MUL solution is :%@",mulSolutions);
        
        [result setText:mulSolutions];
        NSLog(@"MUL IS %@",mulSolutions);
        [input1 resignFirstResponder];
        [input2 resignFirstResponder];
    }
    
    return;
}
-(void)btnDivPressed:(UIButton *)sender{
    if (sender.tag == 4) {
        int num7 = [input1.text intValue];
        int num8 = [input2.text intValue];
        int quo;
        
        NSString *divSols;
        
        quo = [Expression div:num7 With:num8];
        divSols = [NSString stringWithFormat:@"%d",quo];
        NSLog(@"DIV solution is :%@",divSols);
        
        [result setText:divSols];
        [input1 resignFirstResponder];
        [input2 resignFirstResponder];
    }
    
    return;
}

@end
