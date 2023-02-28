#include "grade_school.h"

void init_roster(roster_t *actual)
{
  actual->count = 0;
}

bool add_student(roster_t *actual, char name[], int grade)
{
  if (actual->count >= MAX_STUDENTS)
  {
    return false;
  }
  for (size_t i = 0; i < actual->count; i++)
  {
    if (strcmp(actual->students[i].name, name) == 0)
    {
      return false;
    }
  }
  strcpy(actual->students[actual->count].name, name);
  actual->students[actual->count].grade = grade;
  actual->count++;
  qsort(actual->students, actual->count, sizeof(student_t), func);
  return true;
}

roster_t get_grade(roster_t *actual, int n)
{
  roster_t ng;
  init_roster(&ng);

  for (size_t i = 0; i < actual->count; i++)
  {
    if (actual->students[i].grade == n)
    {
      add_student(&ng, actual->students[i].name, actual->students[i].grade);
    }
  }
  return ng;
}

int func(const void *a, const void *b)
{
  student_t *s1 = (student_t *)a;
  student_t *s2 = (student_t *)b;

  if (s1->grade > s2->grade)
  {
    return 1;
  }
  else if (s1->grade < s2->grade)
  {
    return -1;
  }

  if (strcmp(s1->name, s2->name) > 0)
  {
    return 1;
  }
  else if (strcmp(s1->name, s2->name) < 0)
  {
    return -1;
  }
  return 0;
}

int main()
{
  roster_t actual;
  init_roster(&actual);

  add_student(&actual, "IMa", 4);
  add_student(&actual, "IM2a", 3);
  add_student(&actual, "IMssa", 2);
  add_student(&actual, "ISMAA", 1);

  for (size_t i = 0; i < actual.count; i++)
  {
    printf("%s - %d\n", actual.students[i].name, actual.students[i].grade);
  }

  return 0;
}