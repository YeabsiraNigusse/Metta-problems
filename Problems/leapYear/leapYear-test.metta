! (import! &self leapYear)


 ! (assertEqualToResult (leap 1996) (True))
 ! (assertEqualToResult (leap 2000) (True))
 ! (assertEqualToResult (leap 1997) (False))
 ! (assertEqualToResult (leap 1990) (False))