/*
Utkarsh Dviwedi 2019
Principles of Embedded Software Fall 2019
Project 1 Program 2

Question
Write a program that uses a logical expression that tests whether a given character code is a
lower case [97-122]
upper case [65-90]
digit [48-57]
white space (like null, backspace, space, tabs, etc.) []
or a special character (like ! or >) in ASCII.   []

References
https://stackoverflow.com/questions/6660145/convert-ascii-number-to-ascii-character-in-c
https://en.wikipedia.org/wiki/ASCII
*/

#include <stdio.h>
#include <stdlib.h>

//Function Prototype
void TypeDetector (int Ascii,char c_Ascii);


int main()
{
   int Ascii,i;
   char test;

   printf("Enter the Ascii Value : ");
   scanf("%d", &Ascii);
   char c_Ascii = Ascii;

   TypeDetector(Ascii,c_Ascii);

   int Ascii_Vals[] = {66,114,117,99,101,32,83,97,121,115,32,72,105,33,7,9,50,48,49,57,256};
   int Vals_count = ((sizeof(Ascii_Vals))/(sizeof(Ascii_Vals[0])));
   printf("\n %d",Vals_count);

   for (i=0;i<=Vals_count;i++)
   {
       c_Ascii = Ascii_Vals[i];
       TypeDetector(Ascii_Vals[i],c_Ascii);
   }


return 0;
}

//Function to Detect the Ascii symbol for an int
void TypeDetector (int Ascii,char c_Ascii)
{
    //For Lowercase Characters
     if (Ascii >= 97 && Ascii <= 122 )
   {
     printf("\nCODE =%d     Type = Lowercase    Ascii Symbol =%c \n",Ascii,c_Ascii);
   }

   //For digits
   else if (Ascii >= 48 && Ascii <= 57 )
   {
     printf("\nCODE =%d     Type = Number    Ascii Symbol =%c \n",Ascii,c_Ascii);
   }

   //For Uppercase Characters
   else if (Ascii >= 65 && Ascii <= 90 )
   {
     printf("\nCODE =%d     Type = Uppercase    Ascii Symbol =%c \n",Ascii,c_Ascii);
   }

   //For Invalid Characters
   else if (Ascii > 127  )
   {
     printf("\nCODE =%d     Type= Invalid character ASCII symbols have to between [0-126]   \n",Ascii);
   }

   else if ( (Ascii== 20) || ((Ascii <= 15 && Ascii >=0 )) )
   {
      printf("\nCODE =%d     Type= Space or Non Printable Character    Ascii Symbol =%c \n",Ascii,c_Ascii);
   }

   //For Special Characters
   else
   {
     printf("\nCODE =%d     Type= Special Character    Ascii Symbol =%c \n",Ascii,c_Ascii);
   }

}
