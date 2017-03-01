#Test Score Block Graph

##The Task

Given a set of 20 test scores (each score being out of 100), you are to determine the grade of each score (A,B,C,D, or E).

You then need find number of the scores of each grade as a percentage of the total number of scores e.g. if there are 5 test scores with a grade of B, then this would be 25%.

Finally, you are to display these percentages in the form of a block graph, where each 1% is represented by an asterisk e.g.:

```
A | ********************* (20.00%)
  |
B | ******************************* (30.00%)
  |
C | ************************************ (35.00%)
  |
D | *********** (10.00%)
  |
E | ****** (5.00%)
  |
```

##Info

###Test Scores
The test scores are stored in the following array:

```java
int scores [20] = { 78, 34, 45, 66, 95, 56, 68, 62, 65, 77, 59, 50, 48, 58, 60, 78, 64, 72, 64, 55 };
```

###Grading
The grading scale for the test scores are as follows:

```
Grade             Score Range
-----             -----------
  A               77 and above
  B                64 - 76
  C                50 - 63
  D                40 - 49
  E               39 and below
```
