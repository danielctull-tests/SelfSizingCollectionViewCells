//
//  Created by Pete Callaway on 07/10/2014.
//  Copyright (c) 2014 Dative Studios. All rights reserved.
//

#import "TestViewController.h"
#import "TestCell.h"


@implementation TestViewController

#pragma mark UICollectionView

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UICollectionViewFlowLayout *layout = (UICollectionViewFlowLayout*)self.collectionViewLayout;
    layout.estimatedItemSize = CGSizeMake(20.0f, 20.0f);
}


#pragma mark UICollectionViewDataSource

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 30;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView
	 numberOfItemsInSection:(NSInteger)section {
    return 10;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView
				  cellForItemAtIndexPath:(NSIndexPath *)indexPath {

    TestCell *cell = (TestCell*)[collectionView dequeueReusableCellWithReuseIdentifier:[TestCell reuseIdentifier] forIndexPath:indexPath];
    cell.label.text = [NSString stringWithFormat:@"%zd : %zd", indexPath.section, indexPath.row];
    
    return cell;
}

@end
