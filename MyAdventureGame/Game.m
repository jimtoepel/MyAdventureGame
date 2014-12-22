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
        NSLog(@"\n\nInside the jungle, you find a bush with little black fruit, at its base are white speckled mushrooms.\n1. Eat mushrooms.\n2. Eat berries.");
        scanf("%i", &ans);
        waitOnCR();
        
        // 5 - Answer2
        if (ans ==1) {
            NSLog(@"\n\nYou are left with a bitter taste in your mouth and a gugling in your stomach.\nHealth decreased.\nPress ENTER to continue.");
            health = health - 10;
            waitOnCR();
        }
        else {
            NSLog(@"\n\nThe sweetness of the berries is quite savory considering all the seawater you consumed.\nHealth increased\nPress ENTER to continue.");
            waitOnCR();
            health = health + 10;
            
        }
        // 6 - Day Completion Message
        NSLog(@"\n\nYou fall aslepp beneath the tree. Day:01 was sucessfully completed.\nPress ENTER to continue.");
        waitOnCR();
        break;
        
    }
    
}


- (void) day2
{
    // 1 Loop to see if alive
    while (userIsAlive) {
        // 2 - Scenario1
        NSLog(@"\n\nDay:02\n\nUpon being nudged by a large animal, you awake. \nIt is a large gorilla.\n1. Run.\n2. Embrace your fate and climg in its mouth.");
        scanf("%i", &ans);
        waitOnCR();
        
        // 3 - Answer1
        if (ans == 1) {
            NSLog(@"\n\nThe gorilla watches you run in amusment. It trails behind you, until you drop from exhaustion.\nHe takes a bite out of your scrawny arm.\nPress ENTER to continue.");
            waitOnCR();
            NSLog(@"\n\nOUCH\nThe gorilla shakes its head in disapprobal and proceeds to spit out the remaining flesh. The gorilla runs back into the jungle.\nYour gaping wound results in a significant health decrease.\nPress ENTER to continue.");
            waitOnCR();
            health = health - 60;
        }
        else {
            NSLog(@"\n\nBy peacefully approaching the gorilla, it does not feel threatened. It takes you on its back to explore the island.\nPress ENTER to continue.");
            waitOnCR();
            NSLog(@"\n\nAs you pass through the jungle, you see that the snakes inhabit the taller trees. You pass through a grand meadow of grass.\nThe ape slows, as you look to the east coast of the island, you make out a tribe of warriors. The ape turns and brings you back to where he found you.\nYou take a mental note of what you saw. \nPress ENTER to continue.");
            waitOnCR();
        }

        // 4 - Scenario2
        NSLog(@"\n\nYou feel slightly chilled. You know the night will be really cold if you don't build a fire and retrieve wood.\n1. Search the beach. \n2. Search the jungle.");
        scanf("%i", &ans);
        waitOnCR();
        
        // 5 - Answer2
        if (ans == 1) {
            while (ans == 1 ) {
                NSLog(@"\n\nYou feel the warm sand under your feet.\n1. Seatch the west coast.\n2. Search the southern coast.");
                scanf("%i", &ans);
                if (ans == 1) {
                    NSLog(@"\n\nYou walk for a mile and come upon some sun dried timber. You create a tee-pee structure out of the wood.\nYou manage to make the kindle catch fire by scratching rocks together.\n Press ENTER to continue.");
                    waitOnCR();
                    break;
                }
                if (ans == 1) {
                    NSLog(@"\n\nYou walk in circles for another mile, this part of the beach does not have timber.\nPress ENTER to continue.");
                    ans = 1;
                    waitOnCR();
                }
            }
        }
        else {
            NSLog(@"\n\nYou find plenty of wood and drag it on to the beach for your fire.\nPress ENTER to continue.");
            waitOnCR();
            NSLog(@"\n\nAs night falls you have failed to light your fire, the wood from the jungle is too moist and rotten.\nYou find shelter under another tree, but you are exceptionally cold and weak. Health decreases.\nPress ENTER to continue.");
            health = health - 10;
            waitOnCR();
        }
        
        // 6 - Day Completion Message
        NSLog(@"\n\nYou fall asleep, Day:02 was sucessfully completed.\nPress ENTER to continue.");
        waitOnCR();
        break;
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
