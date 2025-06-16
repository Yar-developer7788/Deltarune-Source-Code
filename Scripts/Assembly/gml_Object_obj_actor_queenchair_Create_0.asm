.localvar 2 arguments

:[0]
call.i event_inherited(argc=0)
popz.v
pushi.e 762
pop.v.i self.usprite
pushi.e 762
pop.v.i self.rsprite
pushi.e 762
pop.v.i self.dsprite
pushi.e 762
pop.v.i self.lsprite
push.s "queen"@3525
pop.v.s self.name
pushi.e -80
pop.v.i self.fakey
pushi.e 0
pop.v.i self.yoff
pushi.e 0
pop.v.i self.float
pushi.e 0
pop.v.i self.floaty
pushi.e 0
pop.v.i self.shadow
pushi.e 0
pop.v.i self.floatsiner
push.d 0.1
pop.v.d self.image_speed
push.v self.sprite_index
push.v self.y
push.v self.x
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.fakeshadow
push.i 500000
push.v self.fakeshadow
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 2
push.v self.fakeshadow
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 0
push.v self.fakeshadow
pushi.e -9
pop.v.i [stacktop]self.visible
push.d 0.25
push.v self.fakeshadow
pushi.e -9
pop.v.d [stacktop]self.image_yscale
pushi.e 0
push.v self.fakeshadow
pushi.e -9
pop.v.i [stacktop]self.image_speed
push.i 166667
setowner.e
pushi.e 760
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.specialsprite
pushi.e 762
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.specialsprite

:[end]