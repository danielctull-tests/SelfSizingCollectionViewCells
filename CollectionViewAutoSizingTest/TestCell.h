//
//  Created by Pete Callaway on 07/10/2014.
//  Copyright (c) 2014 Dative Studios. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TestCell : UICollectionViewCell

@property (nonatomic, weak) IBOutlet UILabel *label;

+ (NSString*)reuseIdentifier;

@end