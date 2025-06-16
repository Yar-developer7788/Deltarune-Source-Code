.localvar 2 arguments
.localvar 11064 __alpha 7866
.localvar 14493 __flash 7867

:[0]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [6]

:[1]
push.v self.pivotx
pushi.e -999
cmp.i.v EQ
bf [3]

:[2]
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
pop.v.v self.pivotx

:[3]
push.v self.pivoty
pushi.e -999
cmp.i.v EQ
bf [5]

:[4]
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
pop.v.v self.pivoty

:[5]
pushi.e 1
pop.v.i self.init

:[6]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.effecttimer
push.e 1
add.i.v
pop.v.v self.effecttimer
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v self.timer
push.v self.poweruptime
div.v.v
call.i clamp(argc=3)
pop.v.v local.__alpha
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_blend
pushi.e 1
conv.b.v
call.i gml_Script_d3d_set_fog(argc=4)
popz.v
push.v self.flashtimer
push.e 1
add.i.v
pop.v.v self.flashtimer
push.v self.flashtimer
push.v self.flashspeed
cmp.v.v GTE
bf [8]

:[7]
pushi.e 0
pop.v.i self.flashtimer
push.v self.flashspeed
pushi.e 2
mul.i.v
pushi.e 3
conv.i.d
div.d.v
pushi.e 4
conv.i.v
call.i max(argc=2)
pop.v.v self.flashspeed

:[8]
push.v self.timer
pushi.e 15
add.i.v
push.v self.poweruptime
cmp.v.v GTE
bf [10]

:[9]
push.v self.flashtimer
push.v self.flashspeed
div.v.v
push.d 3.141592653589793
mul.d.v
call.i sin(argc=1)
push.d 0.5
conv.d.v
push.d 0.4
conv.d.v
call.i lerp(argc=3)
b [11]

:[10]
push.v self.flashtimer
push.v self.flashspeed
div.v.v
push.d 3.141592653589793
mul.d.v
call.i sin(argc=1)
push.d 0.5
conv.d.v
pushloc.v local.__alpha
pushi.e 2
conv.i.d
div.d.v
call.i lerp(argc=3)

:[11]
pop.v.v local.__flash
pushloc.v local.__flash
push.v self.thrash
pushi.e -9
pop.v.v [stacktop]self.glow
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.b.v
call.i gml_Script_d3d_set_fog(argc=4)
popz.v

:[end]