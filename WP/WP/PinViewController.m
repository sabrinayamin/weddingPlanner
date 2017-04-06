//
//  PinViewController.m
//  WP
//
//  Created by Sabrina Yamin on 4/5/17.
//  Copyright © 2017 Sabrina Yamin. All rights reserved.
//

#import "PinViewController.h"

#import <PinterestSDK/PDKClient.h>
#import <PinterestSDK/PDKResponseObject.h>
#import <PinterestSDK/PDKUser.h>
#import <PinterestSDK/PDKBoard.h>
#import <PinterestSDK/PDKPin.h>
#import <PinterestSDK/PDKImageInfo.h>
#import "PDKImageInfo.h"
#import "PinCollectionViewCell.h"




#define BOARD_ID @"91620242358275162"



@interface PinViewController () <UICollectionViewDataSource>

// This will containe a list of PDKPin objects
@property (nonatomic, strong) NSArray *pins;

//@property (nonatomic, strong) NSString *urlString;

@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end

@implementation PinViewController


//- (IBAction)authenticateDidPressed:(UIButton *)sender {
//    
//    // 1) Shows diaglouge to authenticate user with Pinterest for the first time, we are only requesting read permission with the constante
//    [[PDKClient sharedInstance] authenticateWithPermissions:@[PDKClientReadPublicPermissions]
//                                         fromViewController:self
//                                                withSuccess:^(PDKResponseObject *responseObject)
//     {
//         
//         NSLog(@"responseObject %@", responseObject.user);
//         NSLog(@"%@", [NSString stringWithFormat:@"%@ authenticated!", responseObject.user.firstName]);
//         
//         
//         // 2) Get pins for a particular pinterest board
//         [[PDKClient sharedInstance] getBoardPins:BOARD_ID fields:[NSSet setWithArray:@[@"id", @"image", @"url"]] withSuccess:^(PDKResponseObject *responseObject) {
//             
//             // We got the pins back, refresh the collection view
//             self.pins = responseObject.pins;
//             [self.collectionView reloadData];
//             
//             
//         } andFailure:^(NSError *error) {
//             NSLog(@"error %@", error);
//         }];
//         
//     } andFailure:^(NSError *error) {
//         NSLog(@"error %@", error);
//     }];
//}
//

// We want the collection view to have as many cells as the pins array
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return self.pins.count;
}

// Return the collection view cell for a given index path
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    // We will be creating our custom PinterestCell
    PinCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"PinterestCell" forIndexPath:indexPath];
    
    // Get pin at indexpath.row from pins array
    PDKPin *pin = self.pins[indexPath.row];
    
    // Get the image url for the pin
    NSURL *pinURL = [pin largestImage].url;
    
    cell.urlString = pinURL.absoluteString;
    
    // TODO: - Use 3rd party libary to load image url into imageview of the cell
    
    NSData * imageData = [[NSData alloc] initWithContentsOfURL: [NSURL URLWithString: cell.urlString]];
    // long row = [indexPath row];
    //    image = [UIImage imageNamed:_myImages[row]];
    cell.imageView.image = [UIImage imageWithData:imageData];
    // [imageData release];
    
    
    
    
    // cell.imageView = [PDKImageInfo ];
    
    
    NSLog(@"image for cell is STRINGGGG%@", pinURL.absoluteString);
    // NSLog(@"linkkkkkkk>>>>>>>>>>> %@", [UIImage imageNamed:urlString]);
    
    return cell;
    
}


@end

