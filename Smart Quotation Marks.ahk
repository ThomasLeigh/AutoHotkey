	^2::
	saved := clipboardall
	Send, ^x
	SendInput, {U+201C}%clipboard%{U+201D}
	clipboard := saved
	saved := ""
	Return
	
	^3::
	saved := clipboardall
	Send, ^x
	SendInput, {U+2018}%clipboard%{U+2019}
	clipboard := saved
	saved := ""
	Return
	
	^4::
	Send, {U+2019}
	Return