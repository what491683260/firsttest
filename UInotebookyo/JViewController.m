//
//  JViewController.m
//  UInotebookyo
//
//  Created by apple on 13-8-16.
//  Copyright (c) 2013年 diveinedu. All rights reserved.
//

#import "JViewController.h"

@interface JViewController ()

@end   
#define ktextField 100
#define ktextView  200
#define klabel     300
#define kslider    400
#define ksegment   500
#define ksigntext  600
#define ksaveAlet  700
#define kopenAlet  800
#define kasignText 900
@implementation JViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    UIImageView *imageView =[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"7.png"]];
    imageView.frame=CGRectMake(0, 0, 320, 460);
    imageView.contentMode=UIViewContentModeScaleAspectFit;
    [self.view addSubview:imageView];
    UIButton *newBuiltbtn =[UIButton buttonWithType:UIButtonTypeCustom];
    [newBuiltbtn setImage:[UIImage imageNamed:@"17.png" ] forState:UIControlStateNormal];
    // [btn2 setTitle:@"newBuilt" forState:UIControlStateNormal];
    [newBuiltbtn addTarget:self action:@selector(newBuiltNote) forControlEvents:UIControlEventTouchUpInside];
    newBuiltbtn.frame=CGRectMake(15, 10, 40, 40);
    newBuiltbtn.backgroundColor=[UIColor clearColor];
    [self.view addSubview:newBuiltbtn];
    
    UIButton *openBtn =[UIButton buttonWithType:UIButtonTypeCustom];
    [openBtn setImage:[UIImage imageNamed:@"19.png" ] forState:UIControlStateNormal];
    // [btn2 setTitle:@"newBuilt" forState:UIControlStateNormal];
    [openBtn addTarget:self action:@selector(openNote:) forControlEvents:UIControlEventTouchUpInside];
    openBtn.frame=CGRectMake(65, 10, 35, 35);
    openBtn.backgroundColor=[UIColor clearColor];
    [self.view addSubview:openBtn];
    
    UIButton *saveBtn =[UIButton buttonWithType:UIButtonTypeCustom];
    [saveBtn setImage:[UIImage imageNamed:@"15.png" ] forState:UIControlStateNormal];
    // [btn2 setTitle:@"newBuilt" forState:UIControlStateNormal];
    [saveBtn addTarget:self action:@selector(saveNote:) forControlEvents:UIControlEventTouchUpInside];
    saveBtn.frame=CGRectMake(110, 10, 40, 40);
    saveBtn.backgroundColor=[UIColor clearColor];
    [self.view addSubview:saveBtn];
    
    UIButton *fontBtn =[UIButton buttonWithType:UIButtonTypeCustom];
    [fontBtn setImage:[UIImage imageNamed:@"16.png" ] forState:UIControlStateNormal];
    // [btn2 setTitle:@"newBuilt" forState:UIControlStateNormal];
    [fontBtn addTarget:self action:@selector(textFont:) forControlEvents:UIControlEventTouchUpInside];
    fontBtn.frame=CGRectMake(155, 10, 40, 40);
    fontBtn.backgroundColor=[UIColor clearColor];
    [self.view addSubview:fontBtn];
    
    UIButton *colorBtn =[UIButton buttonWithType:UIButtonTypeCustom];
    [colorBtn setImage:[UIImage imageNamed:@"18.png" ] forState:UIControlStateNormal];
    // [btn2 setTitle:@"newBuilt" forState:UIControlStateNormal];
    [colorBtn addTarget:self action:@selector(textColor:) forControlEvents:UIControlEventTouchUpInside];
    colorBtn.frame=CGRectMake(195, 10, 40, 40);
    colorBtn.backgroundColor=[UIColor clearColor];
    [self.view addSubview:colorBtn];
    
    UIButton *removeBtn =[UIButton buttonWithType:UIButtonTypeCustom];
    [removeBtn setImage:[UIImage imageNamed:@"20.png" ] forState:UIControlStateNormal];
    // [btn2 setTitle:@"newBuilt" forState:UIControlStateNormal];
    [removeBtn addTarget:self action:@selector(removeNote:) forControlEvents:UIControlEventTouchUpInside];
    removeBtn.frame=CGRectMake(255, 10, 40, 40);
    removeBtn.backgroundColor=[UIColor clearColor];
    [self.view addSubview:removeBtn];

    
    UITextField *textField=[[UITextField alloc]initWithFrame:CGRectMake(90, 80, 200, 30)];
    textField.backgroundColor =[UIColor grayColor];
    textField.textColor=[UIColor blackColor];
    textField.font =[UIFont systemFontOfSize:16];
    textField.borderStyle =UITextBorderStyleRoundedRect;
    textField.placeholder=@"Note";
    textField.clearButtonMode=UITextFieldViewModeWhileEditing;
    //textField.delegate=self;
    textField.backgroundColor=[UIColor clearColor];
    textField.tag=ktextField;
    textField.autocapitalizationType=UITextAutocapitalizationTypeNone;
   // textField.hidden=YES;
    [self.view addSubview:textField];
    
    UITextField *signtextField=[[UITextField alloc]initWithFrame:CGRectMake(210, 360, 80, 30)];
    signtextField.backgroundColor =[UIColor grayColor];
    signtextField.borderStyle =UITextBorderStyleRoundedRect;
    signtextField.placeholder=@"sign";
    signtextField.clearButtonMode=UITextFieldViewModeWhileEditing;
    //textField.delegate=self;
    signtextField.backgroundColor=[UIColor clearColor];
    signtextField.tag=ksigntext;
    signtextField.autocapitalizationType=UITextAutocapitalizationTypeNone;
    // textField.hidden=YES;
    signtextField.tag=kasignText;
    [self.view addSubview:signtextField];
    
    UILabel *label1 =[[UILabel alloc]initWithFrame:CGRectMake(40, 80, 45, 30)];
    label1.text=@"标题:";
    label1.font=[UIFont systemFontOfSize:18];
    //label.shadowColor=[UIColor redColor];
    //label.shadowOffset=CGSizeMake(2, 2);
    label1.textColor =[UIColor purpleColor];
    label1.backgroundColor=[UIColor clearColor];
    label1.tag=klabel;
    [self.view addSubview:label1];
    //label1.hidden=YES;

    UITextView *textView=[[UITextView alloc]initWithFrame:CGRectMake(80, 120, 200, 270)];
    textView.backgroundColor=[UIColor clearColor];
    
    // textView.textColor=[UIColor purpleColor];
    textView.textColor=[UIColor blueColor];
    textView.font=[UIFont systemFontOfSize:20];
    textView.tag=ktextView;
    [self.view addSubview:textView];
    
    UISlider *slider =[[UISlider alloc]initWithFrame:CGRectMake(70, 400, 100,20)];
    slider.minimumValue=12;
    slider.maximumValue=72;
    slider.minimumTrackTintColor =[UIColor grayColor];
    slider.continuous=NO;
    [slider addTarget:self action:@selector(fontSize:) forControlEvents:UIControlEventValueChanged];
    slider.hidden=YES;
    slider.tag=kslider;
    [self.view addSubview:slider];
    
    NSArray *array=@[@"1",@"2",@"3",@"4"];
    UISegmentedControl *segmentedControl=[[UISegmentedControl alloc]initWithItems:array];
    [segmentedControl setImage:[UIImage imageNamed:@"1.png"] forSegmentAtIndex:0];
    [segmentedControl setImage:[UIImage imageNamed:@"2.png"] forSegmentAtIndex:1];
    [segmentedControl setImage:[UIImage imageNamed:@"3.png"] forSegmentAtIndex:2];
    [segmentedControl setImage:[UIImage imageNamed:@"4.png"] forSegmentAtIndex:3];
    segmentedControl.frame=CGRectMake(-40, 200, 135, 35);
    CGAffineTransform transftorm=segmentedControl.transform;
    segmentedControl.transform=CGAffineTransformRotate(transftorm, M_PI_2);
    segmentedControl.hidden=YES;
    segmentedControl.tag =ksegment;
    [segmentedControl  addTarget:self action:@selector(textColor1:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:segmentedControl];

    
}
-(void)textColor:(UIButton*)sender
{
    UISegmentedControl *segmentControl=(UISegmentedControl *)[self.view viewWithTag:ksegment];
    segmentControl.hidden=NO;
}
-(void)textColor1:(UISegmentedControl*)sender
{
    UISegmentedControl *segmentControl=(UISegmentedControl *)sender;
    UITextView *textView=(UITextView*)[self.view viewWithTag:ktextView];
   // UITextField *textField=(UITextField*)[self.view viewWithTag:ktextField];
    if(segmentControl.selectedSegmentIndex==0)
    {
//        if(textField.tag==ktextField)
//        {
//            textField.textColor=[UIColor purpleColor];
 //       }else if (textView.tag==ktextView)
        
            textView.textColor=[UIColor purpleColor];
        
    }else if(segmentControl.selectedSegmentIndex==1)
    {
        //if(textField.tag==ktextField)
        //{
          //  textField.textColor=[UIColor yellowColor];
        //}else if(textView.tag==ktextView)
        //{
            textView.textColor=[UIColor yellowColor];
        //}
    }else if(segmentControl.selectedSegmentIndex==2)
    {
        //if(textField.tag==ktextField)
        //{
         //   textField.textColor=[UIColor greenColor];
        //}else if (textView.tag==ktextView)
        //{
            textView.textColor =[UIColor greenColor];
       // }
    }else if(segmentControl.selectedSegmentIndex==3)
    {
        //if(textField.tag==ktextField)
        //{
            
         //   textField.textColor=[UIColor redColor];
        //}else if(textView.tag==ktextView)
        //{
            textView.textColor=[UIColor redColor];
        //}
    }
    NSLog(@"%d",segmentControl.selectedSegmentIndex);

}
-(void)textFont:(UIButton*)sender
{
    UISlider *slide=(UISlider*)[self.view viewWithTag:kslider];
    slide.hidden=NO;
}
-(void)fontSize:(UISlider*)sender
{
    UISlider *slider=(UISlider*)sender;
    UITextView *textView =(UITextView*)[self.view viewWithTag:ktextView];
    textView.font=[UIFont systemFontOfSize:slider.value];
    //        [_archiver encodeObject:textView.font forKey:@"font"];
    NSLog(@"%@",textView.font);
    
}
-(void)newBuiltNote
{
    UITextField *textField=(UITextField*)[self.view viewWithTag:ktextField];
    textField.placeholder=@"Note";
    textField.text=@"";
    textField.textColor=[UIColor blueColor];
    textField.font=[UIFont systemFontOfSize:16];    
    UITextView *textView=(UITextView*)[self.view viewWithTag:ktextView];
    textView.backgroundColor=[UIColor clearColor];
    textView.text=@"";
    textView.textColor=[UIColor blackColor];
    textView.font=[UIFont systemFontOfSize:20];
    UITextField *textField1=(UITextField*)[self.view viewWithTag:kasignText];
    textField1.placeholder=@"aign";
    textField1.text=@"";
}
-(void)saveNote:(UIButton*)sender
{
    
    UIAlertView *alertVier =[[UIAlertView alloc]initWithTitle:@"警告" message:@"请输入文件名和作者信息" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"OK", nil];
    alertVier.alertViewStyle =UIAlertViewStyleLoginAndPasswordInput;
    alertVier.tag=ksaveAlet;
    [alertVier show];

}
-(void)openNote:(UIButton*)sender
{
    UIAlertView *alertVier =[[UIAlertView alloc]initWithTitle:@"警告" message:@"请输入文件名" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"OK", nil];
    alertVier.alertViewStyle =UIAlertViewStylePlainTextInput;
    alertVier.tag=kopenAlet;
    [alertVier show];
}
-(void)removeNote:(UIButton*)sender
{
    NSFileManager *fileManager=[NSFileManager defaultManager];
    NSString *string1 =@"/Users/apple/Desktop";
    NSArray *array=[fileManager subpathsAtPath:string1];
    UITextField *textField =(UITextField*)[self.view viewWithTag:ktextField ];
    
    NSString *string10=textField.text;
    NSString *string =[NSString stringWithFormat:@"%@.txt",textField.text];
    if(![array containsObject:string]||string10==nil||[string10 isEqualToString:@""])
    {
        UIAlertView *alertVier =[[UIAlertView alloc]initWithTitle:@"警告" message:@"文件名不存在" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"OK", nil];
        alertVier.alertViewStyle =0;
        
        [alertVier show];
        
    }else

    {
        UIActionSheet *actionSheet=[[UIActionSheet alloc]initWithTitle:@"提示" delegate:self cancelButtonTitle:@"Cancel" destructiveButtonTitle:@"Are your remove?" otherButtonTitles:@"YES", nil];
        [actionSheet showInView:self.view];
    }


}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if(alertView.tag==ksaveAlet)
    {
        if(buttonIndex==1)
        {
            NSFileManager *fileManager=[NSFileManager defaultManager];
            NSString *string1 =@"/Users/apple/Desktop";
            NSArray *array=[fileManager subpathsAtPath:string1];
            UITextField *textField =[alertView textFieldAtIndex:0];
           // NSString *string10=textField.text;
            NSString *string2 =[NSString stringWithFormat:@"%@.txt",textField.text];
            if([array containsObject:string2])
            {
                UIActionSheet *actionSheet=[[UIActionSheet alloc]initWithTitle:@"提示" delegate:self cancelButtonTitle:@"Cancel" destructiveButtonTitle:@"该文件以存在" otherButtonTitles:@"删除原文件", nil];
                [actionSheet showInView:self.view];
            }
           // UITextField *textField =[alertView textFieldAtIndex:0];
            else
            {
                
            UITextField *textField2 =[alertView textFieldAtIndex:1];
            NSString *path=[NSString stringWithFormat:@"/Users/apple/Desktop/%@.txt",textField.text];
             NSString *path1=[NSString stringWithFormat:@"/Users/apple/Desktop/%@.xml",textField.text];
            UITextView *textView=(UITextView*)[self.view viewWithTag:ktextView];
            UITextField *textField1 =(UITextField *)[self.view viewWithTag:ktextField];
            
            NSMutableString *string=[NSMutableString stringWithFormat:@"%@&&&%@",textField1.text,textView.text];
            NSMutableData *data1=[NSMutableData data];
            NSKeyedArchiver *archiver=[[NSKeyedArchiver alloc]initForWritingWithMutableData:data1];
           
           
         
            
            [archiver encodeObject:textView.font forKey:@"font"];
            [archiver encodeObject:textView.textColor forKey:@"color"];
            NSString *string4 =textField2.text;
            NSLog(@"%@",string4);
            [archiver encodeObject:string4 forKey:@"text"];
            [archiver finishEncoding];
            [data1 writeToFile:path1 atomically:YES];

            [string writeToFile:path atomically:YES encoding:NSUTF8StringEncoding error:NULL];
            }
            
        }
    
    }else if (alertView.tag==kopenAlet)
    {
        if(buttonIndex==1)
        {
            NSFileManager *fileManager=[NSFileManager defaultManager];
            NSString *string1 =@"/Users/apple/Desktop";
            NSArray *array=[fileManager subpathsAtPath:string1];
            UITextField *textField =[alertView textFieldAtIndex:0];
            NSString *string10=textField.text;
            NSString *string =[NSString stringWithFormat:@"%@.txt",textField.text];
            if(![array containsObject:string]||string10==nil||[string10 isEqualToString:@""])
            {
                UIAlertView *alertVier =[[UIAlertView alloc]initWithTitle:@"警告" message:@"文件名不存在" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"OK", nil];
                alertVier.alertViewStyle =0;
               
                [alertVier show];
            
            }else
            {
        NSString *path=[NSString stringWithFormat:@"/Users/apple/Desktop/%@.txt",textField.text];
                 NSString *path1=[NSString stringWithFormat:@"/Users/apple/Desktop/%@.xml",textField.text];
            NSString *str1 = [NSString stringWithContentsOfFile:path
                                                       encoding:NSUTF8StringEncoding error:NULL];
            UITextView *textView=(UITextView*)[self.view viewWithTag:ktextView];
            UITextField *textField1 =(UITextField *)[self.view viewWithTag:ktextField];
            NSRange r=[str1 rangeOfString:@"&&&"];
            int i=(int)r.location;
            textField1.text=[str1  substringToIndex:i];
            textView.text=[str1   substringFromIndex:i+3];
                NSData *data2=[NSData dataWithContentsOfFile:path1];
                NSKeyedUnarchiver *unArchiver=[[NSKeyedUnarchiver alloc]initForReadingWithData:data2];
                NSString *string8 =[unArchiver decodeObjectForKey:@"text"];
                UITextField *textField2=(UITextField*)[self.view viewWithTag:kasignText];
                textField2.text=string8;
                textView.font=[unArchiver decodeObjectForKey:@"font"];
                textView.textColor=[unArchiver decodeObjectForKey:@"color"];
                //text.textColor=[unArchiver decodeObjectForKey:@"color1"];

            }
        }
    
    
    }
    NSLog(@"%d",buttonIndex);

}


- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if(buttonIndex==1)
    {
        NSFileManager *fileManager=[NSFileManager defaultManager];
        UITextField *textField =(UITextField*)[self.view viewWithTag:ktextField ];
        UITextView *textView=(UITextView*)[self.view viewWithTag:ktextView];
        UITextField *textField2=(UITextField*)[self.view viewWithTag:kasignText];
        textView.text=@"";
        textField.text=@"";
        textField2.text=@"";
        NSString *path=[NSString stringWithFormat:@"/Users/apple/Desktop/%@.txt",textField.text];
        NSString *path1=[NSString stringWithFormat:@"/Users/apple/Desktop/%@.xml",textField.text];
        [fileManager removeItemAtPath:path error:NULL];
       [fileManager removeItemAtPath:path1 error:NULL];
    }


}
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    UISegmentedControl *segmentControl=(UISegmentedControl *)[self.view viewWithTag:ksegment];
    segmentControl.hidden=YES;
    UISlider *slider=(UISlider *)[self.view viewWithTag:kslider];
    slider.hidden=YES;
    
    [self.view endEditing:YES];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
