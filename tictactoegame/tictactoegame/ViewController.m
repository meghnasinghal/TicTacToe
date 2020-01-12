//
//  ViewController.m
//  tictactoegame
//
//  Created by meghna singhal on 24/07/15.
//  Copyright (c) 2015 meghna singhal. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    int i;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.imageview.image=[UIImage imageNamed:@"tictactoelogo.jpg"];
    i=1;
    self.b1.enabled=NO;
    self.b2.enabled=NO;
    self.b3.enabled=NO;
    self.b4.enabled=NO;
    self.b5.enabled=NO;
    self.b6.enabled=NO;
    self.b7.enabled=NO;
    self.b8.enabled=NO;
    self.b9.enabled=NO;
    self.play1.enabled=YES;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)play:(id)sender
{
    UIAlertView *p=[[UIAlertView alloc]initWithTitle:@"tictac" message:@"do you want to play this game" delegate:self cancelButtonTitle:@"cancel" otherButtonTitles:@"yes", nil];
    [p show];
}
/*-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if(buttonIndex==0)
    {
        self.b1.enabled=NO;
        self.b2.enabled=NO;
        self.b3.enabled=NO;
        self.b4.enabled=NO;
        self.b5.enabled=NO;
        self.b6.enabled=NO;
        self.b7.enabled=NO;
        self.b8.enabled=NO;
        self.b9.enabled=NO;
        self.play1.enabled=YES;
        
    }
    
    else if(buttonIndex==1)
    {    self.b1.enabled=YES;
        self.b2.enabled=YES;
        self.b3.enabled=YES;
        self.b4.enabled=YES;
        self.b5.enabled=YES;
        self.b6.enabled=YES;
        self.b7.enabled=YES;
        self.b8.enabled=YES;
        self.b9.enabled=YES;
        self.play1.enabled=NO;
        self.play1.hidden=YES;
        
    }
    
    
    
    
}
*/
- (IBAction)crossandzero:(id)sender {
   // static int i=1;
    if(i%2==0)
    {i++;
        switch ([sender tag]) {
            case 0:
                [self.b1 setTitle:@"X" forState:UIControlStateNormal];
                [self check];
                break;
            case 1:
                [self.b2 setTitle:@"X" forState:UIControlStateNormal];
                [self check];
                break;
            case 2:
                [self.b3 setTitle:@"X" forState:UIControlStateNormal];
                [self check];
                break;
            case 3:
                [self.b4 setTitle:@"X" forState:UIControlStateNormal];
                [self check];
                break;
            case 4:
                [self.b5 setTitle:@"X" forState:UIControlStateNormal];
                [self check];
                break;
            case 5:
                [self.b6 setTitle:@"X" forState:UIControlStateNormal];
                [self check];
                break;
            case 6:
                [self.b7 setTitle:@"X" forState:UIControlStateNormal];
                [self check];
                break;
            case 7:
                [self.b8 setTitle:@"X" forState:UIControlStateNormal];
                [self check];
                break;
            case 8:
                [self.b9 setTitle:@"X" forState:UIControlStateNormal];
                [self check];
                
                break;
                
            default:
                break;
        }
        
        
    }
    else
    {i++;
        switch ([sender tag]) {
            case 0:
                [self.b1 setTitle:@"0" forState:UIControlStateNormal];
                [self check];
                
                break;
            case 1:
                [self.b2 setTitle:@"0" forState:UIControlStateNormal];
                [self check];
                
                break;
            case 2:
                [self.b3 setTitle:@"0" forState:UIControlStateNormal];
                [self check];
                
                break;
            case 3:
                [self.b4 setTitle:@"0" forState:UIControlStateNormal];
                [self check];
                
                break;
            case 4:
                [self.b5 setTitle:@"0" forState:UIControlStateNormal];
                [self check];
                break;
            case 5:
                [self.b6 setTitle:@"0" forState:UIControlStateNormal];
                [self check];
                
                break;
            case 6:
                [self.b7 setTitle:@"0" forState:UIControlStateNormal];
                [self check];
                
                break;
            case 7:
                [self.b8 setTitle:@"0" forState:UIControlStateNormal];
                [self check];
                
                break;
            case 8:
                [self.b9 setTitle:@"0" forState:UIControlStateNormal];
                [self check];
                
                break;
                
            default:
                break;
        }
        
        
    }
    if(i==9)
    {
        UIAlertView *s=[[UIAlertView alloc]initWithTitle:@"Match Draw" message:@"Do you want to play again" delegate:nil cancelButtonTitle:@"yes" otherButtonTitles:@"no", nil];
        [s show];
    }
    

}
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if(buttonIndex==0)
    {
        self.b1.enabled=NO;
        self.b2.enabled=NO;
        self.b3.enabled=NO;
        self.b4.enabled=NO;
        self.b5.enabled=NO;
        self.b6.enabled=NO;
        self.b7.enabled=NO;
        self.b8.enabled=NO;
        self.b9.enabled=NO;
        self.play1.enabled=YES;
        [self.b1 setTitle:nil forState:UIControlStateNormal];
        [self.b2 setTitle:nil forState:UIControlStateNormal];
        [self.b3 setTitle:nil forState:UIControlStateNormal];
        [self.b4 setTitle:nil forState:UIControlStateNormal];
        [self.b5 setTitle:nil forState:UIControlStateNormal];
        [self.b6 setTitle:nil forState:UIControlStateNormal];
        [self.b7 setTitle:nil forState:UIControlStateNormal];
        [self.b8 setTitle:nil forState:UIControlStateNormal];
        [self.b9 setTitle:nil forState:UIControlStateNormal];
        
        
    }
    
    else if(buttonIndex==1)
    {    self.b1.enabled=YES;
        self.b2.enabled=YES;
        self.b3.enabled=YES;
        self.b4.enabled=YES;
        self.b5.enabled=YES;
        self.b6.enabled=YES;
        self.b7.enabled=YES;
        self.b8.enabled=YES;
        self.b9.enabled=YES;
        self.play1.enabled=NO;
        self.play1.hidden=YES;
        
    }
    
    
    
    
}

