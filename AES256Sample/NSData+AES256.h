//
//  NSData+AES256.h
//  AES256Sample
//
//  Created by EL on 2014-05-08.
//  Copyright (c) 2014 EL. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSData (AES256)
- (NSData*)AES256EncryptWithKey:(NSString*)key;
- (NSData*)AES256DecryptWithKey:(NSString*)key;
@end
