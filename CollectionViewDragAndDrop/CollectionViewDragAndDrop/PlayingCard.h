//
//  PlayingCard.h
//  CollectionViewDragAndDrop
//
//  Created by ling toby on 7/12/16.
//  Copyright © 2016 Detroit Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, PlayingCardSuit) {
    PlayingCardSuitSpade,
    PlayingCardSuitHeart,
    PlayingCardSuitClub,
    PlayingCardSuitDiamond
};

@interface PlayingCard : NSObject

@property (assign, nonatomic) PlayingCardSuit suit;
@property (assign, nonatomic) NSInteger rank;
@property (copy, nonatomic, readonly) NSString *imageName;

@end
