//
//  rectangular.h
//  Objcproject
//
//  Created by Eziz on 30.04.25.
//

#ifndef rectangular_h
#define rectangular_h

//Подключение библиотек
#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>
// Секция interface для объявления методов класса Rectangular
@interface Rectangular : NSObject
{
// Объявление переменных
float lengthRectangular;
float widthRectangular;
}
// Объявление метода класса выделения памяти
- (id)init;
// Объявление методов получения и записи с помощью директивы
@property float lengthRectangular;
@property float widthRectangular;
// Объявление методов для вычисления площади и периметра
- (float)square;
- (float)perimeter;
@end


#endif /* rectangular_h */
