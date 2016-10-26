         BR main;                 Branch to main block
month1:  .BLOCK 2;                Allocate space in memory for month1
day1:    .BLOCK 2;                Allocate space in memory for day1
year1:   .WORD 0;                 Allocate space in memory for year1
year1Up: .WORD 0;

month2:  .BLOCK 2;                Allocate space in memory for month2
day2:    .BLOCK 2;                Allocate space in memory for day2
year2:   .WORD 0;                 Allocate space in memory for year2

yearDiff:.WORD 0;                 Difference between two input years
counter: .WORD 0;                 Counter used in leaploop
totdays: .WORD 4;                 TOTAL NUMBER OF DAYS BETWEEN TWO DATES ||RETURN THIS AT END

four:    .WORD 4;                 4 constant
onehund: .WORD 100;               100 constant
fourhund:.WORD 400;               400 constant
lpyears: .WORD 0;                 The number of leap years inbetween two years

jan:     .WORD 1;                 *********************************************
feb:     .WORD 2;                 Set each month name to corresponding number
mar:     .WORD 3;                 
apr:     .WORD 4;                 
may:     .WORD 5;
jun:     .WORD 6;
jul:     .WORD 7;
aug:     .WORD 8;
sept:    .WORD 9;
oct:     .WORD 10;
nov:     .WORD 11;
dec:     .WORD 12;                **********************************************


up2jan:  .WORD 0;                Days before Jan 1: 0 
up2feb:  .WORD 31;               Jan: 31
up2mar:  .WORD 59;               Jan: 31 + Feb: 28 
up2apr:  .WORD 90;               Jan: 31 + Feb: 28 + Mar: 31
up2may:  .WORD 120;              Jan: 31 + Feb: 28 + Mar: 31 + Apr: 30
up2jun:  .WORD 151;              Jan: 31 + Feb: 28 + Mar: 31 + Apr: 30 + May:31        
up2jul:  .WORD 181;              Jan: 31 + Feb: 28 + Mar: 31 + Apr: 30 + May:31 + Jun: 30
up2aug:  .WORD 212;              Jan: 31 + Feb: 28 + Mar: 31 + Apr: 30 + May:31 + Jun: 30 + Jul: 31
up2sept: .WORD 243;              Jan: 31 + Feb: 28 + Mar: 31 + Apr: 30 + May:31 + Jun: 30 + Jul: 31 + Aug: 31
up2oct:  .WORD 273;              Jan: 31 + Feb: 28 + Mar: 31 + Apr: 30 + May:31 + Jun: 30 + Jul: 31 + Aug: 31 + Sep: 30
up2nov:  .WORD 304;              Jan: 31 + Feb: 28 + Mar: 31 + Apr: 30 + May:31 + Jun: 30 + Jul: 31 + Aug: 31 + Sep: 30 + Oct: 31
up2dec:  .WORD 334;              Jan: 31 + Feb: 28 + Mar: 31 + Apr: 30 + May:31 + Jun: 30 + Jul: 31 + Aug: 31 + Sep: 30 + Oct: 31 + Nov: 30


error:   CHARO 'I',i;             ****************
         CHARO 'N',i;
         CHARO 'P',i;
         CHARO 'U',i;
         CHARO 'T',i;
         CHARO ' ',i;
         CHARO 'E',i;              
         CHARO 'R',i;               Write ERROR
         CHARO 'R',i;               
         CHARO 'O',i;               
         CHARO 'R',i;             *****************
         STOP;


adtojan: LDA totdays,d;           Load total days
         ADDA up2jan,d;           Add number of days in year leading up to Jan (0)
         ADDA day2,d;             Add number of days into month
         STA totdays,d;           Store in totdays
         BR finish;

adtofeb: LDA totdays,d;           Load total days
         ADDA up2feb,d;           Add number of days in year leading up to Feb
         ADDA day2,d;             Add number of days into month
         STA totdays,d;           Store in totdays
         BR finish;

