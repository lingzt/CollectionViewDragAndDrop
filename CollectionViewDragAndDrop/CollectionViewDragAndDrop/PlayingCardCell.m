//
//  PlayingCardCell.m
//  CollectionViewDragAndDrop
//
//  Created by ling toby on 7/12/16.
//  Copyright © 2016 Detroit Labs. All rights reserved.


#import "PlayingCardCell.h"
#import "PlayingCard.h"

@implementation PlayingCardCell

-(void)setPlayingCard:(PlayingCard *)playingCard{
    _playingCard = playingCard;
    self.playingCardImageView.image = [UIImage imageNamed:_playingCard.imageName];
}

-(void)setHightlighted:(BOOL)highlighted{
    [super setHighlighted:highlighted];
    self.playingCardImageView.alpha = highlighted ? 0.75f:1.0f;
}

@end
