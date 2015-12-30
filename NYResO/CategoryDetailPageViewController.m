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
@property (strong, nonatomic) UIImage * categoryImage;

@end

@implementation CategoryDetailPageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}

-(UIImage *) cellImageForCategoryForTagVaule: (NSInteger) tagValue {
    switch (tagValue) {
        case 0:
            self.categoryImage = [UIImage imageNamed: @"fitness.jpg"];
            break;
        case 1:
            self.categoryImage = [UIImage imageNamed:@"image.jpg"];
            break;
        case 2:
            self.categoryImage = [UIImage imageNamed: @"hobbies.jpg"];
            break;
        case 3:
            self.categoryImage = [UIImage imageNamed: @"fearConquering.png"];
            break;
        case 4:
            self.categoryImage = [UIImage imageNamed: @"social.jpg"];
            break;
        case 5:
            self.categoryImage = [UIImage imageNamed: @"food.jpg"];
            break;
        case 6:
            self.categoryImage = [UIImage imageNamed: @"travel.jpg"];
            break;
        case 7:
            self.categoryImage = [UIImage imageNamed: @"intellectual.jpg"];
            break;
            
        default:
            break;
    }
    
    
    
    return self.categoryImage;
    
    
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
    
    cell.categoryImageView.image = [self cellImageForCategoryForTagVaule: self.tagValue];
    
    cell.resolutionLabel.text = [_resolutionsArray objectAtIndex:indexPath.row];
    
    return cell;
    
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSString * message = @"You've chosen your 2016 New Year's Resolution!";
    UIAlertController * alert = [UIAlertController alertControllerWithTitle:@"Congratulations!" message:message preferredStyle: UIAlertControllerStyleAlert];
    UIAlertAction * action = [UIAlertAction actionWithTitle: @"OK" style:UIAlertActionStyleDefault handler:nil];
    [alert addAction:action];
    [self presentViewController:alert animated:YES completion:nil];
    
    
}

@end
