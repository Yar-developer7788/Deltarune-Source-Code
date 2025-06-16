.localvar 2 arguments

:[0]
call.i gml_Script_scr_depth_ch1(argc=0)
popz.v
pushi.e 0
pop.v.i self.image_speed
pushglb.v global.darkzone
pop.v.v self.darkmode
push.v self.darkmode
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale

:[2]
pushi.e 0
pop.v.i self.walk
pushi.e 0
pop.v.i self.fun
pushi.e 0
pop.v.i self.runmove
pushi.e 0
pop.v.i self.dir
pushi.e 0
pop.v.i self.walkbuffer
pushi.e 0
pop.v.i self.walktimer
pushi.e 0
pop.v.i self.blushtimer
pushi.e 12
pop.v.i self.target
pushi.e 3556
pop.v.i self.usprite
pushi.e 3553
pop.v.i self.dsprite
pushi.e 3549
pop.v.i self.rsprite
pushi.e 3546
pop.v.i self.lsprite
pushglb.v global.plot
pushi.e 240
cmp.i.v GTE
bf [4]

:[3]
pushi.e 3556
pop.v.i self.usprite
pushi.e 3564
pop.v.i self.dsprite
pushi.e 3566
pop.v.i self.rsprite
pushi.e 3565
pop.v.i self.lsprite

:[4]
pushi.e 3572
pop.v.i self.usprite_blush
pushi.e 3570
pop.v.i self.dsprite_blush
pushi.e 3577
pop.v.i self.rsprite_blush
pushi.e 3574
pop.v.i self.lsprite_blush
pushi.e 1351
pop.v.i self.parent
push.v self.parent
pushi.e -9
push.v [stacktop]self.dsprite
pop.v.v self.pd
push.v self.parent
pushi.e -9
push.v [stacktop]self.rsprite
pop.v.v self.pr
push.v self.parent
pushi.e -9
push.v [stacktop]self.lsprite
pop.v.v self.pl
push.v self.parent
pushi.e -9
push.v [stacktop]self.usprite
pop.v.v self.pu
pushi.e 0
pop.v.i self.i

:[5]
push.v self.i
pushi.e 25
cmp.i.v LT
bf [7]

:[6]
push.i 166112
setowner.e
push.v 1351.x
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.remx
push.i 166113
setowner.e
push.v 1351.y
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.remy
push.i 165705
setowner.e
pushglb.v global.facing
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.facing
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [5]

:[7]
push.v 1351.depth
pushi.e 5
add.i.v
pop.v.v self.depth
push.v self.sprite_width
pop.v.v self.mywidth
push.v self.sprite_height
pop.v.v self.myheight

:[end]