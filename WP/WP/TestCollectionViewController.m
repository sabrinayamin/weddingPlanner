//
//  TestCollectionViewController.m
//  WP
//
//  Created by Sabrina Yamin on 3/27/17.
//  Copyright © 2017 Sabrina Yamin. All rights reserved.
//

#import "TestCollectionViewController.h"
#import "MyCollectionViewCell.h"
#import "PDKClient.h"
#import "PDKImageInfo.h"
#import "PDKPin.h"
#import <PinterestSDK/PinterestSDK.h>

@interface TestCollectionViewController()

@property (nonatomic, strong) NSArray *pins;

@end

@implementation TestCollectionViewController

//static NSString * const reuseIdentifier = @"Cell";

- (void)viewDidLoad {
    [super viewDidLoad];

    // Show the pinterest modal
    [[PDKClient sharedInstance] authenticateWithPermissions:@[PDKClientReadPublicPermissions] withSuccess:^(PDKResponseObject *responseObject) {
        
        // Pinterest User
        NSLog(@"response %@", responseObject);
        
            [[PDKClient sharedInstance] getBoardPins:@"64598644594251556" fields: [[NSSet alloc] initWithObjects:@"id", @"image", @"note", nil] withSuccess:^(PDKResponseObject *responseObject) {
        
                // Pins that belongs to boards
                NSLog(@"response %@", responseObject);
                
                /*
                 [
                     {
                        "image": "http://www.pinteret.com/puppy.png"
                        "id": "23ot23tioj23tio3",
                        "title": "Wedding"
                     },
                 
                    .....
                 
                 ]
                 */
                
                // [collectionView reloadData]
        
            } andFailure:^(NSError *error) {
        
                NSLog(@"error %@", error);
            }];
        
        
    } andFailure:^(NSError *error) {
        NSLog(@"error %@", error);
    }];
    //
//
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Register cell classes
//    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
    // Do any additional setup after loading the view.
//    recipeImages = [NSArray arrayWithObjects:@"mermaidActive.png", @"poofDressActive.png", @"flowDressActive.png", nil];
    
    _myImages = [@[@"mermaidActive.png",
                    @"poofDressActive.png",
                    @"flowDressActive.png"] mutableCopy];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfSectionsInCollectionView:
(UICollectionView *)collectionView
{
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView
    numberOfItemsInSection:(NSInteger)section
{
    return _myImages.count;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView
                 cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    MyCollectionViewCell *myCell = [collectionView
                                    dequeueReusableCellWithReuseIdentifier:@"Cell"
                                    forIndexPath:indexPath];
 
    //adding imgs
    UIImage *image;
    long row = [indexPath row];
    image = [UIImage imageNamed:_myImages[row]];
    
    myCell.imageView.image = image;

    
    //adding web views
//     NSString *urlString;
//     urlString = @"https://www.pinterest.com/pin/Abx17mt_6_eXaVCOeBQd9IEmUcdPw3VfehpupePJaggLim4Bvut4omM/";
//    NSURL *url = [NSURL URLWithString:urlString];
//    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
//    [myCell.webView loadRequest:urlRequest];
    

    //pdk image info??
    //PDk board??
    
    
    return myCell;
}

//- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
//{
//    PDKPin *pin = self.myImages[indexPath.row];
//    PDKPinCell *cell = (PDKPinCell *)[collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
//    cell.descriptionLabel.text = pin.descriptionText;
//    
//    
//    [cell.imageView setImageWithURL:pin.largestImage.url];
//    
//    return cell;
//}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

//#pragma mark <UICollectionViewDataSource>
//
//- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
//#warning Incomplete implementation, return the number of sections
//    return 0;
//}
//
//
//- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
//#warning Incomplete implementation, return the number of items
//    return 0;
//}
//
//- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
//    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
//
//    // Configure the cell
//    
//    return cell;
//}

#pragma mark <UICollectionViewDelegate>

/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/

@end
