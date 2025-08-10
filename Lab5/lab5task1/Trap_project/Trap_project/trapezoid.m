#import "trapezoid.h"

@implementation Trapezoid

- (double)square {
    return (self.lengthTrap + self.widthTrap) * self.height / 2;
}

- (double)perimeter {
    double side = sqrt(pow((self.lengthTrap - self.widthTrap)/2, 2) + pow(self.height, 2));
    return self.lengthTrap + self.widthTrap + 2 * side;
}

@end
