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
call.i gml_Script_scr_depth(argc=0)
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
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [7]

:[1]
push.v self.x
pushi.e 350
cmp.i.v LT
bf [3]

:[2]
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

:[3]
push.v self.x
pushi.e 250
cmp.i.v LT
bf [5]

:[4]
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

:[5]
push.v self.x
pushi.e 150
cmp.i.v LT
bf [7]

:[6]
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

:[7]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [9]

:[8]
pushbltn.v builtin.room
pushi.e 76
cmp.i.v EQ
b [10]

:[9]
push.e 0

:[10]
bf [end]

:[11]
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
pushi.e 0
pop.v.i self.type

:[end]