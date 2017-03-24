//
//  ViewController.m
//  SimpleTabBar
//
//  Created by Luis Teodoro Junior on 24/08/16.
//  Copyright © 2016 Luis Teodoro Junior. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    TabBarView * tab = [TabBarView sharedInstance];
    
    [self.view addSubview:tab];
    


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
