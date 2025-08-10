/* student.h */
/* define stuctures */
struct stu_address{
char *street;
char *state;
char *city;
char *country;
};
struct StudentData{
char *stu_name;
int stu_id;
int stu_age;
struct stu_address stuAddress;
};
/* define function */
void sstudent(void);
