//
//  m2048FBSnapshotTestCases.m
//  m2048
//
//  Created by David Lam on 2017-03-04.
//  Copyright © 2017 Danqing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <FBSnapshotTestCase/FBSnapshotTestCase.h>

@interface m2048FBSnapshotTestCases : FBSnapshotTestCase

@end

@implementation m2048FBSnapshotTestCases

- (void)setUp
{
    [super setUp];
    // Flip this to YES to record images in the reference image directory.
    // You need to do this the first time you create a test and whenever you change the snapshotted views.
    // Tests running in record mode will allways fail so that you know that you have to do something here before you commit.
    self.recordMode = NO;
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testViewSnapshot
{
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UIViewController *vc = [sb instantiateViewControllerWithIdentifier:@"M2ViewController"];
    FBSnapshotVerifyView(vc.view, nil);
}

@end