adtomar: LDA totdays,d;           Load total days
         ADDA up2mar,d;           Add number of days in year leading up to Mar
         ADDA day2,d;             Add number of days into month
         STA totdays,d;           Store in totdays
         BR finish;

adtoapr: LDA totdays,d;           Load total days
         ADDA up2apr,d;           Add number of days in year leading up to Apr
         ADDA day2,d;             Add number of days into month
         STA totdays,d;           Store in totdays
         BR finish;

adtomay: LDA totdays,d;           Load total days
         ADDA up2may,d;           Add number of days in year leading up to May
         ADDA day2,d;             Add number of days into month
         STA totdays,d;           Store in totdays    
         BR finish;
  
adtojun: LDA totdays,d;           Load total days
         ADDA up2jun,d;           Add number of days in year leading up to June
         ADDA day2,d;             Add number of days into month
         STA totdays,d;           Store in totdays
         BR finish;

adtojul: LDA totdays,d;           Load total days
         ADDA up2jul,d;           Add number of days in year leading up to July
         ADDA day2,d;             Add number of days into month
         STA totdays,d;           Store in totdays
         BR finish;

adtoaug: LDA totdays,d;           Load total days
         ADDA up2aug,d;           Add number of days in year leading up to August
         ADDA day2,d;             Add number of days into month
         STA totdays,d;           Store in totdays
         BR finish;

adtosept:LDA totdays,d;           Load total days
         ADDA up2sept,d;          Add number of days in year leading up to September
         ADDA day2,d;             Add number of days into month
         STA totdays,d;           Store in totdays
         BR finish;

adtooct: LDA totdays,d;           Load total days
         ADDA up2oct,d;           Add number of days in year leading up to October
         ADDA day2,d;             Add number of days into month
         STA totdays,d;           Store in totdays
         BR finish;

adtonov: LDA totdays,d;           Load total days
         ADDA up2nov,d;           Add number of days in year leading up to November
         ADDA day2,d;             Add number of days into month
         STA totdays,d;           Store in totdays
         BR finish;

adtodec: LDA totdays,d;           Load total days
         ADDA up2dec,d;           Add number of days in year leading up to Feb
         ADDA day2,d;             Add number of days into month
         STA totdays,d;           Store in totdays
         BR finish;               *****************************************************************


subjan:  LDA totdays,d;           Load total days
         SUBA up2jan,d;           Add number of days in year leading up to Jan (0)
         SUBA day1,d;             Add number of days into month
         STA totdays,d;           Store in totdays
         BR mon2Chk;

subfeb:  LDA totdays,d;           Load total days
         SUBA up2feb,d;           Add number of days in year leading up to Feb
         SUBA day1,d;             Add number of days into month
         STA totdays,d;           Store in totdays
         BR mon2Chk;

submar:  LDA totdays,d;           Load total days
         SUBA up2mar,d;           Add number of days in year leading up to Mar
         SUBA day1,d;             Add number of days into month
         STA totdays,d;           Store in totdays
         BR mon2Chk;

subapr:  LDA totdays,d;           Load total days
         SUBA up2apr,d;           Add number of days in year leading up to Apr
         SUBA day1,d;             Add number of days into month
         STA totdays,d;           Store in totdays
         BR mon2Chk;

submay:  LDA totdays,d;           Load total days
         SUBA up2may,d;           Add number of days in year leading up to May
         SUBA day1,d;             Add number of days into month
         STA totdays,d;           Store in totdays
          BR mon2Chk;
      
subjun:  LDA totdays,d;           Load total days
         SUBA up2jun,d;           Add number of days in year leading up to June
         SUBA day1,d;             Add number of days into month
         STA totdays,d;           Store in totdays
          BR mon2Chk;             

subjul:  LDA totdays,d;           Load total days
         SUBA up2jul,d;           Add number of days in year leading up to July
         SUBA day1,d;             Add number of days into month
         STA totdays,d;           Store in totdays
         BR mon2Chk;

