.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.talked
pushi.e 0
pop.v.i self.image_speed
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.con
call.i gml_Script_scr_depth_ch1(argc=0)
popz.v
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.type
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.active
pushi.e 0
pop.v.i self.emotion
push.i 168318
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.beanie
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.beanie
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.beanie
push.v self.x
pushi.e 350
cmp.i.v LT
bf [2]

:[1]
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.beanie
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.beanie
pushi.e 1
pop.v.i self.type

:[2]
push.v self.x
pushi.e 250
cmp.i.v LT
bf [4]

:[3]
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.beanie
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.beanie
pushi.e 2
pop.v.i self.type

:[4]
push.v self.x
pushi.e 150
cmp.i.v LT
bf [end]

:[5]
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.beanie
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.beanie
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.beanie
pushi.e 3
pop.v.i self.type
pushbltn.v builtin.room
pushi.e 341
cmp.i.v EQ
bf [end]

:[6]
pushi.e 4062
conv.i.v
pushi.e 126
conv.i.v
pushi.e 270
conv.i.v
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.hole
pushi.e 1
push.v self.hole
pushi.e -9
pop.v.i [stacktop]self.image_index
push.i 900000
push.v self.hole
pushi.e -9
pop.v.i [stacktop]self.depth

:[end]