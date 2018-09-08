#include <iostream>
#include <string>

#include "Course.h"
#include "Student.h"


int main(int argc, char const *argv[]) {

  Course course = Course();


  int id, mt1, mt2, final_, new_score;
  int i;
  float min, max;
  string name, surname, exam_type;
  cout<<"Please Choose Your Option:"<<endl;
  cout<<"1)Add a Student:"<<endl;
  cout<<"2)Search a student by ID:"<<endl;
  cout<<"3)Show students with overall score above a threshold:"<<endl;
  cout<<"4)Show students with overall score below a threshold:"<<endl;
  cout<<"5)Show clasroom average:"<<endl;
  cout<<"6)Change a student's score:"<<endl;
  cout<<"7)Exit"<<endl;

  while(1){
    cout<<"Enter your option:"<<endl;
    cin>>i;
    if (i==1){
      cout<<"Enter ID, Name, Surname and Exam Scores(MT1, MT2, Final):"<<endl;
      cin>>id>>name>>surname>>mt1>>mt2>>final_;
      Student student(id, name, surname, mt1, mt2, final_);
      course.addStudent(student);
    }

    if (i==2){
      cout<<"Enter ID:"<<endl;
      cin>>id;
      course.showById(id);
    }

    if (i==3){
      cout<<"Enter the minimum score:"<<endl;
      cin>>min;
      course.showAbove(min);
    }
    if (i==4){
      cout<<"Enter the maximum score:"<<endl;
      cin>>max;
      course.showBelow(max);
    }
    if (i==5){
      cout<<"The Classroom Average:"<<endl;
      course.calcAverage();
    }
    if (i==6){
      cout<<"Enter ID, Exam type( mt1 , mt2 or final) and updated score:"<<endl;
      cin>>id>>exam_type>>new_score;
      course.changeStudentScore(id, exam_type, new_score);
    }
    if (i==7){
      cout<<"exiting the program..."<<endl;
      return 0;

    }
  }

  return 0;
}
