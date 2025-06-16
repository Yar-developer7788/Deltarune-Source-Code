.localvar 2 arguments

:[0]
call.i gml_Script_scr_bullet_init(argc=0)
popz.v
pushi.e 3
pop.v.i self.hp
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.type
pushi.e 0
pop.v.i self.shake
pushi.e -1
pop.v.i self.parent
pushi.e 0
pop.v.i self.image_speed
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 360
conv.i.v
call.i random(argc=1)
pop.v.v self.image_angle
pushi.e 0
pop.v.i self.target
pushi.e 1
pop.v.i self.damage
pushi.e 0
pop.v.i self.directhit
pushi.e 6
pop.v.i self.element
pushi.e 0
pop.v.i self.bluesiner
push.d 0.25
push.v self.bluesiner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.25
mul.d.v
add.v.d
push.i 16776960
conv.i.v
push.i 15245824
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.image_blend2
pushi.e 0
pop.v.i self.hitstun
pushi.e 0
pop.v.i self.hitstunenabled
pushi.e -5
pushi.e 3
conv.i.v
call.i random(argc=1)
sub.v.i
pop.v.v self.bouncespeed
pushi.e 0
pop.v.i self.drawlabel
pushi.e 2
pop.v.i self.grazepoints

:[end]