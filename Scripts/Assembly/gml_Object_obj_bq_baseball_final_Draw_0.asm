.localvar 2 arguments

:[0]
push.v self.hit_timer
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
push.v self.hit_timer
pushi.e 2
cmp.i.v LT
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_d3d_set_fog(argc=4)
popz.v

:[5]
call.i draw_self(argc=0)
popz.v
push.v self.hit_timer
pushi.e 0
cmp.i.v GT
bf [7]

:[6]
push.v self.hit_timer
pushi.e 2
cmp.i.v LT
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_d3d_set_fog(argc=4)
popz.v

:[10]
push.v self.energy_aura_timer
push.e 1
add.i.v
pop.v.v self.energy_aura_timer
push.v self.energy_aura_timer
pushi.e 100
conv.i.d
push.v self.f
div.v.d
cmp.v.v EQ
bf [12]

:[11]
pushi.e 1
pop.v.i self.specialcon

:[12]
push.v self.specialcon
pushi.e 1
cmp.i.v EQ
bf [14]

:[13]
push.v self.hit
pushi.e 0
cmp.i.v EQ
b [15]

:[14]
push.e 0

:[15]
bf [23]

:[16]
push.v self.specialcontimer
push.e 1
add.i.v
pop.v.v self.specialcontimer
push.v self.specialcontimer
pushi.e 4
conv.i.d
div.d.v
pushi.e 2
mod.i.v
pop.v.v self.flameframe
push.v self.specialcontimer
pushi.e 15
conv.i.d
div.d.v
pop.v.v self.flamealpha
push.v self.flamealpha
push.d 0.5
cmp.d.v GTE
bf [18]

:[17]
push.d 0.5
pop.v.d self.flamealpha

:[18]
push.v self.specialcontimer
pushi.e 15
cmp.i.v GTE
bf [20]

:[19]
pushi.e 1
push.v self.specialcontimer
pushi.e 30
conv.i.d
div.d.v
sub.v.i
pop.v.v self.flamealpha

:[20]
push.v self.specialcontimer
pushi.e 22
cmp.i.v GTE
bf [22]

:[21]
pushi.e 12
pop.v.i self.specialcontimer
pushi.e 0
pop.v.i self.image_index

:[22]
push.v self.flamealpha
pushi.e 255
conv.i.v
pushi.e 0
conv.i.v
push.d 4.8
push.v self.specialcontimer
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
conv.i.d
div.d.v
call.i abs(argc=1)
add.v.d
pushi.e -4
conv.i.v
push.v self.y
pushi.e 100
add.i.v
push.v self.x
pushi.e 22
add.i.v
pushi.e 10
push.v self.flameframe
add.v.i
pushi.e 2153
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.flamealpha
pushi.e 2
conv.i.d
div.d.v
push.i 4235519
conv.i.v
pushi.e 0
conv.i.v
push.d 4.8
conv.d.v
pushi.e -4
conv.i.v
push.v self.y
pushi.e 100
add.i.v
push.v self.x
pushi.e 22
add.i.v
pushi.e 11
push.v self.flameframe
sub.v.i
pushi.e 2153
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[23]
push.v self.reticletimer
push.e 1
add.i.v
pop.v.v self.reticletimer
push.v self.reticletimer
pushi.e 100
sub.i.v
pushi.e 7
conv.i.d
div.d.v
push.i 16777215
conv.i.v
push.v self.image_angle
pushi.e -1
mul.i.v
pushi.e 8
conv.i.v
pushi.e 8
conv.i.v
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 2208
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[end]