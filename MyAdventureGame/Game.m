//
//  Game.m
//  MyAdventureGame
//
//  Created by Jim Toepel on 12/20/14.
//  Copyright (c) 2014 FunderDevelopment. All rights reserved.
//

#import "Game.h"

@implementation Game
@synthesize name;
@synthesize userIsAlive;
@synthesize health;
@synthesize ans;

- (void) instructions
{
    
    // 1 Diplay instructions
    NSLog(@"\n\nYour plane crashed on an island. Help is coming in three days. Try and survive. \nType your first name and press enter to continue.");
    
    // 2 Read and store name
    char firstname[20];
    scanf("%s", &firstname);
    
    // 3 convert the string to ObC
    name = [NSString stringWithCString:firstname encoding:NSASCIIStringEncoding];
    
    // 4 Display the name
    NSLog(@"Your name is: %@. Press enter to continue.", name);
}


- (void) day1
{
    userIsAlive = true;
        // 1 Loop to see if alive
    while (userIsAlive) {
        // 2 - Scenario1
        NSLog(@"\n\nDAY:01\n\nWith blurred vision, you look around to gather your surroundings.\nYou are lost.\nThe beach is rough and the salty water is irritating your skin. You recall the plane crash.\n1. Walk into the jungle.\n2. Sleep and regain strength before walking into jungle.");
        scanf("%i", &ans);
        waitOnCR();
        
        // 3 - Answer1
        if (ans==2) {
            NSLog(@"\n\nYou feel well rested. However, you are hungry and freezing without shelter. It is too dark to build a shelter. You try to sleep in a tree but you are attacked by monkeys.\nPress Enter to continue.");
            waitOnCR();
            health = 0;
            userIsAlive = false;
            break;
        }
        
        // 4 - Scenario2
        // 5 - Answer2
        // 6 - Day Completion Message
    }
    
}


- (void) day2
{
    // 1 Loop to see if alive
    while (userIsAlive) {
        // 2 - Scenario1
        // 3 - Answer1
        // 4 - Scenario2
        // 5 - Answer2
        // 6 - Day Completion Message
    }
    
}


- (void) day3
{
    // 1 Loop to see if alive
    while (userIsAlive) {
        // 2 - Scenario1
        // 3 - Answer1
        // 4 - Scenario2
        // 5 - Answer2
        // 6 - Day Completion Message
    }
}

@end
