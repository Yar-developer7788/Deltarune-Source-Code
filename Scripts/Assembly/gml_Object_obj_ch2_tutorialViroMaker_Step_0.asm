.localvar 2 arguments

:[0]
pushi.e -5
pushi.e 438
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v other.havenoelle
pushi.e 1
cmp.b.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
pushi.e 868
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[5]
pushbltn.v builtin.room
pushi.e 127
cmp.i.v EQ
bf [7]

:[6]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 438
pop.v.v [array]self.flag

:[7]
pushbltn.v builtin.room
pushi.e 124
cmp.i.v EQ
bf [9]

:[8]
pushi.e 2
conv.i.v
pushi.e -5
pushi.e 438
pop.v.v [array]self.flag

:[9]
push.s "global.flag[438]="@37773
pushi.e -5
pushi.e 438
push.v [array]self.flag
call.i string(argc=1)
add.v.s
call.i gml_Script_debug_message(argc=1)
popz.v
call.i gml_Script_scr_tempsave(argc=0)
popz.v

:[end]