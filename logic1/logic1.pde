
size(1200,600);
background(#FFFFFF); //fehér

int prevalue_in_same_row=0; 
int[] pre_row = new int[1200]; 
int[] temp_pre_row = new int[1200];

int[] col_init = new int[600]; //vertical input
int[] row_init = new int[1200]; //horiz input

//initialize the init row and column with random numbers
for(int i=0; i<1200; i++)
{
   if( (random(0,1)) < 0.5 ) row_init[i]=0;
   else row_init[i]=1;
}

for(int j=0; j<600; j++)
{
   if( (random(0,1)) < 0.5 ) col_init[j]=0;
   else col_init[j]=1;
}

//legelőször a prevalue_in_same_row értéke a col_init első (0.) eleme
prevalue_in_same_row=col_init[0];
//legelőször a pre_row értékei a row init elemei
pre_row=row_init;


for(int sor=0; sor<600; sor++) 
{
  for(int oszlop=0; oszlop<1200; oszlop++)
  {
    if( ((prevalue_in_same_row==1)&&(pre_row[oszlop]==1)) || ((prevalue_in_same_row==0)&&(pre_row[oszlop]==0))) 
    {
      fill(#FFFFFF); //fehér
      point(oszlop,sor);
      prevalue_in_same_row=0;
      temp_pre_row[oszlop]=0;
    }
    else 
    {
      fill(#000000); //fekete
      point(oszlop,sor);
      prevalue_in_same_row=1;
      temp_pre_row[oszlop]=1;
    }
  }
  pre_row=temp_pre_row;
}