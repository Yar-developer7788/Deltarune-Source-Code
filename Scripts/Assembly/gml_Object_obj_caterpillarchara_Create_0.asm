.localvar 2 arguments

:[0]
call.i gml_Script_scr_depth(argc=0)
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
pushi.e 1
pop.v.i self.follow
pushi.e 0
pop.v.i self.runmove
pushi.e 0
pop.v.i self.dir
pushi.e 0
pop.v.i self.walkbuffer
pushi.e 0
pop.v.i self.walktimer
pushi.e 0
pop.v.i self.slided
pushi.e 0
pop.v.i self.blushtimer
push.s "susie"@70
pop.v.s self.name
pushi.e 12
pop.v.i self.target
pushi.e 993
pop.v.i self.usprite
pushi.e 990
pop.v.i self.dsprite
pushi.e 986
pop.v.i self.rsprite
pushi.e 983
pop.v.i self.lsprite
pushi.e 831
pop.v.i self.slidesprite
pushglb.v global.chapter
pushi.e 2
cmp.i.v GTE
bf [5]

:[3]
pushi.e 826
pop.v.i self.usprite
pushi.e 824
pop.v.i self.rsprite
pushi.e 822
pop.v.i self.lsprite
pushi.e 820
pop.v.i self.dsprite
pushglb.v global.darkzone
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
pushi.e 854
pop.v.i self.usprite
pushi.e 852
pop.v.i self.rsprite
pushi.e 850
pop.v.i self.lsprite
pushi.e 848
pop.v.i self.dsprite

:[5]
pushi.e 1012
pop.v.i self.usprite_blush
pushi.e 1010
pop.v.i self.dsprite_blush
pushi.e 1016
pop.v.i self.rsprite_blush
pushi.e 1014
pop.v.i self.lsprite_blush
pushglb.v global.chapter
pushi.e 2
cmp.i.v GTE
bf [7]

:[6]
pushi.e 799
pop.v.i self.usprite_blush
pushi.e 787
pop.v.i self.dsprite_blush
pushi.e 798
pop.v.i self.rsprite_blush
pushi.e 794
pop.v.i self.lsprite_blush

:[7]
pushi.e 82
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

:[8]
push.v self.i
pushi.e 75
cmp.i.v LT
bf [10]

:[9]
push.i 166112
setowner.e
push.v self.parent
pushi.e -9
push.v [stacktop]self.x
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.remx
push.i 166113
setowner.e
push.v self.parent
pushi.e -9
push.v [stacktop]self.y
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
push.i 168230
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.sliding
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [8]

:[10]
push.v self.parent
pushi.e -9
push.v [stacktop]self.depth
pushi.e 5
add.i.v
pop.v.v self.depth
push.v self.sprite_width
pop.v.v self.mywidth
push.v self.sprite_height
pop.v.v self.myheight
pushi.e 0
pop.v.i self.xoffset
pushi.e 0
pop.v.i self.yoffset
pushi.e 0
pop.v.i self.init
pushi.e 0
pop.v.i self.forget
pushi.e 0
pop.v.i self.ignoredepth

:[end]