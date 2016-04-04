
size(1200,600);
background(#FFFFFF); //fekete

//menteni kell az logikai függvény bemeneteit mint előző értékeket
int prevalue_in_same_row=0; 
int[] pre_row = new int[1200]; 
int[] temp_pre_row = new int[1200];

int[] col_init = new int[600]; //VERTIKÁLIS INPUT, nem 1200, mert táblázat 1,1 eleme nincs
int[] row_init = new int[1200]; //HORIZ INPUT, nem 600, mert táblázat 1,1 eleme nincs

//initialize the init row and column with random numbers
//row_init[0]=1; row_init[1]=0; row_init[2]=1; row_init[3]=0; row_init[4]=1; row_init[5]=0; row_init[6]=1; row_init[7]=0; row_init[8]=1; row_init[9]=0;
for(int i=0; i<1200; i++)
{
   if( (random(0,10)) < 5 ) row_init[i]=0;
   else row_init[i]=1;
}

//col_init[0]=1; col_init[1]=1; col_init[2]=0; col_init[3]=0; col_init[4]=1; col_init[5]=1; col_init[6]=0; col_init[7]=0; col_init[8]=1; col_init[9]=0;
for(int j=0; j<600; j++)
{
   if( (random(0,10)) < 5 ) col_init[j]=0;
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
    //if( ((prevalue_in_same_row==1)&&(pre_row[oszlop]==1)) || ((prevalue_in_same_row==0)&&(pre_row[oszlop]==0))) 
    if( prevalue_in_same_row == 1)
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