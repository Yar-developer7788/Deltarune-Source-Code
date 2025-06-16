.localvar 2 arguments

:[0]
pushi.e 2
pop.v.i self.intensity
pushi.e -30
pop.v.i self.timer
pushi.e 15
pop.v.i self.effectPause
pushi.e 90
pop.v.i self.poweruptime
pushi.e -4
pop.v.i self.parent
pushi.e 0
pop.v.i self.effecttimer
pushi.e 0
pop.v.i self.init
pushi.e -999
pop.v.i self.pivotx
pushi.e -999
pop.v.i self.pivoty
pushi.e 0
pop.v.i self.flashtimer
pushi.e 30
pop.v.i self.flashspeed
pushi.e -1
pop.v.i self.ring_surf
pushi.e 0
pop.v.i self.ring_timer
pushi.e 0
pop.v.b self.doflash
pushi.e 0
pop.v.i self.flashSprite
pushi.e 0
pop.v.i self.flashState
pushi.e 3355
pop.v.i self.rimsprite
pushi.e 0
pop.v.i self.ripple_effect
pushi.e 129
conv.i.v
pushi.e -10
conv.i.v
pushi.e -10
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.fadebg
pushi.e 0
push.v self.fadebg
pushi.e -9
pop.v.i [stacktop]self.image_alpha
pushi.e 0
pop.v.i self.after_image_flash

:[end]