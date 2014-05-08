//
//  AES256Base64Util.h
//  AES256Sample
//
//  Created by EL on 2014-05-08.
//  Copyright (c) 2014 EL. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AES256Base64Util : NSObject
+(NSString*)encWithString:(NSString*)string key:(NSString*)key;
+(NSString*)decWithString:(NSString*)string key:(NSString*)key;
@end
