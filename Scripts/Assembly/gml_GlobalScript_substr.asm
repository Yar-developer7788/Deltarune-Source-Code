.localvar 2 arguments
.localvar 723 str 3599
.localvar 773 pos 3600
.localvar 720 len 3601

:[0]
b [11]

> gml_Script_substr (locals=3, argc=0)
:[1]
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v local.str
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v local.pos
pushloc.v local.pos
pushi.e 0
cmp.i.v LT
bf [3]

:[2]
pushloc.v local.str
call.i gml_Script_strlen(argc=1)
pushi.e 1
add.i.v
pushloc.v local.pos
add.v.v
pop.v.v local.pos

:[3]
pushbltn.v builtin.argument_count
pushi.e 2
cmp.i.v EQ
bf [5]

:[4]
pushloc.v local.str
call.i gml_Script_strlen(argc=1)
pushloc.v local.pos
sub.v.v
pushi.e 1
add.i.v
pop.v.v local.len
b [6]

:[5]
pushi.e -15
pushi.e 2
push.v [array]self.argument
pop.v.v local.len

:[6]
pushloc.v local.len
pushi.e 0
cmp.i.v GT
bf [9]

:[7]
pushloc.v local.len
pushloc.v local.pos
pushloc.v local.str
call.i string_copy(argc=3)
ret.v

:[8]
b [10]

:[9]
push.s ""@157
conv.s.v
ret.v

:[10]
exit.i

:[11]
push.i [function]gml_Script_substr
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.substr
popz.v

:[end]