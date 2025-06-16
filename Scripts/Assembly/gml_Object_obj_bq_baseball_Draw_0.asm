.localvar 2 arguments

:[0]
push.v self.hit_timer
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
push.v self.hit_timer
pushi.e 20
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
pushi.e 20
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
push.v self.reticletimer
push.e 1
add.i.v
pop.v.v self.reticletimer
push.v self.reticletimer
pushi.e 7
conv.i.d
div.d.v
push.i 16777215
conv.i.v
push.v self.image_angle
pushi.e -1
mul.i.v
pushi.e 2
conv.i.v
pushi.e 2
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