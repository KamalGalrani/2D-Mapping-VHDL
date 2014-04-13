#include <iostream>
#include <cmath>
using namespace std;

int main()
{
float DL = 1.746031746; //in mm
float R  = 200;         //in mm
cout<<"library ieee;\nuse ieee.std_logic_1164.all;\nuse ieee.numeric_std.all;\n\nentity D_Lookup is\n  port(\n      THETA2 : in  integer range -360 to 360;\n      DX     : out integer range -15 to 15;\n      DY     : out integer range -15 to 15;\n      DT     : out integer range 0 to 7\n      );\nend entity;\n\n";

cout<<"architecture main of D_Lookup is\nsignal theta2_a         : integer range 0 to 360;\nsignal theta2_r         : integer range 0 to 180;\nsignal neg_dx, neg_dy   : std_logic := '0';\nsignal dx_buff, dy_buff : integer range 0 to 15;\nbegin\n  DT <= "<<round(DL*360/(R*3.14159265))<<";\n  theta2_r <= abs(THETA2) when ( abs(THETA2) <= 180 )\n                      else 360 - abs(THETA2);\n\n  DX       <= dx_buff     when ( abs(THETA2) <= 180 )\n                      else -1*dx_buff;\n\n  DY       <= dy_buff      when ( THETA2 >= 0 )\n                      else -1*dy_buff;\n\nwith theta2_r select\ndy_buff <=  0 when 180,\n";
//FOR LOOP FOR Y LOOKUP
for(int i = 179; i>=0; i--)
{
  cout<<"            "<<round(5*DL*cos((float)(3.14159265*i)/360))<<" when "<<i<<","<<endl;
}
cout<<"            "<<round(5*DL)<<" when others;\n\n";

cout<<"with theta2_r select\ndx_buff <=  0 when 0,\n";
//FOR LOOP FOR Y LOOKUP
for(int i = 1; i<=180; i++)
{
  cout<<"            "<<round(5*DL*sin((float)(3.14159265*i)/360))<<" when "<<i<<","<<endl;
}
cout<<"            0 when others;\n\n";

cout<<"end architecture;\n";
return 0;
}
