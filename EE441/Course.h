
#ifndef COURSE_H
#define COURSE_H

#include <iostream>
#include <string>
#include "Student.h"
#define MAX_SIZE 10

using namespace std;

class Course{
private: //private members
  Student Entries[MAX_SIZE];
  float weight1, weight2, weightf;
  int num;

public:
    //Constructor
  Course(int num = 0, float weight1 = 0.25, float weight2 = 0.25, float weightf = 0.5) {
    this->num = num;
    this->weight1 = weight1;
    this->weight2 = weight2;
    this->weightf = weightf;
  };

    //Getter Weights
  float getWeight1(){
    return weight1;
  };

  float getWeight2(){
    return weight2;
  };

  float getWeightf(){
    return weightf;
  };


  int get_num() {
    return this->num;
  };
    //Add student function
  void addStudent(Student student) {
    if (num < 10) {
      Entries[num] = student;
      this->num=this->num+1;
    }else {
      cout << "ÇOK FAZLA STUDENT VAR " << endl;
    }
  }

  //Change weights function
  void changeWeights(float w1,float w2 ,float wf){
    this->weight1=w1;
    this->weight2=w2;
    this->weightf=wf;
  }
    //Get student function
  Student getStudent(int i){
    Student st=Entries[i];
    return st;
  }
    //Course Average Calculator
  void calcAverage(){
    int i;
    float sum=0;
    for (i=0; i<num; i++){
      sum=sum+Entries[i].get_mt1();
    }
    float avg1=sum/(float)num;
    cout<<"Average of MT1:"<<avg1<<endl;
//&
    sum=0;
    for (i=0; i<num; i++){
      sum=sum+Entries[i].get_mt2();
    }
    float avg2=sum/(float)num;
    cout<<"Average of MT2:"<<avg2<<endl;

    sum=0;
    for (i=0; i<num; i++){
      sum=sum+Entries[i].get_final();
    }
    float avgf=sum/(float)num;
    cout<<"Average of Final:"<<avgf<<endl;

    sum=0;
    for (i=0; i<num; i++){
      sum=sum+Entries[i].overallScore(weight1, weight2, weightf);
    }
    float avgOverall=sum/(float)num;
    cout<<"Average of Overall Course:"<<avgOverall<<endl;
  }


    //Show by ID
  void showById (int temp ){
    Student st;
    int i;

    for (i=0; i<num; i++){
      if (Entries[i].get_id()==temp){
        st=Entries[i];
        break;
      }
    }
    if (i==num){
      cout<<"Invalid number"<<endl;
    }
    else {
      cout <<st.get_id()<<" "<<st.getName()<<" "<<st.getSurname()<<" "<<st.get_mt1()<<" "<<st.get_mt2()<<" "<<st.get_final()<<endl;
    }


  }
    //Show students below a threshold
  void showBelow(float a){
    int i;
    Student st;
    for (i=0; i<num; i++){
      if(Entries[i].overallScore(weight1,weight2, weightf)<a){
        st=Entries[i];
        cout <<st.get_id()<<" "<<st.getName()<<" "<<st.getSurname()<<" "<<st.get_mt1()<<" "<<st.get_mt2()<<" "<<st.get_final()<<endl;
      }
    }
  }
    //Show students above a threshold
  void showAbove(float a){
    int i;
    Student st;
    for(i=0; i<num; i++){
      if(Entries[i].overallScore(weight1, weight2, weightf)>a){
        st=Entries[i];
        cout <<st.get_id()<<" "<<st.getName()<<" "<<st.getSurname()<<" "<<st.get_mt1()<<" "<<st.get_mt2()<<" "<<st.get_final()<<endl;

      }
    }
  }

    //Change the student score of a given exam
  void changeStudentScore(int id, string exam, int new_score){
    string mt1("mt1");
    string mt2("mt2");
    string final_("final");

    for(int i=0;i<num; i++){
      if(Entries[i].get_id()==id){
        if( (exam.compare(mt1)) == 0){
          Entries[i].set_mt1(new_score);
        }
        else if( (exam.compare(mt2)) == 0){
          Entries[i].set_mt2(new_score);
        }
        else if( (exam.compare(final_)) ==0){
          Entries[i].set_final(new_score);
        }
      }
    }
  }


};





#endif
