//
//  PlayingCardCell.h
//  CollectionViewDragAndDrop
//
//  Created by ling toby on 7/12/16.
//  Copyright © 2016 Detroit Labs. All rights reserved.
//

#import <UIKit/UIKit.h>
@class PlayingCard;

@interface PlayingCardCell : UICollectionViewCell

@property (strong,nonatomic) PlayingCard *playingCard;
@property (weak, nonatomic) IBOutlet UIImageView *playingCardImageView;


@end
