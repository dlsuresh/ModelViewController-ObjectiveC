//
//  TableViewCell.h
//  MVC-CoreData
//
//  Created by Suresh on 2/28/17.
//  Copyright © 2017 Suresh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UILabel *nameLB;
@property (strong, nonatomic) IBOutlet UILabel *designationLB;

@property (strong, nonatomic) IBOutlet UILabel *addressLB;

@end
