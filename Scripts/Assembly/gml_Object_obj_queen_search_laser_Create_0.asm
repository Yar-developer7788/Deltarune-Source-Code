.localvar 2 arguments

:[0]
call.i gml_Script_scr_bullet_init(argc=0)
popz.v
pushi.e 10
pop.v.i self.fauxspeed
pushi.e 180
pop.v.i self.direction
call.i gml_Script_scr_getboxbounds(argc=0)
popz.v
push.v self.minx
pushi.e 8
add.i.v
pop.v.v self.minx
push.v self.maxx
pushi.e 8
sub.i.v
pop.v.v self.maxx
push.v self.miny
pushi.e 8
add.i.v
pop.v.v self.miny
push.v self.maxy
pushi.e 8
sub.i.v
pop.v.v self.maxy
pushi.e 0
pop.v.i self.destroyonhit
pushi.e 25
pop.v.i self.traillength
pushi.e 0
pop.v.i self.init
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [3]

:[2]
push.i 170898
setowner.e
push.v self.x
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.bouncepoint_x
push.i 170899
setowner.e
push.v self.y
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.bouncepoint_y
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [1]

:[3]
push.i 170423
setowner.e
call.i @@This@@(argc=0)
pushi.e -1
pushi.e 0
pop.v.v [array]self.hitbox
pushi.e 2067
pop.v.i self.sprite_index
push.d 0.25
pop.v.d self.image_yscale
pushi.e 1
pop.v.i self.i

:[4]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [6]

:[5]
pushi.e 369
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.hitbox
push.i 232294
setowner.e
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.hitbox
pushi.e -9
pop.v.i [stacktop]self.destroyonhit
push.i 133642
setowner.e
pushi.e 2067
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.hitbox
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.i 133651
setowner.e
push.d 0.25
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.hitbox
pushi.e -9
pop.v.d [stacktop]self.image_yscale
push.i 133635
setowner.e
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.hitbox
pushi.e -9
pop.v.i [stacktop]self.visible
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [4]

:[6]
pushi.e 0
pop.v.i self.bouncecount
pushi.e 4
pop.v.i self.bouncecap

:[end]