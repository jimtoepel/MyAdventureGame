//
//  Game.h
//  MyAdventureGame
//
//  Created by Jim Toepel on 12/20/14.
//  Copyright (c) 2014 FunderDevelopment. All rights reserved.
//

// here we lay out the different variables and methods implmented as part of this class. The .m fils is where we implement everything.

#import <Foundation/Foundation.h>

void waitOnCR (void);

@interface Game : NSObject

{
    NSString* name;
    BOOL userIsAlive;
    int Health;
    int ans;
    int score;
}

@property (strong) NSString* name;
@property BOOL userIsAlive;
@property int health;
@property int ans;
@property int score;

- (void) instructions;
- (void) day1;
- (void) day2;
- (void) day3;
- (void) printHealth;
- (void) printScore: (float) x;

@end
