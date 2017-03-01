#include <stdio.h>

int scores [20] = { 78, 34, 45, 66, 95, 56, 68, 62, 65, 77, 59, 50, 48, 58, 60, 78, 64, 72, 64, 55 };

enum GRADE { A, B, C, D, E};

int getGrade (int score)
{
  if (score >= 77)
    return A;
  else if (score >= 64 && score < 77)
    return B;
  else if (score >= 50 && score < 64)
    return C;
  else if (score >= 40 && score < 50)
    return D;
  else return E;
}

double numGrade(int grade)
{
   double count = 0.0;
   int i;
   for (i = 0; i < 20; i++)
   {
     if (getGrade(scores[i]) == grade)
      count += 1.0;
   }
   return count;
}

double getPercentage(double numScores)
{
  double percentage = (numScores / 20) * 100.0;
  return percentage;
}

void printGraphLine(int grade, char gradeLetter)
{
  double i;
  double gradeCount = numGrade(grade);
  double percentage = getPercentage(gradeCount);

  printf (" %c | ", gradeLetter);

  for (i = 0.0; i < percentage; i += 1.0)
  {
    printf("*");
  }
  printf(" (%.2f\%%)\n", percentage);
  printf ("   |\n");
}

int main()
{
  printGraphLine(A,'A');
  printGraphLine(B,'B');
  printGraphLine(C,'C');
  printGraphLine(D,'D');
  printGraphLine(E,'E');

  return 0;
}
