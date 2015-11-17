//
//  MD5Algorithm.m
//  MD5Demo
//
//  Created by westars on 15/11/16.
//  Copyright © 2015年 westars. All rights reserved.
//

#import "MD5Algorithm.h"
#import <CommonCrypto/CommonCrypto.h>

@implementation NSData (MD5Algorithm)

- (NSString *)md5String
{
    const char *str = [self bytes];
    unsigned char result[CC_MD5_DIGEST_LENGTH];
    CC_MD5(str, (CC_LONG)self.length, result);
    
    NSMutableString *md5Str = [NSMutableString string];
    for (int i = 0; i < CC_MD5_DIGEST_LENGTH; ++i) {
        [md5Str appendFormat:@"%02x", result[i]];
    }
    return md5Str;
}

@end

@implementation NSString (MD5Algorithm)

- (NSString *)md5String
{
    NSData * data = [self dataUsingEncoding:NSUTF8StringEncoding];
    return [data md5String];
}

@end
