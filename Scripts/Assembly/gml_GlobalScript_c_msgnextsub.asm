.localvar 2 arguments
.localvar 720 len 2043
.localvar 107 i 2044
.localvar 721 args 2045
.localvar 723 str 2046

:[0]
b [5]

> gml_Script_c_msgnextsub (locals=4, argc=0)
:[1]
pushbltn.v builtin.argument_count
pop.v.v local.len
pushi.e 0
pop.v.i local.i

:[2]
pushloc.v local.i
pushloc.v local.len
cmp.v.v LT
bf [4]

:[3]
push.i 21858151
setowner.e
pushi.e -15
pushloc.v local.i
conv.v.i
push.v [array]self.argument
pushi.e -7
pushloc.v local.i
conv.v.i
pop.v.v [array]self.args
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [2]

:[4]
pushloc.v local.args
pushi.e 1
conv.i.v
pushi.e -15
pushi.e 0
push.v [array]self.argument
call.i gml_Script_substringargs(argc=3)
pop.v.v local.str
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local.str
push.s "msgnext"@716
conv.s.v
call.i gml_Script_c_cmd(argc=5)
popz.v
exit.i

:[5]
push.i [function]gml_Script_c_msgnextsub
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.c_msgnextsub
popz.v

:[end]