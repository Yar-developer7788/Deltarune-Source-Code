.localvar 2 arguments

:[0]
pushi.e -1
pop.v.i self.con
pushi.e -4
pop.v.i self.cutscene_master
pushi.e 0
pop.v.i self.leaveCounter
pushi.e 0
pop.v.b self.susiewaiting
pushi.e -1
pop.v.i self.nisesusie
pushi.e 0
pop.v.i self.susxpos
pushi.e 0
pop.v.i self.susypos
pushglb.v global.chapter
pushi.e 2
cmp.i.v NEQ
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v
b [end]

:[2]
pushi.e 105
conv.i.v
pushi.e 100
conv.i.v
pushi.e 150
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.alphys
pushi.e 919
push.v self.alphys
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 105
conv.i.v
pushi.e 110
conv.i.v
pushi.e 177
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.alphysbike
pushi.e 1134
push.v self.alphysbike
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e -5
pushi.e 336
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [end]

:[3]
pushi.e 850
conv.i.v
pushi.e 125
conv.i.v
pushi.e 310
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.nisesusie
push.v self.nisesusie
pushi.e -9
pushenv [5]

:[4]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[5]
popenv [4]

:[end]