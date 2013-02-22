//
//  MKIntroLayer.m
//  momoKinokoGame
//
//  Created by slightair on 2013/02/20.
//  Copyright 2013年 slightair. All rights reserved.
//

#import "MKIntroLayer.h"
#import "MKGameLayer.h"

@implementation MKIntroLayer

+ (CCScene *)scene
{
    CCScene *scene = [CCScene node];
    MKIntroLayer *layer = [MKIntroLayer node];

    [scene addChild:layer];

    return scene;
}

- (void)onEnter
{
    [super onEnter];

    CGSize windowSize = [[CCDirector sharedDirector] winSize];
    CCSprite *background = [CCSprite spriteWithFile:@"mushroom4.png"];
    background.position = ccp(windowSize.width / 2, windowSize.height / 2);

    [self addChild:background];

    id transition = [CCTransitionFade transitionWithDuration:1.0 scene:[MKGameLayer scene]];
    [[CCDirector sharedDirector] replaceScene:transition];
}

@end
