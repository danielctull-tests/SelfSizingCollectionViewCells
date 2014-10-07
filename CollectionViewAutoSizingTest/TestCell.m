//
//  Created by Pete Callaway on 07/10/2014.
//  Copyright (c) 2014 Dative Studios. All rights reserved.
//

#import "TestCell.h"


#define TRY_1 1 // Adgust the layout attribute's frame height
#define TRY_2 0 // Adgust the layout attribute's size height


@implementation TestCell

+ (NSString*)reuseIdentifier {
    return NSStringFromClass([self class]);
}

- (UICollectionViewLayoutAttributes *)preferredLayoutAttributesFittingAttributes:(UICollectionViewLayoutAttributes *)layoutAttributes {
    UICollectionViewLayoutAttributes *newAttributes = [super preferredLayoutAttributesFittingAttributes:layoutAttributes];

#if TRY_1
    
    CGRect newFrame = newAttributes.frame;
    newFrame.size.height = [self testHeightForIndexPath:layoutAttributes.indexPath];
//    newFrame.size.width = 320;

    newAttributes.frame = newFrame;
    
#elif TRY_2
    
    CGSize newSize = newAttributes.size;
    newFrame.size.height = [self testHeightForIndexPath:layoutAttributes.indexPath];
//    newSize.width = 320;
    
    newAttributes.size = newSize;
    
#endif
    
    return newAttributes;
}






- (CGFloat)testHeightForIndexPath:(NSIndexPath*)indexPath {
    return (indexPath.row + 3) * self.label.font.lineHeight;
}

@end
