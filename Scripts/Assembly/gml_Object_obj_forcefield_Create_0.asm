.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.myinteract
push.v self.image_xscale
pushi.e 2
cmp.i.v LT
bf [2]

:[1]
pushi.e 2
pop.v.i self.image_xscale

:[2]
push.v self.image_yscale
pushi.e 2
cmp.i.v LT
bf [4]

:[3]
pushi.e 2
pop.v.i self.image_yscale

:[4]
push.i 68097
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.alarm
pushi.e 0
pop.v.i self.siner
pushi.e 1
pop.v.i self.basic
pushi.e 0
pop.v.i self.disable
pushi.e 2
pop.v.i self.f
pushi.e 0
pop.v.i self.sold
pushi.e 0
pop.v.i self.black_override
pushi.e 0
pop.v.i self.stayVisible
pushi.e 0
pop.v.i self.skip
pushi.e 0
pop.v.i self.ignorealpha
pushbltn.v builtin.room
pushi.e 134
cmp.i.v NEQ
bf [6]

:[5]
push.i 900000
pop.v.i self.depth

:[6]
push.v self.disableflag
pushi.e 0
cmp.i.v GT
bf [9]

:[7]
pushi.e -5
push.v self.disableflag
conv.v.i
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
call.i instance_destroy(argc=0)
popz.v
exit.i

:[9]
push.v self.disableplot
pushi.e 0
cmp.i.v GT
bf [12]

:[10]
pushglb.v global.plot
push.v self.disableplot
cmp.v.v GTE
bf [12]

:[11]
call.i instance_destroy(argc=0)
popz.v
exit.i

:[12]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [end]

:[13]
pushbltn.v builtin.room
pushi.e 94
cmp.i.v EQ
bf [15]

:[14]
pushi.e 0
pop.v.i self.visible
pushi.e 298
conv.i.v
push.v self.y
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[15]
pushbltn.v builtin.room
pushi.e 134
cmp.i.v EQ
bf [18]

:[16]
pushi.e 1
pop.v.i self.stayVisible
pushi.e 5000
pop.v.i self.depth
pushi.e -5
pushi.e 368
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [18]

:[17]
call.i instance_destroy(argc=0)
popz.v

:[18]
pushbltn.v builtin.room
pushi.e 181
cmp.i.v EQ
bf [end]

:[19]
pushi.e 1
pop.v.i self.stayVisible

:[end]