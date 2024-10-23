(= (isLeapYear $year)
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

!(isLeapYear 8)