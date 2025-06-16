.localvar 2 arguments
.localvar 107 i 9041
.localvar 220 j 9042

:[0]
push.v self.xspeed
pushi.e 0
cmp.i.v NEQ
bf [2]

:[1]
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
push.v self.xspeed
call.i clamp(argc=3)
pop.v.v self.image_speed

:[2]
push.v self.yspeed
pushi.e 0
cmp.i.v NEQ
bf [4]

:[3]
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
push.v self.yspeed
call.i clamp(argc=3)
pop.v.v self.image_speed

:[4]
push.v self.image_yscale
pushi.e 2
conv.i.d
div.d.v
pop.v.v self.ht
push.v self.image_xscale
pushi.e 2
conv.i.d
div.d.v
pop.v.v self.wd
pushi.e 0
pop.v.i local.i

:[5]
pushloc.v local.i
push.v self.ht
cmp.v.v LT
bf [end]

:[6]
pushi.e 0
pop.v.i local.j

:[7]
pushloc.v local.j
push.v self.wd
cmp.v.v LT
bf [9]

:[8]
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushloc.v local.i
pushi.e 40
mul.i.v
add.v.v
push.v self.x
pushloc.v local.j
pushi.e 40
mul.i.v
add.v.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v local.j
push.e 1
add.i.v
pop.v.v local.j
b [7]

:[9]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [5]

:[end]