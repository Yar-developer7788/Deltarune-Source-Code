.localvar 2 arguments
.localvar 723 str 4649
.localvar 10706 result 4650
.localvar 107 i 4651
.localvar 12131 ch 4652
.localvar 12130 lastch 4653

:[0]
b [13]

> gml_Script_string_to_ascii_from_full_width_ch1 (locals=5, argc=1)
:[1]
push.v arg.argument0
pop.v.v local.str
push.s ""@157
pop.v.s local.result
pushi.e 1
pop.v.i local.i

:[2]
pushloc.v local.i
pushloc.v local.str
call.i string_length(argc=1)
cmp.v.v LTE
bf [11]

:[3]
pushloc.v local.i
pushloc.v local.str
call.i string_char_at(argc=2)
call.i ord(argc=1)
pop.v.v local.ch
pushloc.v local.ch
push.i 65281
cmp.i.v GTE
bf [5]

:[4]
pushloc.v local.ch
push.i 65374
cmp.i.v LTE
b [6]

:[5]
push.e 0

:[6]
bf [8]

:[7]
push.v local.ch
push.i 65248
sub.i.v
pop.v.v local.ch
b [10]

:[8]
pushloc.v local.ch
pushi.e 12288
cmp.i.v EQ
bf [10]

:[9]
pushi.e 32
pop.v.i local.ch

:[10]
pushloc.v local.ch
call.i chr(argc=1)
pop.v.v local.lastch
push.v local.result
pushloc.v local.lastch
add.v.v
pop.v.v local.result
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [2]

:[11]
pushloc.v local.result
ret.v

:[12]
exit.i

:[13]
push.i [function]gml_Script_string_to_ascii_from_full_width_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.string_to_ascii_from_full_width_ch1
popz.v

:[end]