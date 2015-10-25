/*
USER STORY
///////////////////////////////////////////////
AS A TEACHER, I WANT a program that will calculate three values based on a list of sorted test scores: the sum, the mean, and the median.
- Calculate the "sum" total of scores.
- Calculate the "mean", which is the total divided by the number of students in the class.
- Calculate the "median", which is the middle score if the class size is an odd number. In a class with an even amount of students, it is the average of the two middle scores.
*Words in "" should be the names of the functions.
PSEUDOCODE
///////////////////////////////////////////////
create function "calculate" that take a list of sorted scores
  create variable (sum) and set to 0
  create variable (median) and set to 0.
  loop through the list
    add each number to the variable
  end the loop
  create variable (mean) that will take the sum and divide it by the length of list
  if the length of sorted scores is even
    set num equal to divide the list length by 2
    set median equal to list with num index plus list with num index plus 1 divided by 2.
  else
    set num equal to the length of sorted scores divided by 2
    set median equal to list with the num index
  end the statement
end the function
INITIAL CODE*/
///////////////////////////////////////////////
function calculate(scores) {
  var sum = 0;
  var median = 0;

  for (var i = 0; i < scores.length; i++) {
    sum += scores[i];
  };

  var mean = sum / scores.length;

  if(scores.length % 2 === 0) {
    var num = scores.length / 2;
    median = (scores[num] + scores[num + 1]) / 2;
  }
  else {
    var num = scores.length / 2;
    median = scores[num];
  }
}
//REFACTORED CODE
///////////////////////////////////////////////

function calculate(scores) {
  var sum = 0;
  var median = 0;
  var num = scores.length / 2;
  for (var i = 0; i < scores.length; i++) {
    sum += scores[i];
  };
  var mean = sum / scores.length;
  if (scores.length % 2 === 0) {
    median = (scores[num] + scores[num + 1]) / 2;
  }
  else {
    median = scores[num];
  }
  console.log(median)
}
//calculate([1000,20000,30000])
/*

The program takes an argument (scores). Then it creates the sum and median variables which are set to 0. The variable num is equal to the length of scores divided by 2.
Then a loop was created to add the sum of the numbers in the array and put it into a new variable (sum). The mean variable took the sum and divided it by the length of the scores.
There was an issue with the median. If we have an even number of scores, it works but if we have an odd number (our else statement) it won't work. We will get undefined because if we have 3 scores, our num will equal to 1.5 and there's no 1.5 index. In our else statement, if we have 3 numbers, median will equal to scores[1.5]. That's not a valid index number.

*/
