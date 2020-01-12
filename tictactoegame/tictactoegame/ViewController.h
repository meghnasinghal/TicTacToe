//
//  ViewController.h
//  tictactoegame
//
//  Created by meghna singhal on 24/07/15.
//  Copyright (c) 2015 meghna singhal. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIAlertViewDelegate>

@property (weak, nonatomic) IBOutlet UIButton *b1;
@property (weak, nonatomic) IBOutlet UIButton *b2;
@property (weak, nonatomic) IBOutlet UIButton *b3;
@property (weak, nonatomic) IBOutlet UIButton *b4;
@property (weak, nonatomic) IBOutlet UIButton *b5;
@property (weak, nonatomic) IBOutlet UIButton *b6;
@property (weak, nonatomic) IBOutlet UIButton *b7;
@property (weak, nonatomic) IBOutlet UIButton *b8;
@property (weak, nonatomic) IBOutlet UIButton *b9;
- (IBAction)play:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *play1;
@property (weak, nonatomic) IBOutlet UIImageView *imageview;

- (IBAction)crossandzero:(id)sender;
-(void)check;
//-(void)reset;

@end

