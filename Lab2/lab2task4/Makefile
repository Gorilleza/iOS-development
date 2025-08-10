# Makefile для проекта с использованием структур

# Основное правило сборки финальной программы
# Зависит от объектных файлов main.o и student.o
program: build/main.o build/student.o
	# Компиляция программы из объектных файлов
	# -o указывает имя выходного файла (program)
	gcc -o program build/main.o build/student.o

# Правило для создания объектного файла main.o
# Зависит от исходного файла src/main.c
build/main.o: src/main.c
	# Создание директории build, если она не существует
	# -p предотвращает ошибки если директория уже есть
	mkdir -p build
	# Компиляция main.c в объектный файл main.o
	# -c означает "только компиляция, без линковки"
	gcc -c -o build/main.o src/main.c

# Правило для создания объектного файла student.o
# Зависит от исходного файла src/student.c
build/student.o: src/student.c
	# Компиляция student.c в объектный файл student.o
	gcc -c -o build/student.o src/student.c

# Правило для очистки проекта
clean:
	# Удаление всех объектных файлов (.o) и программы program
	# -f означает "принудительное удаление без подтверждения"
	rm -f *.o program
	# Рекурсивное удаление директории build и всего её содержимого
	rm -rf build/
