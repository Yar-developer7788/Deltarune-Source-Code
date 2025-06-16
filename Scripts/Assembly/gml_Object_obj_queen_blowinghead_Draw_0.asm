.localvar 2 arguments

:[0]
call.i gml_Script_scr_queen_buffercheck(argc=0)
conv.v.b
bf [5]

:[1]
call.i draw_self(argc=0)
popz.v
push.v self.original_image_speed
pushi.e 0
cmp.i.v LT
bf [3]

:[2]
push.v self.image_speed
pop.v.v self.original_image_speed

:[3]
pushi.e 0
pop.v.i self.image_speed
exit.i

:[4]
b [7]

:[5]
push.v self.original_image_speed
pushi.e 0
cmp.i.v GTE
bf [7]

:[6]
push.v self.original_image_speed
pop.v.v self.image_speed
pushi.e -1
pop.v.i self.original_image_speed

:[7]
push.v self.timer
push.e 1
sub.i.v
pop.v.v self.timer
push.v self.blowing
conv.v.b
bf [13]

:[8]
push.v self.blowstate
pushi.e 0
cmp.i.v EQ
bf [10]

:[9]
pushi.e 1925
pop.v.i self.sprite_index
pushi.e 1
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 5
pop.v.i self.timer
pushi.e 1
pop.v.i self.blowstate

:[10]
push.v self.timer
pushi.e 0
cmp.i.v EQ
bf [12]

:[11]
pushi.e 2
pop.v.i self.image_index

:[12]
b [22]

:[13]
push.v self.blowstate
pushi.e 1
cmp.i.v EQ
bf [15]

:[14]
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.blowstate
pushi.e 10
pop.v.i self.timer

:[15]
push.v self.timer
pushi.e 0
cmp.i.v EQ
bf [17]

:[16]
pushi.e 1
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index
pushi.e 1940
pop.v.i self.sprite_index

:[17]
push.v self.image_index
pushi.e 3
cmp.i.v EQ
bf [19]

:[18]
push.v self.timer
pushi.e -12
cmp.i.v LTE
b [20]

:[19]
push.e 0

:[20]
bf [22]

:[21]
pushi.e 100
pop.v.i self.timer
pushi.e 0
pop.v.i self.image_index
pushi.e 1925
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_speed

:[22]
push.v self.scale
pushi.e 1
cmp.i.v LT
bf [24]

:[23]
push.v self.scale
push.d 0.1
add.d.v
pop.v.v self.scale
push.v self.scale
pop.v.v self.image_xscale
push.v self.scale
pop.v.v self.image_yscale
push.v self.scale
pushi.e 360
mul.i.v
pop.v.v self.image_angle
call.i gml_Script_scr_afterimage(argc=0)
pop.v.v self.af
push.d 0.5
push.v self.af
pushi.e -9
pop.v.d [stacktop]self.image_alpha

:[24]
call.i draw_self(argc=0)
popz.v

:[end]