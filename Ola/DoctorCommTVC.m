//
//  DoctorCommTVC.m
//  Ola
//
//  Created by Albert Chen on 11/18/14.
//  Copyright (c) 2014 cs147. All rights reserved.
//

#import "DoctorCommTVC.h"
#import "EmailUIVC.h"

@interface DoctorCommTVC ()
@property (strong, nonatomic) IBOutletCollection(UITableViewCell) NSArray *staticCells;

@end

@implementation DoctorCommTVC

- (void)viewDidLoad {
    //[super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    

    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

/*
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return 0;
}
*/

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/



- (void)searchBarTextDidBeginEditing:(UISearchBar *)searchBar
{
    //[searchBar resignFirstResponder];
    [searchBar setShowsCancelButton:YES animated:YES];
    //[self handleSearch:searchBar];
}

- (void) searchBar:(UISearchBar *)searchBar textDidChange:(NSString *)searchText
{
    [self handleSearch:searchBar];
}

- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar {
    //[searchBar resignFirstResponder];
    [searchBar setShowsCancelButton:NO animated:YES];
    [self handleSearch:searchBar];
}

- (void)searchBarTextDidEndEditing:(UISearchBar *)searchBar {
    //[searchBar resignFirstResponder];
    //[self handleSearch:searchBar];
}

- (void)handleSearch:(UISearchBar *)searchBar {
    NSLog(@"User searched for %@", searchBar.text);
    //[searchBar resignFirstResponder]; // if you want the keyboard to go away
    
    if([searchBar.text length]==0)
    {
         [self cells:self.staticCells setHidden:NO];
    }
    else
    {
        int selectedRow = (int)[searchBar.text length] % [self.staticCells count];
        
        NSLog(@"select row %d", selectedRow);
        
        
        self.hideSectionsWithHiddenRows = YES;
        
        for (UITableViewCell * cell in self.staticCells) {
            if([self.staticCells indexOfObject:cell] == selectedRow)
                [self cell:cell setHidden:NO];
            else
                [self cell:cell setHidden:YES];
        }

    }
    
    [self reloadDataAnimated:YES];
    
    //[self updateCells:self.staticCells];
    //[self reloadDataAnimated:YES];

    
     //YES, NO
    //[self cells:self.staticCells setHidden:YES];
    //[self reloadDataAnimated:YES];
    
    //[self cell:self.moo setHidden:YES];
    //[self reloadDataAnimated:YES];
    
    //NSLog(@" %s", [self cellIsHidden:self.moo] ? "true" : "false");
    
    
    
    
    //NSLog(@" %s", );
    
    
    

    //[self updateCells:self.staticCells];
    //[self reloadDataAnimated:YES];
}

- (void)searchBarCancelButtonClicked:(UISearchBar *) searchBar {
    NSLog(@"User canceled search");
    //[searchBar resignFirstResponder];
    [searchBar setShowsCancelButton:NO animated:YES];
    
    
    [self cells:self.staticCells setHidden:NO];
    [self reloadDataAnimated:YES];
    
    //[searchBar resignFirstResponder]; // if you want the keyboard to go away
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"newEmail"]) {
        if ([segue.destinationViewController isKindOfClass:[EmailUIVC class]]) {
            EmailUIVC *euivc = (EmailUIVC *)segue.destinationViewController;
            euivc.subject = @"New Message";
        }
    }
}

@end
