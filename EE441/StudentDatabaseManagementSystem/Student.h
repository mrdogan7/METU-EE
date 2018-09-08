#ifndef STUDENT_H
#define STUDENT_H

#include <iostream>
#include <string>
using namespace std;

class Student{
private:
  string name, surname;
  int id_, mt1, mt2, final_;
  float avg;
public:
  Student(int id_=0, string name="", string surname="", int mt1=0, int mt2=0, int final_=0);
  string getName();
  string getSurname();
  int get_mt1();
  int get_mt2();
  int get_final();
  int get_id();
  void setName(string a);
  void setSurname(string b);
  void set_mt1(int c);
  void set_mt2(int d);
  void set_final(int e);
  void set_id(int f);
    //Overall score of a student
  float overallScore(float w1, float w2, float wf){
    int mt1=get_mt1();
    int mt2=get_mt2();
    int final_=get_final();
    this->avg = (w1*mt1)+(w2*mt2)+(wf*final_);
    return this->avg;
  }
};


    //Constructor
Student::Student(int id_, string name, string surname, int mt1, int mt2, int final_){
  this->id_=id_;
  this->name=name;
  this->surname=surname;
  this->mt1=mt1;
  this->mt2=mt2;
  this->final_=final_;
}
    //Getter functions

string Student::getName() {
  return name;
}

string Student::getSurname() {
  return surname;
}

int Student::get_mt1() {
  return mt1;
}

int Student::get_mt2() {
  return mt2;
}

int Student::get_final() {
  return final_;
}

int Student::get_id() {
  return id_;
}

    //Setter Functions


void Student::setName(string a){
  this->name=a;
}

void Student::setSurname(string b){
  this->surname=b;
}

void Student::set_mt1(int c){
  this->mt1=c;
}

void Student::set_mt2(int d){
  this->mt2=d;
}

void Student::set_final(int e){
  this->final_=e;
}

void Student::set_id(int f){
  this->id_=f;
}



#endif
