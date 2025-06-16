.localvar 2 arguments
.localvar 12223 __sndcount 3839

:[0]
b [8]

> gml_Script_scr_debug_soundboard (locals=1, argc=0)
:[1]
call.i gml_Script_scr_debug(argc=0)
conv.v.b
bf [7]

:[2]
pushi.e 0
pop.v.i local.__sndcount

:[3]
pushloc.v local.__sndcount
pushbltn.v builtin.argument_count
pushi.e 1
add.i.v
cmp.v.v LT
bf [7]

:[4]
pushloc.v local.__sndcount
call.i string(argc=1)
call.i ord(argc=1)
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [6]

:[5]
pushi.e -15
pushloc.v local.__sndcount
conv.v.i
push.v [array]self.argument
call.i gml_Script_snd_play(argc=1)
popz.v

:[6]
push.v local.__sndcount
push.e 1
add.i.v
pop.v.v local.__sndcount
b [3]

:[7]
exit.i

:[8]
push.i [function]gml_Script_scr_debug_soundboard
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_debug_soundboard
popz.v

:[end]