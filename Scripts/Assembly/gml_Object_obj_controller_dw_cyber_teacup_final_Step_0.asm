.localvar 2 arguments

:[0]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [3]

:[1]
push.v self.teacup1
pushi.e -9
push.v [stacktop]self.y
pushi.e 1260
cmp.i.v LTE
bf [3]

:[2]
pushi.e 1253
conv.i.v
pushi.e -148
conv.i.v
pushi.e 140
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.pancakemaker1
pushi.e 2
push.v self.pancakemaker1
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.pancakemaker1
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 0
push.v self.pancakemaker1
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 1
pop.v.i self.con
pushi.e 1
pop.v.i global.interact

:[3]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [6]

:[4]
push.v self.pancakemaker1
pushi.e -9
dup.i 4
push.v [stacktop]self.y
pushi.e 10
add.i.v
pop.i.v [stacktop]self.y
push.v self.pancakemaker1
pushi.e -9
push.v [stacktop]self.y
pushi.e 262
cmp.i.v GTE
bf [6]

:[5]
pushi.e 193
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 0
push.v self.pancakemaker1
pushi.e -9
pop.v.i [stacktop]self.speed
pushi.e 1144
conv.i.v
push.v self.teacup1
pushi.e -9
push.v [stacktop]self.y
push.v self.teacup1
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.deadTeacup1
pushi.e 1
push.v self.deadTeacup1
pushi.e -9
pop.v.b [stacktop]self.visible
push.v self.teacup1
pushi.e -9
push.v [stacktop]self.depth
push.v self.deadTeacup1
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.teacup1
pushi.e -9
push.v [stacktop]self.sprite_index
push.v self.deadTeacup1
pushi.e -9
pop.v.v [stacktop]self.sprite_index
push.v self.teacup1
pushi.e -9
push.v [stacktop]self.image_xscale
push.v self.deadTeacup1
pushi.e -9
pop.v.v [stacktop]self.image_xscale
push.v self.teacup1
pushi.e -9
push.v [stacktop]self.image_yscale
push.v self.deadTeacup1
pushi.e -9
pop.v.v [stacktop]self.image_yscale
pushi.e 1144
conv.i.v
push.v self.teacup1
pushi.e -9
push.v [stacktop]self.y
pushi.e 16
add.i.v
pushi.e 140
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.deadTeacupStem1
push.v self.teacup1
pushi.e -9
push.v [stacktop]self.depth
pushi.e 1
add.i.v
push.v self.deadTeacupStem1
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 1
push.v self.deadTeacupStem1
pushi.e -9
pop.v.b [stacktop]self.visible
pushi.e 2711
push.v self.deadTeacupStem1
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 2
push.v self.deadTeacupStem1
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.deadTeacupStem1
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 2
pop.v.i self.con

:[6]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [end]

:[7]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 20
cmp.i.v GT
bf [end]

:[8]
push.v self.teacup1
pushi.e -9
pushenv [10]

:[9]
call.i instance_destroy(argc=0)
popz.v

:[10]
popenv [9]
pushi.e 0
pop.v.i global.interact

:[end]