//
//  HomePageViewController.m
//  NYResO
//
//  Created by ResDiary on 29/12/2015.
//  Copyright © 2015 ResDiary. All rights reserved.
//

#import "CategoryPageViewController.h"
#import "HomePageViewController.h"

@interface HomePageViewController ()

@end

@implementation HomePageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)leftSwipeGestureActionRequested:(UISwipeGestureRecognizer *)sender {
    HomePageViewController *homePagevc = [self.storyboard instantiateViewControllerWithIdentifier:@"CategoryPageViewController"];
    [self.navigationController pushViewController:homePagevc animated: YES];
    
}
@end
