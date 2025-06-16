.localvar 2 arguments

:[0]
pushi.e 63
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [12]

:[1]
pushi.e 63
pushenv [11]

:[2]
push.v self.writer
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [4]

:[3]
push.v self.writer
pushi.e -9
push.v [stacktop]self.x
pop.v.v self.wwx
push.v self.writer
pushi.e -9
push.v [stacktop]self.y
pop.v.v self.wwy

:[4]
pushi.e 61
pushenv [6]

:[5]
call.i instance_destroy(argc=0)
popz.v

:[6]
popenv [5]
push.v self.writer
pushi.e -9
pushenv [8]

:[7]
call.i instance_destroy(argc=0)
popz.v

:[8]
popenv [7]
pushi.e 59
pushenv [10]

:[9]
push.v self.remfc
pop.v.v global.fc

:[10]
popenv [9]
push.v global.msc
pushi.e 1
add.i.v
pop.v.v global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[11]
popenv [2]

:[12]
push.v self.fighting
pushi.e 1
cmp.i.v EQ
bf [16]

:[13]
pushi.e 64
pushenv [15]

:[14]
call.i instance_destroy(argc=0)
popz.v

:[15]
popenv [14]

:[16]
pushi.e 59
pushenv [18]

:[17]
call.i instance_destroy(argc=0)
popz.v

:[18]
popenv [17]

:[end]