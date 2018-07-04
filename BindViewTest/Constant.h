//
//  Constant.h
//  BindViewTest
//
//  Created by wjw on 2018/7/2.
//  Copyright © 2018年 wjw. All rights reserved.
//

#ifndef Constant_h
#define Constant_h

#import <objc/runtime.h>

#define BINDVIEW(viewclass)   \
-(void)loadView \
{\
self.view = [[viewclass alloc] initWithFrame:[UIScreen mainScreen].bounds];\
}\
-(id)forwardingTargetForSelector:(SEL)aSelector\
{\
struct objc_method_description  omd = protocol_getMethodDescription(@protocol(viewclass), aSelector, NO, YES);\
if (omd.name != NULL)\
{\
return self.view;\
}\
return [super forwardingTargetForSelector:aSelector];\
}\


#endif /* Constant_h */
