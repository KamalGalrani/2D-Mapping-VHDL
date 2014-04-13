#include <iostream>
using namespace std;

int main()
{
  for(int i = 255; i>=0; i--)
  {
    cout<<"            "<<1300*(255-i)/255<<" when "<<i<<","<<endl;
  }
}
