//
//  MD5Algorithm.h
//  MD5Demo
//
//  Created by westars on 15/11/16.
//  Copyright © 2015年 westars. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSData (MD5Algorithm)

- (NSString *)md5String;

@end

@interface NSString (MD5Algorithm)

- (NSString *)md5String;

@end
