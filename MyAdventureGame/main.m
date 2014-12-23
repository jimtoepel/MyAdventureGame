//
//  main.m
//  MyAdventureGame
//
//  Created by Jim Toepel on 12/20/14.
//  Copyright (c) 2014 FunderDevelopment. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Game.h"

void waitOnCR (void)
{
    while( getchar () != '\n' ) {
        /*flush line buffer */};
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 1 init game
        Game* myGame = [[Game alloc] init];
        int response;
        myGame.health = 100;
        
        // 2 set up the loop variable
        bool gameIsRunning = true;
        
        // 3 loop that beast
        while (gameIsRunning) {
            // 4 show the instructions
            [myGame instructions];
            [myGame day1];
            [myGame printHealth];
            [myGame day2];
            [myGame printHealth];
            [myGame day3];
            [myGame printHealth];
            
            if (myGame.health<=0) {
                NSLog(@"\n\nYou have Died. \nPress enter for the next dialogue.");
                waitOnCR();
            }
            
            [myGame printScore:myGame.health];
            
            // 5 provide a quit option
            NSLog(@"\n\nRestart?\n1.Yes\n2.No");
            scanf("%i", &response);
            if (response ==2 ) {
                break;
            }
            // 6 wait on CR
            waitOnCR();
        }

        
    }
    return 0;
}
