.localvar 2 arguments
.localvar 10755 __n 2664

:[0]
b [8]

> gml_Script_scr_instance_save_local_vars (locals=1, argc=0)
:[1]
pushi.e 1
pop.v.i self.__quickSaved
push.v self.id
call.i variable_instance_get_names(argc=1)
pop.v.v self.__masterArray
pushi.e 0
pop.v.i local.__n

:[2]
pushloc.v local.__n
push.v self.__masterArray
call.i array_length_1d(argc=1)
cmp.v.v LT
bf [7]

:[3]
push.v self.sprite_index
pop.v.v self.___saveSpriteIndex
push.v self.image_index
pop.v.v self.___saveImageIndex
push.v self.image_speed
pop.v.v self.___saveImageSpeed
push.v self.image_xscale
pop.v.v self.___saveXscale
push.v self.image_yscale
pop.v.v self.___saveYscale
push.v self.image_alpha
pop.v.v self.___saveAlpha
push.v self.image_blend
pop.v.v self.___saveBlend
push.v self.image_angle
pop.v.v self.___saveAngle
push.v self.x
pop.v.v self.___saveX
push.v self.y
pop.v.v self.___saveY
push.v self.speed
pop.v.v self.___saveSpeed
push.v self.direction
pop.v.v self.___saveDirection
push.v self.depth
pop.v.v self.___saveDepth
push.v self.visible
pop.v.v self.___saveVisible
push.v self.gravity
pop.v.v self.___saveGravity
push.v self.gravity_direction
pop.v.v self.___saveGravityDirection
push.v self.friction
pop.v.v self.___saveFriction
pushi.e -1
pushloc.v local.__n
conv.v.i
push.v [array]self.__masterArray
push.s "__myVar"@10777
cmp.s.v EQ
bf [5]

:[4]
push.i 33524778
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushloc.v local.__n
conv.v.i
pop.v.v [array]self.__myVar
b [6]

:[5]
push.i 33524778
setowner.e
pushi.e -1
pushloc.v local.__n
conv.v.i
push.v [array]self.__masterArray
push.v self.id
call.i variable_instance_get(argc=2)
pushi.e -1
pushloc.v local.__n
conv.v.i
pop.v.v [array]self.__myVar

:[6]
push.v local.__n
push.e 1
add.i.v
pop.v.v local.__n
b [2]

:[7]
exit.i

:[8]
push.i [function]gml_Script_scr_instance_save_local_vars
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_instance_save_local_vars
popz.v

:[end]