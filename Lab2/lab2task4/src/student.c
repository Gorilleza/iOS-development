/* Подключение стандартной библиотеки ввода-вывода */
#include <stdio.h>
/* Подключение заголовочного файла с объявлением структур */
#include "student.h"

/* 
 * Файл-реализация (исходный код) 
 * Содержит:
 * - структуру StudentData
 * - структуру StudentAddress
 */

/* Функция для работы со студенческими данными */
void sstudent(void)
{
    /* Создание переменной student типа StudentData */
    struct StudentData student;
    
    /* Присваивание значений полям структуры StudentData */
    student.stu_name = "Eziz";      // Имя студента
    student.stu_id = 2323441;       // ID студента
    student.stu_age = 20;           // Возраст студента
    
    /* 
     * Работа с вложенной структурой StudentAddress 
     * Присваивание значений адреса
     */
    student.stuAddress.street = "10, st. Oktyabrskaya";  // Улица
    student.stuAddress.state = "Minskaya";               // Область
    student.stuAddress.city = "Minsk";                   // Город
    student.stuAddress.country = "Belarus";              // Страна
    
    /* Вывод информации о студенте */
    printf("Hello, %s!", student.stu_name);              // Приветствие
    printf("\nStudent Id is: %d", student.stu_id);       // Вывод ID
    printf("\nStudent Age is: %d", student.stu_age);     // Вывод возраста
    
    /* Вывод полного адреса */
    printf("\nCountry %s, Region %s, City %s, Address %s",
           student.stuAddress.country,  // Страна
           student.stuAddress.state,    // Область
           student.stuAddress.city,     // Город
           student.stuAddress.street);  // Улица
    
    /* Завершающее сообщение */
    printf("\nGoodbye!");
}
