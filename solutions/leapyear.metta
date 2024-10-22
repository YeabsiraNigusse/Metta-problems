(= (leapYear $year)
   (if (== (% $year 400) 0)
       True  
       (if (== (% $year 100) 0)
           False  
           (if (== (% $year 4) 0)
               True  
               False  
           )
       )
   )
)


!(leapYear 1997) ;output False
!(leapYear 1996) ;output True
!(leapYear 2000) ;output True
!(leapYear 400) ;output True

