/******************************
 Author : Akshay Dongare
 Date : 20/03/2019
*****************************/

#include <stdio.h>
#define MAX 500
int main(){
    
    int n, k;
    int bat[MAX], bat_cnt, max_diff = -1;
    int i, j, temp;
    
    printf("Enter n,k:");
    scanf("%d %d" , &n , &k);
    bat_cnt = 2*n*k;
    
    printf("\nEnter batteries powers :");
    for(i=0;i<bat_cnt;i++)
        scanf("%d",&bat[i]);
    
    //sorting batteries values
    for (i = 0; i < bat_cnt; ++i)
        for (j = i + 1; j < bat_cnt; ++j)
            if (bat[i] > bat[j])
                temp =  bat[i], bat[i] = bat[j], bat[j] = temp;
    
    //actual code to find out d
    for(i=0;i<n*2;i++)
        if((bat[++i]-bat[i-1]) > max_diff)
            max_diff = bat[i]-bat[i-1];
            
    printf("\nd = %d",max_diff);
    
}

/************************
Input : 
2 2
3 1 3 3 3 3 3 3
Output : 
Enter n,k:
Enter batteries powers :
d = 2

Input :
2 3
1 2 3 4 5 6 7 8 9 10 11 12
Output :
Enter n,k:
Enter batteries powers :
d = 1
************************/
