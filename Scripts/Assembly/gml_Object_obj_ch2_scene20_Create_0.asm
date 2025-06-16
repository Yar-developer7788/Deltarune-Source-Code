.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.con
pushi.e -1
pop.v.i self.stonelancer
pushi.e -1
pop.v.i self.fan_a
pushi.e -1
pop.v.i self.fan_b
pushi.e -5
pushi.e 307
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bt [2]

:[1]
pushi.e -5
pushi.e 307
push.v [array]self.flag
pushi.e 2
cmp.i.v EQ
b [3]

:[2]
push.e 1

:[3]
pop.v.b self.gavepresent
pushi.e 0
pop.v.b self.lancer_stone
pushglb.v global.chapter
pushi.e 2
cmp.i.v NEQ
bf [5]

:[4]
call.i instance_destroy(argc=0)
popz.v
b [end]

:[5]
pushglb.v global.plot
pushi.e 120
cmp.i.v GTE
bf [9]

:[6]
pushi.e -5
pushi.e 356
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [8]

:[7]
pushi.e 1270
conv.i.v
pushi.e 231
conv.i.v
pushi.e 1605
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.lancernpc

:[8]
b [end]

:[9]
pushi.e -1
pop.v.i self.con
call.i gml_Script_scr_losechar(argc=0)
popz.v
pushi.e 276
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [11]

:[10]
pushi.e 276
conv.i.v
call.i instance_destroy(argc=1)
popz.v

:[11]
pushi.e 174
conv.i.v
pushi.e 231
conv.i.v
pushi.e 1184
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.susienpc
pushi.e 0
push.v self.susienpc
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushi.e 0
pop.v.b self.lancer_stone

:[end]