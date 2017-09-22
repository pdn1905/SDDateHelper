#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "NTPKit.h"
#import "NTPServer.h"
#import "NTPTypes.h"

FOUNDATION_EXPORT double NTPKitVersionNumber;
FOUNDATION_EXPORT const unsigned char NTPKitVersionString[];

