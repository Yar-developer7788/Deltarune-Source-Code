.localvar 2 arguments

:[0]
call.i gml_Script_scr_depth(argc=0)
popz.v
pushi.e 0
pop.v.i self.image_speed
pushi.e 1
pop.v.i self.walk
pushi.e 1
pop.v.i self.auto_walk
pushi.e 1
pop.v.i self.auto_facing
pushi.e 1
pop.v.i self.auto_depth
pushi.e 0
pop.v.i self.stopped
pushi.e 0
pop.v.i self.depthbonus
pushi.e 0
pop.v.i self.active
push.s "d"@6706
pop.v.s self.facing
pushi.e 993
pop.v.i self.usprite
pushi.e 986
pop.v.i self.rsprite
pushi.e 990
pop.v.i self.dsprite
pushi.e 983
pop.v.i self.lsprite
push.s "susie"@70
pop.v.s self.name
pushi.e -1
pop.v.i self.number
pushi.e 0
pop.v.i self.spinspeed
pushi.e 0
pop.v.i self.spintimer
pushi.e 1
pop.v.i self.dz
pushglb.v global.darkzone
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 2
pop.v.i self.dz
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale

:[2]
pushi.e 0
pop.v.i self.fake_speed
pushi.e 0
pop.v.i self.fake_direction
pushi.e -1
pop.v.i self.debug_killtimer
pushi.e 0
pop.v.i self.specialspriteno
pushi.e 0
pop.v.i self.i

:[3]
push.v self.i
pushi.e 10
cmp.i.v LT
bf [5]

:[4]
push.i 166667
setowner.e
push.v self.dsprite
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.specialsprite
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [3]

:[5]
pushi.e -1
pop.v.i self.sprite_palette
pushi.e 0
pop.v.i self.current_pal
push.i 16777215
pop.v.i self.color_blend
pushi.e 0
pop.v.i self.siner0
pushi.e 0
pop.v.i self.siner_add0
pushi.e 0
pop.v.i self.siner_amplitude0
pushi.e 0
pop.v.i self.siner_direction0
push.s "sin"@6634
pop.v.s self.siner_type0
pushi.e 1
pop.v.i self.siner_visual0
pushi.e 0
pop.v.i self.siner1
pushi.e 0
pop.v.i self.siner_add1
pushi.e 0
pop.v.i self.siner_amplitude1
pushi.e 270
pop.v.i self.siner_direction1
push.s "cos"@6636
pop.v.s self.siner_type1
pushi.e 1
pop.v.i self.siner_visual1
pushi.e 0
pop.v.i self.siner2
pushi.e 0
pop.v.i self.siner_add2
pushi.e 0
pop.v.i self.siner_amplitude2
pushi.e 0
pop.v.i self.siner_direction2
push.s "sin"@6634
pop.v.s self.siner_type2
pushi.e 1
pop.v.i self.siner_visual2
pushi.e 0
pop.v.i self.sinerx
pushi.e 0
pop.v.i self.sinery
pushi.e 0
pop.v.i self.shakeamt
pushi.e 1
pop.v.i self.shaketime
pushi.e 0
pop.v.i self.shaketimer
pushi.e 0
pop.v.i self.shakex
pushi.e 0
pop.v.i self.shakey
pushi.e 0
pop.v.i self.stepsound
pushi.e 0
pop.v.i self.stepsound_count

:[end]