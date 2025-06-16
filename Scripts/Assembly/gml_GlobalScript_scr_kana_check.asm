.localvar 2 arguments
.localvar 31 kanafound 16
.localvar 33 ___stringlength 17
.localvar 34 ___i 18

:[0]
b [8]

> gml_Script_scr_kana_check (locals=3, argc=1)
:[1]
pushi.e 0
pop.v.i local.kanafound
push.v arg.argument0
call.i string_length(argc=1)
pop.v.v local.___stringlength
pushi.e 1
pop.v.i local.___i

:[2]
pushloc.v local.___i
pushloc.v local.___stringlength
cmp.v.v LTE
bf [6]

:[3]
pushloc.v local.___i
push.v arg.argument0
call.i string_char_at(argc=2)
call.i ord(argc=1)
pushi.e 12352
cmp.i.v GTE
bf [5]

:[4]
pushi.e 1
pop.v.i local.kanafound
b [6]

:[5]
push.v local.___i
push.e 1
add.i.v
pop.v.v local.___i
b [2]

:[6]
pushloc.v local.kanafound
ret.v

:[7]
exit.i

:[8]
push.i [function]gml_Script_scr_kana_check
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_kana_check
popz.v

:[end]