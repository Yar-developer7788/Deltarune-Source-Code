.localvar 2 arguments

:[0]
push.v self.hatinit
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 2709
conv.i.v
pushbltn.v builtin.room_height
pushbltn.v builtin.room_width
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.hat
pushi.e 1
pop.v.i self.hatinit

:[2]
pushi.e 868
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [end]

:[3]
push.v self.werewire6
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [7]

:[4]
push.v self.hat
pushi.e -9
pushenv [6]

:[5]
push.v other.werewire6
pushi.e -9
push.v [stacktop]self.y
pushi.e 28
sub.i.v
push.v other.werewire6
pushi.e -9
push.v [stacktop]self.x
pushi.e 20
add.i.v
call.i gml_Script_setxy(argc=2)
popz.v

:[6]
popenv [5]

:[7]
push.v self.werewire7
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [end]

:[8]
push.v self.hat
pushi.e -9
pushenv [10]

:[9]
push.v other.werewire7
pushi.e -9
push.v [stacktop]self.y
pushi.e 28
sub.i.v
push.v other.werewire7
pushi.e -9
push.v [stacktop]self.x
pushi.e 20
add.i.v
call.i gml_Script_setxy(argc=2)
popz.v

:[10]
popenv [9]

:[end]