//
//  CategoryDetailPageViewController.m
//  NYResO
//
//  Created by ResDiary on 29/12/2015.
//  Copyright © 2015 ResDiary. All rights reserved.
//

#import "CategoryDetailPageViewController.h"
#import "ResolutionTableViewCell.h"

static NSString * CellID = @"CellID" ;

@interface CategoryDetailPageViewController ()

@end

@implementation CategoryDetailPageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}

-(NSArray*)resolutionsArray {
    NSArray * array = [[NSArray alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource: @"CategoryResolutions" ofType:@"plist"]];
    NSDictionary * dictionary = [array objectAtIndex: self.tagValue];
    
    self.resolutionsArray = [dictionary objectForKey: @"ResolutionArray"];
    
    return _resolutionsArray;
}

-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.resolutionsArray.count;
    
}

-(UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ResolutionTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellID forIndexPath:indexPath];
    cell.resolutionLabel.text = [_resolutionsArray objectAtIndex:indexPath.row];
    
    
    return cell;
    
    
}

@end
