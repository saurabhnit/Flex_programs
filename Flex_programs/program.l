#include<sys/types.h>
#include<unistd.h>
#include<time.h>
#include<stdio.h>
#include<stdlib.h>
#include<wait.h>
int m=0,k=0;
int max(int l,int r, int a[])
{
	int mid,i,n,pidl,pidr,m1=0,m2=0,ID;k++;
	n=r-l;
	ID=getpid();
	if(n<=10 || l>=r)
	{
		m=a[l];ID+=k;		
		for(i=l;i<=r;i++)
		{
			if(a[i]>m)
			m=a[i];
		}
		printf("Max value: %d  Process ID: %d \n",m,ID);
		return m;
	}
	else if(n>10)
	{
		mid=(l+r+1)/2;
		if(pidl=fork())
		{
			m1=max(l,mid,a);
		}
		else exit(0);	
		if(pidr=fork())
		{
			m2=max(mid+1,r,a);
		}
		else exit(0);
		return (m1>m2?m1:m2);
	}
}
int main()
{
	int i,n,a[100],mid,l=0,r,maxi=0;
	//int *m=&maxi;
	printf("Enter n: ");
	scanf("%d",&n);
	r=n-1;
	for(i=0;i<n;i++)
	a[i]=rand()%127;
	for(i=0;i<n;i++)
	printf("%d ",a[i]);
	printf("\n");
	maxi=max(l,r,a);
	printf("Maximum value in the array: %d\n",maxi);
	return 0;
}

	
