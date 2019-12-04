//
//  ViewController.m
//  KobeTableView
//
//  Created by kobelin on 2019/12/4.
//  Copyright © 2019 kobelin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic,strong) NSArray *thethethethetitle;
@property (nonatomic,strong) NSArray *detail;
@property (nonatomic,strong) UITableView *table;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.thethethethetitle = @[@"标题1",@"标题2",@"标题3",@"标题4",@"标题5",@"标题6",@"标题7",@"标题8"];
    
    self.detail = @[@"内容1",@"内容2",@"内容3",@"内容4",@"内容5",@"内容6",@"内容7",@"内容8"];
    _table = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStyleGrouped];
    _table.dataSource = self;
    _table.delegate = self;
    [self.view addSubview:self.table];
             
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.thethethethetitle.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"cell"];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
    cell.textLabel.text = [self.thethethethetitle objectAtIndex:indexPath.row];
    cell.detailTextLabel.text = [self.detail objectAtIndex:indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}


@end
