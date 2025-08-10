//
//  rectangular.m
//  Objcproject
//
//  Created by Eziz on 30.04.25.
//

#import "rectangular.h"
@implementation Rectangular
- (id)init {
self = [super init];
if(self){
//инициализация класса Rectangular и выделение памяти
}
return self;
}
// реализация методов чтения и записи в переменные с помощью
@synthesize lengthRectangular, widthRectangular;
// Реализация метода расчет площади прямоугольника square
- (float)square{
return lengthRectangular * widthRectangular;
}
// Реализация метода расчета периметра прямоугольника perimeter
- (float)perimeter{
return (lengthRectangular + widthRectangular) *2;
}
@end