-(void)check
{
    if(([self.b1.titleLabel.text isEqualToString:@"X"] && [self.b5.titleLabel.text isEqualToString:@"X"]&& [self.b9.titleLabel.text isEqualToString:@"X"])
       ||([self.b1.titleLabel.text isEqualToString:@"0"] && [self.b5.titleLabel.text isEqualToString:@"0"]&& [self.b9.titleLabel.text isEqualToString:@"0"]))
    {
        
        
        UIAlertView *q=[[UIAlertView alloc]initWithTitle:@"RESULT" message:@"You won" delegate:nil cancelButtonTitle:@"CANCEL" otherButtonTitles:@"OK", nil];
        [q show];
    }
    if(([self.b1.titleLabel.text isEqualToString:@"X"] && [self.b2.titleLabel.text isEqualToString:@"X"]&& [self.b3.titleLabel.text isEqualToString:@"X"])
       ||([self.b1.titleLabel.text isEqualToString:@"0"] && [self.b2.titleLabel.text isEqualToString:@"0"]&& [self.b3.titleLabel.text isEqualToString:@"0"]))
    {
        
        
        UIAlertView *q=[[UIAlertView alloc]initWithTitle:@"RESULT" message:@"You won" delegate:nil cancelButtonTitle:@"cancel" otherButtonTitles:@"ok", nil];
        [q show];
    }
    if(([self.b1.titleLabel.text isEqualToString:@"X"] && [self.b4.titleLabel.text isEqualToString:@"X"]&& [self.b7.titleLabel.text isEqualToString:@"X"])
       ||([self.b1.titleLabel.text isEqualToString:@"0"] && [self.b4.titleLabel.text isEqualToString:@"0"]&& [self.b7.titleLabel.text isEqualToString:@"0"]))
    {
        
        
        UIAlertView *q=[[UIAlertView alloc]initWithTitle:@"RESULT" message:@"You won" delegate:nil cancelButtonTitle:@"cancel" otherButtonTitles:@"ok", nil];
        [q show];
    }
    
    if(([self.b4.titleLabel.text isEqualToString:@"X"] && [self.b5.titleLabel.text isEqualToString:@"X"]&& [self.b6.titleLabel.text isEqualToString:@"X"])
       ||([self.b4.titleLabel.text isEqualToString:@"0"] && [self.b5.titleLabel.text isEqualToString:@"0"]&& [self.b6.titleLabel.text isEqualToString:@"0"]))
    {
        
        
        UIAlertView *q=[[UIAlertView alloc]initWithTitle:@"RESULT" message:@"You won" delegate:nil cancelButtonTitle:@"cancel" otherButtonTitles:@"ok", nil];
        [q show];
    }
    if(([self.b7.titleLabel.text isEqualToString:@"X"] && [self.b8.titleLabel.text isEqualToString:@"X"]&& [self.b9.titleLabel.text isEqualToString:@"X"])
       ||([self.b7.titleLabel.text isEqualToString:@"0"] && [self.b8.titleLabel.text isEqualToString:@"0"]&& [self.b9.titleLabel.text isEqualToString:@"0"]))
    {
        
        
        UIAlertView *q=[[UIAlertView alloc]initWithTitle:@"RESULT" message:@"You won" delegate:nil cancelButtonTitle:@"cancel" otherButtonTitles:@"ok", nil];
        [q show];
    }
    if(([self.b2.titleLabel.text isEqualToString:@"X"] && [self.b5.titleLabel.text isEqualToString:@"X"]&& [self.b8.titleLabel.text isEqualToString:@"X"])
       ||([self.b2.titleLabel.text isEqualToString:@"0"] && [self.b5.titleLabel.text isEqualToString:@"0"]&& [self.b8.titleLabel.text isEqualToString:@"0"]))
    {
        
        
        UIAlertView *q=[[UIAlertView alloc]initWithTitle:@"RESULT" message:@"You won" delegate:nil cancelButtonTitle:@"cancel" otherButtonTitles:@"ok", nil];
        [q show];
    }
    
    if(([self.b3.titleLabel.text isEqualToString:@"X"] && [self.b6.titleLabel.text isEqualToString:@"X"]&& [self.b9.titleLabel.text isEqualToString:@"X"])
       ||([self.b3.titleLabel.text isEqualToString:@"0"] && [self.b6.titleLabel.text isEqualToString:@"0"]&& [self.b9.titleLabel.text isEqualToString:@"0"]))
    {
        
        
        UIAlertView *q=[[UIAlertView alloc]initWithTitle:@"RESULT" message:@"You won" delegate:nil cancelButtonTitle:@"cancel" otherButtonTitles:@"ok", nil];
        [q show];
    }
    
    if(([self.b3.titleLabel.text isEqualToString:@"X"] && [self.b5.titleLabel.text isEqualToString:@"X"]&& [self.b7.titleLabel.text isEqualToString:@"X"])
       ||([self.b3.titleLabel.text isEqualToString:@"0"] && [self.b5.titleLabel.text isEqualToString:@"0"]&& [self.b7.titleLabel.text isEqualToString:@"0"]))
    {
        
        
        UIAlertView *q=[[UIAlertView alloc]initWithTitle:@"RESULT" message:@"You won" delegate:nil cancelButtonTitle:@"cancel" otherButtonTitles:@"ok", nil];
        [q show];
    }
}
/*-(void)reset
 {
 if(i==9)
 {
     UIAlertView *s=[[UIAlertView alloc]initWithTitle:@"Match Draw" message:@"Do you want to play again" delegate:nil cancelButtonTitle:@"yes" otherButtonTitles:@"no", nil];
     [s show];
 }*/
 
 
 
 
 







@end
