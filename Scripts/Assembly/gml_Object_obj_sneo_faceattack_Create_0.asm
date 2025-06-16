.localvar 2 arguments

:[0]
call.i gml_Script_scr_bullet_init(argc=0)
popz.v
pushi.e 6
pop.v.i self.element
pushi.e 0
pop.v.i self.type
pushi.e 0
pop.v.i self.timer
pushi.e 16
pop.v.i self.hp
pushi.e 0
pop.v.i self.init
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_alpha
pushi.e 0
pop.v.i self.broken
push.v self.id
call.i gml_Script_scr_darksize(argc=1)
popz.v
push.d 0.5
conv.d.v
push.i 65280
conv.i.v
push.i 32768
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.blend
pushi.e 0
pop.v.i self.invincibilitytimer
pushi.e 0
pop.v.i self.hurtflashtimer
pushi.e 0
pop.v.i self.shootflashtimer
pushi.e 0
pop.v.i self.explodetimer
pushi.e 0
pop.v.i self.laserinit
pushi.e 0
pop.v.i self.noseinit
pushi.e 0
pop.v.i self.eyesinit
pushi.e 1
pop.v.i self.boss
pushi.e 0
pop.v.i self.destroytarget
push.d 0.25
conv.d.v
push.i 16776960
conv.i.v
push.i 15245824
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.blue_col
pushi.e 0
pop.v.i self.intro_timer
pushi.e 0
pop.v.b self.first_time
pushi.e 25
pop.v.i self.smashspeed
pushi.e 0
pop.v.i self.growtangle_x
pushi.e 0
pop.v.i self.heart_recoil
pushi.e 0
pop.v.i self.special

:[end]