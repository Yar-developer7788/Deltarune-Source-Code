.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.skip
pushi.e 1
pop.v.b self.flippable
pushi.e 0
pop.v.b self.flip
pushi.e 0
pop.v.i self.flipcon
pushi.e 0
pop.v.b self.flipped
push.d 0.8
pop.v.d self.flipfactor
pushi.e 0
pop.v.b self.isswitch
pushi.e 0
pop.v.b self.switchflipped
pushi.e 0
pop.v.i self.extflag
pushi.e 0
pop.v.b self.decorative
pushi.e 1
pop.v.i self.dontshine
pushi.e 0
pop.v.i self.alphaer
pushi.e 0
pop.v.i self.imagespeed
push.v self.sprite_index
pop.v.v self.spriteindex1
push.v self.sprite_index
pop.v.v self.spriteindex2
pushi.e 0
pop.v.i self.image_speed
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
call.i gml_Script_scr_depth(argc=0)
popz.v
push.v self.depth
pushi.e 1000
add.i.v
pop.v.v self.depth
pushi.e 1
pop.v.i self.active
pushi.e 0
pop.v.i self.flag
pushi.e 0
pop.v.i self.laughtimer
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.flashamt
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.init
pushi.e 0
pop.v.i self.type
pushi.e 1
pop.v.i self.type
pushi.e 0
pop.v.i self.movetype
pushi.e 0
pop.v.i self.trackpos
pushi.e -4
pop.v.i self.shine
pushi.e 0
pop.v.b self.shine_init
pushbltn.v builtin.room
pushi.e 168
cmp.i.v EQ
bf [end]

:[1]
push.v self.x
pushi.e 820
cmp.i.v EQ
bf [3]

:[2]
push.v self.y
pushi.e 960
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
push.s "treasureswitch"@20335
pop.v.s self.extflag
pushi.e 1
pop.v.b self.isswitch
pushi.e -5
pushi.e 398
push.v [array]self.flag
pop.v.v self.dontshine

:[6]
push.v self.x
pushi.e 200
cmp.i.v EQ
bf [8]

:[7]
push.v self.y
pushi.e 560
cmp.i.v EQ
b [9]

:[8]
push.e 0

:[9]
bf [end]

:[10]
push.s "fireswitch"@20336
pop.v.s self.extflag
pushi.e 2929
pop.v.i self.spriteindex1
pushi.e 2923
pop.v.i self.spriteindex2
push.v self.spriteindex1
pop.v.v self.sprite_index
pushi.e 1
pop.v.b self.isswitch
pushi.e -5
pushi.e 399
push.v [array]self.flag
pop.v.v self.dontshine
pushi.e -5
pushi.e 399
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [end]

:[11]
push.v self.spriteindex2
pop.v.v self.sprite_index

:[end]