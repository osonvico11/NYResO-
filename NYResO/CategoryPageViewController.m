//
//  CategoryPageViewController.m
//  NYResO
//
//  Created by ResDiary on 29/12/2015.
//  Copyright © 2015 ResDiary. All rights reserved.
//

#import "CategoryPageViewController.h"

#import "CategoryDetailPageViewController.h"


@interface CategoryPageViewController ()

@end

@implementation CategoryPageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)categoryButtonPressed:(UIButton *)sender {
    CategoryDetailPageViewController * detailPage = [self.storyboard instantiateViewControllerWithIdentifier:@"CategoryDetailPageViewController"];
    detailPage.tagValue = sender.tag;
    [self.navigationController pushViewController:detailPage animated:YES];
  
    
}
@end
