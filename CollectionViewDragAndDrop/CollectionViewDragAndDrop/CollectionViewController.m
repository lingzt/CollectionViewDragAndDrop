//
//  CollectionViewController.m
//  CollectionViewDragAndDrop
//
//  Created by ling toby on 7/12/16.
//  Copyright © 2016 Detroit Labs. All rights reserved.
//

#import "CollectionViewController.h"
#import "PlayingCard.h"
#import "PlayingCardCell.h"

@interface CollectionViewController ()
@property (strong,nonatomic) NSMutableArray *deck;

@end

@implementation CollectionViewController

static NSString * const reuseIdentifier = @"Cell";

- (void)viewDidLoad {
    [super viewDidLoad];
    self.deck = [self constructsDeck];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSMutableArray *)constructsDeck{
    NSMutableArray *newDeck = [NSMutableArray arrayWithCapacity:52];
    for (NSInteger rank = 1; rank <= 13; rank++) {
        // Spade
        {
            PlayingCard *playingCard = [[PlayingCard alloc] init];
            playingCard.suit = PlayingCardSuitSpade;
            playingCard.rank = rank;
            [newDeck addObject:playingCard];
        }
        
        // Heart
        {
            PlayingCard *playingCard = [[PlayingCard alloc] init];
            playingCard.suit = PlayingCardSuitHeart;
            playingCard.rank = rank;
            [newDeck addObject:playingCard];
        }
        
        // Club
        {
            PlayingCard *playingCard = [[PlayingCard alloc] init];
            playingCard.suit = PlayingCardSuitClub;
            playingCard.rank = rank;
            [newDeck addObject:playingCard];
        }
        
        // Diamond
        {
            PlayingCard *playingCard = [[PlayingCard alloc] init];
            playingCard.suit = PlayingCardSuitDiamond;
            playingCard.rank = rank;
            [newDeck addObject:playingCard];
        }
    }
    return newDeck;
}


#pragma mark <UICollectionViewDataSource>

//- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
//    return 1;
//}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    NSLog(@"There are %ld cells in the view ~~~~~~~~~~~~~~~~~~~~~~~~~", self.deck.count);
    return self.deck.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    PlayingCard *tempPlayingCard = self.deck[indexPath.item];
    PlayingCardCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    cell.playingCard = tempPlayingCard;
    NSLog(@"Loging the %ld item________________________________", indexPath.item);
    return cell;
}

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
