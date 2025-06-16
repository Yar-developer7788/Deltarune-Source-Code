.localvar 2 arguments

:[0]
call.i gml_Script_scr_enemy_object_init(argc=0)
popz.v
pushi.e 90
pop.v.i self.talkmax
push.d 0.16666666666666666
pop.v.d self.image_speed
pushi.e 1162
pop.v.i self.idlesprite
pushi.e 1162
pop.v.i self.hurtsprite
pushi.e 1166
pop.v.i self.sabersprite
pushi.e 1162
pop.v.i self.sparedsprite
pushi.e 1
pop.v.i self.custom_draw_example
pushi.e -10
pop.v.i self.depth
pushi.e 730
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.thrash
push.v self.depth
pushi.e 5
add.i.v
push.v self.thrash
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 0
pop.v.i self.drawsiner
pushi.e 0
pop.v.i self.thrashmode
pushi.e 0
pop.v.i self.thrashcon
pushi.e 0
pop.v.i self.thrashbody
pushi.e 0
pop.v.i self.thrashtimer
push.v self.x
pop.v.v self.remx
push.v self.y
pop.v.v self.remy
pushi.e 0
pop.v.i self.movey
pushi.e -1
pop.v.i self.bulletoverride
pushi.e 8
pop.v.i self.advancespeed
pushi.e 6
pop.v.i self.returnspeed
pushi.e 15
conv.i.v
call.i irandom(argc=1)
pushi.e 10
add.i.v
pop.v.v self.aimtime
pushi.e 0
pop.v.i self.floatheight
pushi.e 0
pop.v.i self.returnease
pushi.e 0
pop.v.i self.headattack
pushi.e 129
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.puddle
pushi.e 2070
push.v self.puddle
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.i 65280
push.v self.puddle
pushi.e -9
pop.v.i [stacktop]self.image_blend
pushi.e 2
push.v self.puddle
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.puddle
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.v self.thrash
pushi.e -9
push.v [stacktop]self.depth
pushi.e 1
add.i.v
push.v self.puddle
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 0
push.v self.puddle
pushi.e -9
pop.v.i [stacktop]self.image_speed
push.v self.thrash
pushi.e -9
pushi.e 0
push.v [array]self.part
pushi.e 2
cmp.i.v EQ
bf [2]

:[1]
pushi.e 2
conv.i.v
b [3]

:[2]
pushi.e 0
conv.i.v

:[3]
push.v self.puddle
pushi.e -9
pop.v.v [stacktop]self.image_index
pushi.e 1
pop.v.i self.submerged
pushi.e 0
pop.v.i self.keytestmode
pushi.e 0
pop.v.i self.saberanim
pushi.e 0
pop.v.i self.buildedblocks
pushi.e 0
pop.v.i self.buildedblockstimer
pushi.e 755
conv.i.v
pushi.e 80
conv.i.v
pushi.e 160
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.tile1
pushi.e 8
push.v self.tile1
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 755
conv.i.v
pushi.e 120
conv.i.v
pushi.e 160
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.tile2
pushi.e 8
push.v self.tile2
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 755
conv.i.v
pushi.e 160
conv.i.v
pushi.e 240
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.tile3
pushi.e 3
push.v self.tile3
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 755
conv.i.v
pushi.e 200
conv.i.v
pushi.e 280
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.tile4
pushi.e 3
push.v self.tile4
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 755
conv.i.v
pushi.e 240
conv.i.v
pushi.e 160
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.tile5
pushi.e 8
push.v self.tile5
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 755
conv.i.v
pushi.e 280
conv.i.v
pushi.e 160
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.tile6
pushi.e 8
push.v self.tile6
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 868
pushenv [5]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[5]
popenv [4]

:[end]