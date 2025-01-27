@interface MyClass : NSObject

@property (strong, nonatomic) NSString *myString;

@end

@implementation MyClass

- (void)someMethod {
    __weak MyClass *weakSelf = self;
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        if (weakSelf) { //Check for nil
            NSString *string = [NSString stringWithFormat:@