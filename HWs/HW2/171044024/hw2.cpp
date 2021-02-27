#include <iostream>

using std::cin;
using std::cout;
using std::endl;

#define MAX_SIZE 16

int CheckSumPossibility(int num, int arr[], int size)
{  
    int returnVal;
    int cur;
    int rest;
  
    if(num == 0) {
        returnVal = 1;
    } else if(size == 0 || num < 0) {
        returnVal = 0;
    } else {
        cur = CheckSumPossibility(num-arr[size-1], arr, size-1);
		returnVal = cur;
        
		if(cur) {
            cout << arr[size-1] << " ";
			return returnVal;
        }

        rest = CheckSumPossibility(num, arr, size-1);
        returnVal = cur || rest;
    }
    
    return returnVal;
}

int main()
{
	int arraySize;
	int arr[MAX_SIZE];
	int num;
	int returnVal;
	
	cout << "Array Size: ";
	cin >> arraySize;

	cout << "Number: ";
	cin >> num;
	
	cout << "Sequence: " << endl;
	for(int i = 0; i < arraySize; ++i)
	{
		cin >> arr[i];
	}
	
	returnVal = CheckSumPossibility(num, arr, arraySize);

	if(returnVal == 1)
	{
		cout << "\nPossible!" << endl;
	}
	else
	{
		cout << "\nNot possible!" << endl;
	}

	return 0;
}