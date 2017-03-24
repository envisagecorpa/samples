//
//  TabBarView.m
//
//
//  Created by Luis Teodoro Junior on 24/08/16.
//  Copyright © 2016 Luis Teodoro Junior. All rights reserved.
//
#import "TabBarView.h"

@implementation TabBarView


+ (instancetype)sharedInstance
{
    static TabBarView *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[TabBarView alloc] initWithFrame:CGRectMake(0,([[UIScreen mainScreen]bounds].size.height)-50, ([[UIScreen mainScreen]bounds].size.width), 50)];
        // Do any other initialisation stuff here
    });
    return sharedInstance;
}



- (id)initWithFrame:(CGRect)aRect
{
    if ((self = [super initWithFrame:aRect])) {
        [self startTabBar];
    }
    return self;
}

- (void)startTabBar {
    
    UITabBar *myTabBar = [[UITabBar alloc] initWithFrame:CGRectMake(0,0, ([[UIScreen mainScreen]bounds].size.width), 50)];
    myTabBar.delegate=self;
    [self addSubview:myTabBar];
    
    myTabBar.translucent = false;

    
    NSMutableArray *tabBarItems = [[NSMutableArray alloc] init];
    
    UITabBarItem *tabBarItem1 = [[UITabBarItem alloc] initWithTitle:@"Item1" image:[UIImage imageNamed:@"document.png"] tag:0];
    UITabBarItem *tabBarItem2 = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemContacts tag:1];
    UITabBarItem *tabBarItem3 = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemHistory tag:2 ];

    
    [tabBarItems addObject:tabBarItem1];
    [tabBarItems addObject:tabBarItem2];
    [tabBarItems addObject:tabBarItem3];

    myTabBar.items = tabBarItems;
    myTabBar.selectedItem = [tabBarItems objectAtIndex:0];
    
    
}


- (void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item {
    NSInteger selectedTag = tabBar.selectedItem.tag;
    NSLog(@"%ld",(long)selectedTag);
    if (selectedTag == 0) {
        
        UIViewController *vc  = [[UIStoryboard storyboardWithName:@"Main"
                                                           bundle: nil] instantiateViewControllerWithIdentifier: @"ViewController"];
        
        [[SlideNavigationController sharedInstance] popToRootAndSwitchToViewController:vc
                                                                 withSlideOutAnimation:YES
                                                                         andCompletion:nil];
        
        //Do what ever you want here
    } else if(selectedTag == 1) {
        UIViewController *vc  = [[UIStoryboard storyboardWithName:@"Main"
                                                           bundle: nil] instantiateViewControllerWithIdentifier: @"ViewController"];
        
        [[SlideNavigationController sharedInstance] popToRootAndSwitchToViewController:vc
                                                                 withSlideOutAnimation:YES
                                                                         andCompletion:nil];
        
        //Do what ever you want
    }else if(selectedTag == 2) {
        UIViewController *vc  = [[UIStoryboard storyboardWithName:@"Main"
                                                           bundle: nil] instantiateViewControllerWithIdentifier: @"ViewController"];
        
        [[SlideNavigationController sharedInstance] popToRootAndSwitchToViewController:vc
                                                                 withSlideOutAnimation:YES
                                                                         andCompletion:nil];
        
        //Do what ever you want
    }else { //if(selectedTag == 2)
        //Do what ever you want here
    }
}


@end
