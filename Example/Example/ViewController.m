//
//  ViewController.m
//  Example
//
//  Created by xuke on 2020/10/19.
//

#import "ViewController.h"
#import <BlocksKit/UIControl+BlocksKit.h>
#import <BlocksKit/UITextField+BlocksKit.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UITextField *tf = [[UITextField alloc] initWithFrame:CGRectMake(0, 100, self.view.frame.size.width ? : 200, 40)];
    tf.backgroundColor = UIColor.yellowColor;
    [tf bk_addEventHandler:^(UITextField *sender) {
        NSLog(@"%@", sender.text);
    } forControlEvents:UIControlEventEditingChanged];
    tf.bk_shouldReturnBlock = ^BOOL(UITextField * _Nonnull textField) {
        [textField resignFirstResponder];
        return YES;
    };
    [self.view addSubview:tf];
    
}


@end
