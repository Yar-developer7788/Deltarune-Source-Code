.localvar 2 arguments

:[0]
pushi.e -1
pop.v.i self.con
pushi.e 0
pop.v.i self.customcon
pushglb.v global.chapter
pushi.e 2
cmp.i.v NEQ
bt [2]

:[1]
pushglb.v global.plot
pushi.e 83
cmp.i.v GTE
b [3]

:[2]
push.e 1

:[3]
bf [5]

:[4]
call.i instance_destroy(argc=0)
popz.v
b [end]

:[5]
call.i gml_Script_scr_losechar(argc=0)
popz.v
pushi.e 276
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [7]

:[6]
pushi.e 276
conv.i.v
call.i instance_destroy(argc=1)
popz.v

:[7]
pushi.e 105
conv.i.v
pushi.e 171
conv.i.v
pushi.e 833
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.berdlynpc
pushi.e 668
push.v self.berdlynpc
pushi.e -9
pop.v.i [stacktop]self.sprite_index

:[end]