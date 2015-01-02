//
//  ChangeTableTimeScene.m
//  Timetable
//
//  Created by 田中 裕悟 on 13/04/12.
//
//

#import "ChangeTableTimeScene.h"

@interface ChangeTableTimeScene ()

@end

@implementation ChangeTableTimeScene

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //完了ボタン貼り付け
	UIBarButtonItem* Done = [[UIBarButtonItem alloc] initWithTitle:@"完了" style:UIBarButtonItemStyleDone target:self action:@selector(DonePush)];
    self.navigationItem.rightBarButtonItem = Done;

    //ユーザーデフォルト読み込み
    NSUserDefaults *userDefaults;
    userDefaults = [NSUserDefaults standardUserDefaults];
    
    for (int i = 0; i < 10; i++) {
        tableTimeField_[i] = [[UITextField alloc] init];
        [tableTimeField_[i] setFrame:CGRectMake(25, i * 44 + 15, 280, 35)];
        [tableTimeField_[i] setText:[userDefaults objectForKey:[NSString stringWithFormat:@"TableTime%d", i+1]]];
        //[tableTimeField_[i] setBackgroundColor:[UIColor cyanColor]];
        [tableTimeField_[i] setFont:[UIFont systemFontOfSize:25]];
        [self.view addSubview:tableTimeField_[i]];
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    
    //基礎となるセルができていなければ作成
    if (nil == cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
    }
    
    
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.textLabel.text = @"";
    
    return cell;
}

-(void)DonePush{
    //ユーザーデフォルト読み込み
    NSUserDefaults *userDefaults;
    userDefaults = [NSUserDefaults standardUserDefaults];
    
    for (int i = 0; i < 10; i++) {
        [userDefaults setObject:tableTimeField_[i].text forKey:[NSString stringWithFormat:@"TableTime%d", i+1]];
    }
    
    [self.navigationController popViewControllerAnimated:YES];
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
}

-(BOOL)shouldAutorotate{
    return NO;
}

-(NSUInteger)supportedInterfaceOrientations{
    return UIInterfaceOrientationMaskPortrait;
}

@end
