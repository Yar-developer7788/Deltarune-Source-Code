.localvar 2 arguments

:[0]
push.v self.winetimer
push.e 1
add.i.v
pop.v.v self.winetimer
push.v 574.x
pushi.e 29
add.i.v
pop.v.v self._remx
push.v 574.y
pushi.e 10
add.i.v
pop.v.v self._remy
push.v self.winetimer
pushi.e 15
cmp.i.v LTE
bf [2]

:[1]
pushi.e 352
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.after
push.v self.x
push.v self.after
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.y
push.v self.after
pushi.e -9
pop.v.v [stacktop]self.y
pushi.e 0
push.v self.after
pushi.e -9
pop.v.i [stacktop]self.image_speed
push.v self.image_xscale
push.v self.after
pushi.e -9
pop.v.v [stacktop]self.image_xscale
push.v self.image_yscale
push.v self.after
pushi.e -9
pop.v.v [stacktop]self.image_yscale
push.v self.sprite_index
push.v self.after
pushi.e -9
pop.v.v [stacktop]self.sprite_index
push.v self.depth
pushi.e 1
add.i.v
push.v self.after
pushi.e -9
pop.v.v [stacktop]self.depth
push.i 65280
push.v self.after
pushi.e -9
pop.v.i [stacktop]self.image_blend
push.v self.winetimer
pushi.e 15
conv.i.d
div.d.v
push.v self._remx
push.v self._idealx
call.i lerp(argc=3)
pop.v.v self.x
push.v self.winetimer
pushi.e 15
conv.i.d
div.d.v
push.v self._remy
push.v self._idealy
call.i lerp(argc=3)
pop.v.v self.y
push.v self.winetimer
pushi.e 15
conv.i.d
div.d.v
push.d 0.4
conv.d.v
pushi.e 2
conv.i.v
call.i lerp(argc=3)
pop.v.v self.image_xscale
push.v self.winetimer
pushi.e 15
conv.i.d
div.d.v
push.d 0.6
conv.d.v
pushi.e 2
conv.i.v
call.i lerp(argc=3)
pop.v.v self.image_yscale

:[2]
push.v self.winetimer
pushi.e 15
cmp.i.v EQ
bf [4]

:[3]
pushi.e 1
pop.v.i self.image_speed

:[4]
push.v self.winetimer
pushi.e 15
cmp.i.v GTE
bf [6]

:[5]
push.v self._remx
pop.v.v self.x
push.v self._remy
pop.v.v self.y

:[6]
push.v self.winetimer
pushi.e 23
cmp.i.v EQ
bf [end]

:[7]
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i 574.wineglasscon
pushi.e 577
conv.i.v
push.v 574.y
pushi.e 100
sub.i.v
push.v 574.x
pushi.e 82
sub.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.shield
pushi.e 1
push.v self.shield
pushi.e -9
pop.v.i [stacktop]self.appearcon
pushi.e 581
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.wine
pushi.e 0
push.v self.wine
pushi.e -9
pop.v.i [stacktop]self.alpha2
call.i instance_destroy(argc=0)
popz.v

:[end]