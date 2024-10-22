Kirubel Abiyu

MeTTa implementation of functions 
1. (leap-year yr)
    input: year
    return: boolean 
                    True if yr is leap year and 
                    False if not
    yr = 1997 --> False
    yr = 1996 --> True
    yr = 2000 --> True
    yr = 200  --> False

2. Comparison of ages in different Planets

    I know, I know the purpose of the exercise is not about the mathematics invloved in calculating ages in different planets, rather the the demonestration of application of MeTTa language constructs to solve problems.

    But for the sake of full correctness, I raise the following point. The way the problem is presented doesn't make much sense as far as age conversion goes in terms of seconds elapsed.

    Let me explain, if someone spends Xsec in Mars, the same time lapse would be recorded any where else as well, be it Earth or Jupiter because there is not such a thing as Martian seconds so to speak. So, the amount of Earth years corresponding to the elasped time in seconds would be just:

                    (/ X 31557600) Years

    But if the question was given in terms of planetary years, then using the factors for coversion in to Eath years will make perfect sense. Say, if X is Y years old in Martian years X would be :

            (* Y 1.88) Yrs Old in Earth years

    Beacuse Martian years are longer than Earth years, it would take Earth about twice as long to make one revolution around the sun. 

            --> 1 Martian year = ~ 2 Earth years. 

    For the purpose of the exercise I will ignore the correct interpretation and and work it out in the same fashion.

                (* (/ Seconds 31557600) factor) Earth Years
    
3. Reversing elements of an expression
    function: reverse

    Input: (expression of variable length)
    Output: (length variable of expression); 😁
    input --> output
    () --> ()
    (A) --> (A)
    (A B) --> (B A)
    (A B C) --> (C B A)
    (0 1st 2nd 3rd 4th 5th) --> (5th 4th 3rd 2nd 1st 0)