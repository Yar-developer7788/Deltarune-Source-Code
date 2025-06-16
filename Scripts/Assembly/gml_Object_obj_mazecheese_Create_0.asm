.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.image_speed
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.con
pushi.e 1
pop.v.i self.type
pushi.e 0
pop.v.i self.read
pushi.e 0
pop.v.i self.splatnoise
call.i gml_Script_scr_depth(argc=0)
popz.v
push.v self.x
pushi.e 800
cmp.i.v LT
bf [2]

:[1]
pushi.e 1
pop.v.i self.type
b [3]

:[2]
pushi.e 2
pop.v.i self.type

:[3]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
pushi.e -5
pushi.e 310
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
b [6]

:[5]
push.e 0

:[6]
bf [8]

:[7]
pushi.e 1
pop.v.i self.image_index
pushi.e 4
pop.v.i self.type

:[8]
pushi.e -5
pushi.e 384
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [10]

:[9]
push.v self.type
pushi.e 2
cmp.i.v EQ
b [11]

:[10]
push.e 0

:[11]
bf [13]

:[12]
pushi.e 1
pop.v.i self.image_index
pushi.e 4
pop.v.i self.type

:[13]
pushbltn.v builtin.room
pushi.e 144
cmp.i.v EQ
bf [end]

:[14]
pushi.e 62
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.fallcon
pushi.e 2
pop.v.i self.type

:[end]