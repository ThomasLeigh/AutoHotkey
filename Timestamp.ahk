;- Control+Shift+D = <!-- {text} -->
^+D::
 
formattime, hourvar, , HH
formattime, minutevar, , mm
formattime, dayvar, , dd
formattime, monthvar, , MM
formattime, yearvar, , yyyy

ctime:=hourvar . minutevar
m:=minutevar
h:=hourvar
d:=dayvar

if (monthvar=01)
(cmonth:="January")
if (monthvar=02)
(cmonth:="February")
if (monthvar=03)
(cmonth:="March")
if (monthvar=04)
(cmonth:="April")
if (monthvar=05)
(cmonth:="May")
if (monthvar=06)
(cmonth:="June")
if (monthvar=07)
(cmonth:="July")
if (monthvar=08)
(cmonth:="August")
if (monthvar=09)
(cmonth:="September")
if (monthvar=10)
(cmonth:="October")
if (monthvar=11)
(cmonth:="November")
if (monthvar=12)
(cmonth:="December")

cyear:=yearvar
 
if (ctime>=500) and (ctime<=759)
    send ...at some nice morning of %cmonth% %d% :) (%h%:%m%)
	
if (ctime>=800) and (ctime<=1859)
    send ...at some nice day of %cmonth% %d% :) (%h%:%m%)
	
if (ctime>=1900) and (ctime<=2159)
    send ...at some nice evening of %cmonth% %d% :) (%h%:%m%)
	
if (ctime>=2200) and (ctime<=2359)
    send ...at some nice night of %cmonth% %d% :) (%h%:%m%)
	
if (ctime>=0000) and (ctime<=0459)
    send ...at some nice night of %cmonth% %d% :) (%h%:%m%)
	
return