subaug:  LDA totdays,d;           Load total days
         SUBA up2aug,d;           Add number of days in year leading up to August
         SUBA day1,d;             Add number of days into month
         STA totdays,d;           Store in totdays
         BR mon2Chk;

subsept: LDA totdays,d;           Load total days
         SUBA up2sept,d;          Add number of days in year leading up to September
         SUBA day1,d;             Add number of days into month
         STA totdays,d;           Store in totdays
         BR mon2Chk;

suboct:  LDA totdays,d;           Load total days
         SUBA up2oct,d;           Add number of days in year leading up to October
         SUBA day1,d;             Add number of days into month
         STA totdays,d;           Store in totdays
         BR mon2Chk;

subnov:  LDA totdays,d;           Load total days
         SUBA up2nov,d;           Add number of days in year leading up to November
         SUBA day1,d;             Add number of days into month
         STA totdays,d;           Store in totdays
         BR mon2Chk;

subdec:  LDA totdays,d;           Load total days
         SUBA up2dec,d;           Add number of days in year leading up to Feb
         SUBA day1,d;             Add number of days into month
         STA totdays,d;           Store in totdays
         BR mon2Chk;


addyear: LDA counter,d;           Load counter to Accumulator 
         ADDA 1,i;                Increment accumulator by 1
         STA counter,d;           Store incremented value in counter
         LDA totdays,d;               Load total days
         ADDA 365,i;                  Add 365 days because year increased by 1
         STA totdays,d;
         BR leaploop;             Begin leap year loop check again

leapplus:LDA lpyears,d;           Load lpyears into accumulator
         ADDA 1,i;                Increment accumulator by 1
         STA lpyears,d;           Store incremented number in lpyears
         LDA totdays,d;               Load total days
         ADDA 1,i;                  Add 1 day because we added 1 leap year
         STA totdays,d;
         BR addyear;

hdCkPrep:LDA year1,d;             Update year before each one hundred check
         ADDA counter,d;
         STA year1Up,d;
         BR onehdChk;

fhCkPrep:LDA year1,d;             Update year before each four hundred check
         ADDA counter,d;
         STA year1Up,d;
         BR forhdChk;

main:    DECI month1,d;           Read input to month1
         LDA month1,d;
         BRLE error;              Check if valid input
         DECI day1,d;             Read input to day1
         LDA day1,d;
         BRLE error;              Check if valid input
         DECI year1,d;            Read input to year1
         LDA year1,d;
         BRLT error;              Check if valid input

         DECI month2,d;           Read input to month2
         LDA month2,d;
         BRLE error;              Check if valid input
         DECI day2,d;             Read input to day2
         LDA day2,d;
         BRLE error;              Check if valid input
         DECI year2,d;            Read input to year2
         LDA year2,d;        
         BRLT error;              Check if valid input

subYear: LDA year2,d;             Load year2 into Accumulator
         SUBA year1,d;            Subtract year1 from Accumulator
         STA yearDiff,d;          Store difference in years in yearDiff

leaploop:LDA counter,d;           Load counter to Accumulator
         SUBA yearDiff,d;         Subtract yearDiff from Accumultaor
         BRGT mon1Chk;            Leave loop and begin calculating months

updateYR:LDA year1,d;
         ADDA counter,d;
         STA year1Up,d;                  

fourChk: LDA year1Up,d;           Load year1 into accumulator 
         SUBA four,d;             Subtract 4 from accumulator
         STA year1Up,d;           Update year1Up with new number
         BRGT fourChk;            If accumulator is greater than zero, begin loop again
         BREQ hdCkPrep;           If accumulator is equal to zero, go to 100Chk 
         BRLT addyear;            If accumulator is less than zero, move to next year in leap loop. Do not increase leap year count.
          
              
