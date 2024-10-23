! (println! "Hello")
!("Hello world")


(= (leap $x)
    (if (== (% $x 400) 0)
        (its a leap year)
        (if (== ( % $x 100) 0)
            (its not a leap year)
            (if (== ( % $x 4) 0)
                 (its a leap year)
                 (its not a leap year))))
)

!(leap 1996)
!(leap 2000)
!(leap 1997)


(= (divide_age $age) (/ $age 31557600 )) ;second in a year considering leap year

(= (seconds_to_age $planet $seconds) 
   (case ($planet $seconds)
    (((mercury $_) (( / (divide_age $seconds) 0.2408467) mercury-years))
     ((venus $_) (( / (divide_age $seconds) 0.61519726) venus-years))
     ((earth $_) ((divide_age $seconds) earth-years))
     ((mars $_) ((/ (divide_age $seconds) 1.8808158) mars-years))
     ((jupiter $_) ((/ (divide_age $seconds) 11.862615) jupiter-years))
     ((saturn $_) ((/ (divide_age $seconds) 29.447498) saturn-years))
     ((uranus $_) ((/ (divide_age $seconds) 84.016846) uranus-years))
     ((neptune $_) ((/ (divide_age $seconds) 164.79132) neptune-years))
     ($_ $_) )  
   )
)

(= (calculate_age_on_planet $planet $age) 
   (case ($planet $age)
     (((mercury $_) ((/ $age 0.2408467) mercury years old))    
      ((venus $_) ((/ $age 0.61519726) venus years old))      
      ((earth $_) ($age earth years old))      
      ((mars $_) ((/ $age 1.8808158)  mars years old))       
      ((jupiter $_) ((/ $age 11.862615) jupiter years old))   
      ((saturn $_) ((/ $age 29.447498) saturn years old))   
      ((uranus $_) ((/ $age 84.016846)  uranus years old))    
      ((neptune $_) ((/ $age 164.79132) neptune years old))   
      ($planet $age) )  ;default
   )
)

!(calculate_age_on_planet mars 15)
!(seconds_to_age mercury 1000000000)
!(seconds_to_age venus 1000000000)
!(seconds_to_age earth 1000000000)
!(seconds_to_age mars 1000000000)
!(seconds_to_age jupiter 1000000000)
!(seconds_to_age saturn 1000000000)
!(seconds_to_age uranus 1000000000)
!(seconds_to_age neptune 1000000000)


(= (reverseString $str $acc)
   (if (== $str ()) 
       $acc  ;return the reversed list that has been built so far when the input list is empty
       (reverseString (cdr-atom $str) (cons-atom (car-atom $str) $acc))  
   )
)

(= (reverse $expr) 
   (reverseString $expr ())
)

! (reverse (1 2 3)) 
! (reverse (a b c))  

