//
//  PlayingCard.m
//  CollectionViewDragAndDrop
//
//  Created by ling toby on 7/12/16.
//  Copyright © 2016 Detroit Labs. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

-(NSString *)imageName {

    switch (self.suit) {
        case PlayingCardSuitSpade:
            return [NSString stringWithFormat:@"s%ld.png",(long)self.rank];
        case PlayingCardSuitHeart:
            return [NSString stringWithFormat:@"h%ld.png",(long)self.rank];
        case PlayingCardSuitClub:
            return [NSString stringWithFormat:@"c%ld.png",(long)self.rank];
        case PlayingCardSuitDiamond:
            return [NSString stringWithFormat:@"d%ld.png",(long)self.rank];
    }
}

@end
