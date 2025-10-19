

// PRISM Model (Third-oder DTMC) for the S-C-R weather forecating model


dtmc

// Transition probabilities

const double P1 = 135/1000;
const double P2 = 1 - P1;

const double P3 = 65/100;
const double P4 = 25/100;
const double P5 = 1 - P3 - P4;

const double P6 = 65/100;
const double P7 = 1 - P6;

const double P8 = 50/100;
const double P9 = 25/100;
const double P10 = 1 - (P8 + P9);

const double P11 = 325/1000;
const double P12 = 1 - P11;

const double P13 = 80/100;
const double P14 = 1 - P13;

const double P15 = 40/100;
const double P16 = 45/100;
const double P17 = 1 - (P15 + P16);

const double P18 = 20/100;
const double P19 = 1 - P18;

const double P20 = 70/100;
const double P21 = 20/100;
const double P22 = 1 - (P20 + P21);

const double P23 = 75/100;
const double P24 = 1 - P23;

const double P25 = 65/100;
const double P26 = 1 - P25;

const double P27 = 25/100;
const double P28 = 50/100;
const double P29 = 1 - (P27 + P28);

const double P30 = 43/100;
const double P31 = 1 - P30;

const double P32 = 40/100;
const double P33 = 20/100;
const double P34 = 1 - (P32 + P33);

const double P35 = 60/100;
const double P36 = 1 - P35;

const double P37 = 30/100;
const double P38 = 60/100;
const double P39 = 1 - (P37 + P38);

const double P40 = 70/100;
const double P41 = 1 - P40;


module TOWFM1

    x : [0..16] init 0;

// x = 0 <-> (S,S,S), 
// x = 1 <-> (S,S,C), 
// x = 2 <-> (S,C,S), 
// x = 3 <-> (S,C,C), 
// x = 4 <-> (S,C,R), 
// x = 5 <-> (C,S,S), 
// x = 6 <-> (C,S,C), 
// x = 7 <-> (C,C,S), 
// x = 8 <-> (C,C,C), 
// x = 9 <-> (C,C,R),
// x = 10 <-> (C,R,R),
// x = 11 <-> (C,R,C),
// x = 12 <-> (R,R,R),
// x = 13 <-> (R,R,C),
// x = 14 <-> (R,C,R),
// x = 15 <-> (R,C,S),
// x = 16 <-> (R,C,C),

   
// S <-> Sunny, C <-> Cloudy, R <-> Rainy, Sn <-> Snowy

    [] x = 0 -> P2:(x' = 0) + P1:(x' = 1);
    [] x = 1 -> P3:(x' = 2) + P4:(x' = 3) + P5:(x' = 4);    
    [] x = 2 -> P6:(x' = 5) + P7:(x' = 6);
    [] x = 3 -> P8:(x' = 7) + P9:(x' = 8) + P10:(x' = 9);
    [] x = 4 -> P11:(x' = 10) + P12:(x' = 11);
    [] x = 5 -> P13:(x' = 0) + P14:(x' = 1);
    [] x = 6 -> P15:(x' = 3) + P16:(x' = 2) + P17:(x' = 4);
    [] x = 7 -> P18:(x' = 6) + P19:(x' = 5);
    [] x = 8 -> P20:(x' = 7) + P21:(x' = 9) + P22:(x' = 8);
    [] x = 9 -> P23:(x' = 11) + P24:(x' = 10);
    [] x = 10 -> P25:(x' = 12) + P26:(x' = 13);
    [] x = 11 -> P27:(x' = 14) + P28:(x' = 16) + P29:(x' = 15);
    [] x = 12 -> P30:(x' = 12) + P31:(x' = 13);
    [] x = 13 -> P32:(x' = 16) + P33:(x' = 14) + P34:(x' = 15);
    [] x = 14 -> P35:(x' = 10) + P36:(x' = 11);
    [] x = 15 -> P40:(x' = 5) + P41:(x' = 6);
    [] x = 16 -> P37:(x' = 8) + P38:(x' = 7) + P39:(x' = 9);



endmodule

