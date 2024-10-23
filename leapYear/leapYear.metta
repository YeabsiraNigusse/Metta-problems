(: leapYear (-> Number Bool))
(= (leapYear $year) 
	(if (== (% $year 4) 0)
		(if (== (% $year 100) 0)
			(if (== (% $year 400) 0)
				True
				False)
			True)
		False)
)

!(assertEqual (leapYear 1996) True)
!(assertEqual (leapYear 2000) True)
!(assertEqual (leapYear 4) True)
!(assertEqual (leapYear 400) True)
!(assertEqual (leapYear 100) False)

