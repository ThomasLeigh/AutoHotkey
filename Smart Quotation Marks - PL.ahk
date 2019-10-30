;- Ctrl+2 = <!-- {wrap selected text with „”} -->
^2::
saved := clipboardall
Send, ^x
SendInput, {U+201E}%clipboard%{U+201D}
clipboard := saved
saved := ""
Return
	
;- Ctrl+3 = <!-- {wrap selected text with ‚’} -->
^3::
saved := clipboardall
Send, ^x
SendInput, {U+201A}%clipboard%{U+2019}
clipboard := saved
saved := ""
Return
	
;- Ctrl+4 = <!-- {insert the smart apostrophe ’} -->
^4::
Send, {U+2019}
Return