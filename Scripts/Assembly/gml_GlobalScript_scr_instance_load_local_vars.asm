.localvar 2 arguments
.localvar 10755 __n 2689

:[0]
b [10]

> gml_Script_scr_instance_load_local_vars (locals=1, argc=0)
:[1]
pushi.e 0
pop.v.i local.__n

:[2]
pushloc.v local.__n
push.v self.__masterArray
call.i array_length_1d(argc=1)
cmp.v.v LT
bf [9]

:[3]
push.v self.___saveSpriteIndex
pop.v.v self.sprite_index
push.v self.___saveImageIndex
pop.v.v self.image_index
push.v self.___saveImageSpeed
pop.v.v self.image_speed
push.v self.___saveXscale
pop.v.v self.image_xscale
push.v self.___saveYscale
pop.v.v self.image_yscale
push.v self.___saveAlpha
pop.v.v self.image_alpha
push.v self.___saveBlend
pop.v.v self.image_blend
push.v self.___saveAngle
pop.v.v self.image_angle
push.v self.___saveX
pop.v.v self.x
push.v self.___saveY
pop.v.v self.y
push.v self.___saveSpeed
pop.v.v self.speed
push.v self.___saveDirection
pop.v.v self.direction
push.v self.___saveDepth
pop.v.v self.depth
push.v self.___saveVisible
pop.v.v self.visible
push.v self.___saveGravity
pop.v.v self.gravity
push.v self.___saveGravityDirection
pop.v.v self.gravity_direction
push.v self.___saveFriction
pop.v.v self.friction
pushi.e -1
pushloc.v local.__n
conv.v.i
push.v [array]self.__masterArray
push.s "__myVar"@10777
cmp.s.v NEQ
bf [5]

:[4]
pushi.e -1
pushloc.v local.__n
conv.v.i
push.v [array]self.__masterArray
push.s "__masterArray"@10754
cmp.s.v NEQ
b [6]

:[5]
push.e 0

:[6]
bf [8]

:[7]
pushi.e -1
pushloc.v local.__n
conv.v.i
push.v [array]self.__myVar
pushi.e -1
pushloc.v local.__n
conv.v.i
push.v [array]self.__masterArray
push.v self.id
call.i variable_instance_set(argc=3)
popz.v

:[8]
push.v local.__n
push.e 1
add.i.v
pop.v.v local.__n
b [2]

:[9]
exit.i

:[10]
push.i [function]gml_Script_scr_instance_load_local_vars
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_instance_load_local_vars
popz.v

:[end]