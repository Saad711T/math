#include<iostream>
using namespace std;
int main()
{
    int a,b;
    char c;
    cout <<"enter first number :";
    cin >> a;
    cout <<"enter second number :";
    cin >> b;
    cout <<"enter your choice"<< endl;
    cout <<" 1 - Addition"<< endl;
    cout <<" 2 - Multiplication"<< endl;
    cout <<" 3 - Subtraction"<< endl;
    cout <<" 4 - Division"<< endl;
    cin >> c;
    switch(c)
   {
       case'1':
         cout <<"sum is "<< a+b;
         break;
       case'2':
         cout <<"multiplication is "<< a+b;
         break;
       case'3':
         cout <<"subtraction is "<< a-b;
         break;
       case'4':
         cout <<"division is "<< a/b;
         break;
       default:
         cout <<"incorrect choice";
    }
   cout << endl;
   system("PAUSE");
   return 0;
}

//Created by : Saad Almalki