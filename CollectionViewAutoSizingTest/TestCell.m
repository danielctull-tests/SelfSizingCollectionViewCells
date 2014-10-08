//
//  Created by Pete Callaway on 07/10/2014.
//  Copyright (c) 2014 Dative Studios. All rights reserved.
//

#import "TestCell.h"


#define TRY_1 0 // Adgust the layout attribute's frame height
#define TRY_2 0 // Adgust the layout attribute's size height


@implementation TestCell

+ (NSString*)reuseIdentifier {
    return NSStringFromClass([self class]);
}

@end
