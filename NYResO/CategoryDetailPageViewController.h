//
//  CategoryDetailPageViewController.h
//  NYResO
//
//  Created by ResDiary on 29/12/2015.
//  Copyright © 2015 ResDiary. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CategoryDetailPageViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) NSArray *resolutionsArray;

@property (nonatomic) NSInteger tagValue; 


@end
