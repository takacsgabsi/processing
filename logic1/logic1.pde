
size(120,60);
background(#FFFFFF); //fehér

int dim1=3;
int dim2=4;
int prevalue_in_same_row=0; 
int[] pre_row = new int[dim1]; 
int[] temp_pre_row = new int[dim1];

int[] col_init = new int[dim2]; //vertical input
int[] row_init = new int[dim1]; //horiz input

//initialize the init row and column with random numbers
for(int i=0; i<dim1; i++)
{
   if( (random(0,1)) < 0.5 ) row_init[i]=0;
   else row_init[i]=1;
}

for(int j=0; j<dim2; j++)
{
   if( (random(0,1)) < 0.5 ) col_init[j]=0;
   else col_init[j]=1;
}

//legelőször a prevalue_in_same_row értéke a col_init első (0.) eleme
prevalue_in_same_row=col_init[0];
//legelőször a pre_row értékei a row init elemei
for(int i=0; i<dim1; i++)
{
  pre_row[i]=row_init[i];
}

for(int sor=0; sor<dim2; sor++) 
{
  for(int oszlop=0; oszlop<dim1; oszlop++)
  {

    if( ((prevalue_in_same_row==1)&&(pre_row[oszlop]==1)) || ((prevalue_in_same_row==0)&&(pre_row[oszlop]==0))) 
    {
      fill(#FFFFFF); //fehér
      ellipse(oszlop*10,sor*10, 5,5); //<>//
      //prevalue_in_same_row=0;
      temp_pre_row[oszlop]=0;
    }
    else 
    {
      fill(#FFFFFF); //fekete
      ellipse(oszlop*10,sor*10, 5, 5); //<>//
      //prevalue_in_same_row=1;
      temp_pre_row[oszlop]=1;
    }
  }
  //pre_row=temp_pre_row;
  for(int i=0; i<dim1; i++)
  {
    pre_row[i]=temp_pre_row[i]; 
  }
}