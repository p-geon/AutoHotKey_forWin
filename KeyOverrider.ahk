; Setting Vim-like Binding
F13 & H::Send,{Blind}{Left}
F13 & J::Send,{Blind}{Down}
F13 & K::Send,{Blind}{Up}
F13 & L::Send,{Blind}{Right}
; Setting Mac-like Binding
F13 & F::Send,{Blind}{Right}
F13 & B::Send,{Blind}{Left}
F13 & N::Send,{Blind}{Down}
F13 & P::Send,{Blind}{Up}
F13 & A::Send,{Blind}{Home}
F13 & E::Send,{Blind}{End}
; Handling Virtual Desktop
F13 & Right::Send, {Blind}#^{Right}	
F13 & Left::Send, {Blind}#^{Left}
F13 & Up::Send, {Blind}#{Tab}
F13 & Down::Send, {Blind}#{Tab}
; WSL Override
;; Ctrl+C
F13 & C::
if  ( WinActive("WSL2-Ubuntu")  ){
	Send, ^C
}else{
	Send,{F13}C
}
return
;; cmd+C  
Ctrl & C::
if  ( WinActive("WSL2-Ubuntu")  ){
	Send, ^+C
}else{
	Send, ^C
}
return
;; cmd+C
Ctrl & V::
if  ( WinActive("WSL2-Ubuntu")  ){
	Send, ^+V
}else{
	Send, ^V
}
return