onehdChk:LDA year1Up,d;           Load year1 into accumulator
         SUBA onehund,d;          subtract 100 from accumulator
         STA year1Up,d;           Store updated year in Accumulator
         BRGT onehdChk;           If accumulator is greater than 0, begin 100 check loop again
         BREQ fhCkPrep;           If accumulator is equal to 0, go to 400 Check 
         BRLT leapplus;           If accumulator is less than 0, increment leap year continue leap loop


forhdChk:LDA year1Up,d;           Load year1 into accumulator
         SUBA fourhund,d;         subtract 400 from year
         STA year1Up,d;           Store difference
         BRGT forhdChk;           If A great than zero, run four hundred check again
         BREQ leapplus;           If A = 0,year is leap year, jump to leapplus function.
         BRLT addyear;            If A is less than zero, year is not leap year, jump to addyear function

mon1Chk: LDA month1,d;            ***********************************************************************
         CPA jan,d;               Load month1 into the accumulator
         BREQ subjan;                 Compare against each month
         CPA feb,d;                       
         BREQ subfeb;                 Once month is identified 
         CPA mar,d;                       move to function that subtracts days leading up to month
         BREQ submar;              
         CPA apr,d;               
         BREQ subapr;
         CPA may,d;
         BREQ submay;
         CPA jun,d;
         BREQ subjun;
         CPA jul,d;
         BREQ subjul;
         CPA aug,d;
         BREQ subaug;
         CPA sept,d;
         BREQ subsept;
         CPA oct,d;
         BREQ suboct;
         CPA nov,d;
         BREQ subnov;
         CPA dec,d;
         BREQ subdec;             *************************************************************************

mon2Chk: LDA month2,d;            Load month2 into accumulator 
         CPA jan,d;                   Compare against each month
         BREQ adtojan; 
         CPA feb,d;                   Once month is identified
         BREQ adtofeb;                    move to function that adds days all days leading up to month
         CPA mar,d;               
         BREQ adtomar;              
         CPA apr,d;               
         BREQ adtoapr;
         CPA may,d;
         BREQ adtomay;
         CPA jun,d;
         BREQ adtojun;
         CPA jul,d;
         BREQ adtojul;
         CPA aug,d;
         BREQ adtoaug;
         CPA sept,d;
         BREQ adtosept;
         CPA oct,d;
         BREQ adtooct;
         CPA nov,d;
         BREQ adtonov;
         CPA dec,d;
         BREQ adtodec;            **************************************************************************
         
 
         
         
finish:  LDA totdays,d;
         SUBA 365,i;              Account for last loop in Leap Loop
         STA totdays,d;

         CHARO 'T',i; 
         CHARO 'h',i;
         CHARO 'e',i;
         CHARO 'r',i;
         CHARO 'e',i;
         CHARO ' ',i;
         CHARO 'a',i;
         CHARO 'r',i;
         CHARO 'e',i;
         CHARO ' ',i;
         DECO totdays,d;
         CHARO ' ',i;
         CHARO 'd',i;
         CHARO 'a',i;
         CHARO 'y',i;
         CHARO 's',i;
         CHARO ' ',i;
         CHARO 'b',i;
         CHARO 'e',i;
         CHARO 't',i;
         CHARO 'w',i;
         CHARO 'e',i;
         CHARO 'e',i;
         CHARO 'n',i;
         CHARO ' ',i;
         DECO month1,d;           Write month1
         CHARO 0x002f,i;          Write slash 
         DECO day1, d;            Write day1
         CHARO 0x002f,i;          Write slash
         DECO year1,d;            Write year1
         CHARO 0x0020,i;          Write space
         CHARO 'a',i;
         CHARO 'n',i;
         CHARO 'd',i;
         CHARO ' ',i;
         DECO month2,d;           Write month2
         CHARO 0x002f,i;          Write slash
         DECO day2,d;             Write day2
         CHARO 0x002f,i;          Write slash
         DECO year2,d;            Write year2

         STOP;                    Stop processing
         .END;                    End of program