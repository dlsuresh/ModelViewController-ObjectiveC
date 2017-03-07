//
//  ViewController.m
//  MVC-CoreData
//
//  Created by Suresh on 2/28/17.
//  Copyright © 2017 Suresh. All rights reserved.
//

#import "ViewController.h"
#import "ModelView.h"
#import "TableViewCell.h"

@interface ViewController (){
    NSMutableArray *emp;
    
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    ModelView *emp1 = [[ModelView   alloc]initName:@"suresh" Design:@"iOS "  address:@"Bangalore"];
    
    ModelView *emp2 = [[ModelView   alloc]initName:@"chaithu" Design:@"iOS "  address:@"Bangalore"];
   
    ModelView *emp3 = [[ModelView   alloc]initName:@"pawan" Design:@"iOS "  address:@"Bangalore"];
    
    [self saveData:emp1];
    [self saveData:emp2];
    [self saveData:emp3];
    
    [self fetchData];
    
    
}


-(void)saveData:(ModelView*)model{
    
    NSManagedObjectContext *context = [self getContext];
    NSManagedObject *obj = [NSEntityDescription insertNewObjectForEntityForName:@"Details" inManagedObjectContext:context];
    [obj setValue:model.namestr forKey:@"name"];
    [obj setValue:model.designstr forKey:@"designation"];
    [obj setValue:model.addressstr forKey:@"address"];
    
    
    
}



-(NSManagedObjectContext*)getContext{
    AppDelegate *app = (AppDelegate*)[UIApplication sharedApplication].delegate;
    NSManagedObjectContext *context = app.persistentContainer.viewContext;
    return context;
}
-(void)fetchData{
    NSManagedObjectContext *context = [self getContext];
    NSFetchRequest *request = [[NSFetchRequest alloc]initWithEntityName:@"Details"];
    
    
    emp = [[NSMutableArray alloc]initWithArray:[context executeFetchRequest:request error:nil]];
    
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return emp.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    NSManagedObject *obj = [emp objectAtIndex:indexPath.row];
    cell.nameLB.text = [obj valueForKey:@"name"];
    cell.designationLB.text = [obj valueForKey:@"designation"];
    cell.addressLB.text = [obj valueForKey:@"address"];
    
    
    return cell;
}


@end
