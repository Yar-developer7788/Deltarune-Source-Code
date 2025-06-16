.localvar 2 arguments

:[0]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.dontalpha
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.image_alpha
push.d 0.2
add.d.v
pop.v.v self.image_alpha

:[2]
pushi.e 1
pop.v.i self.gravity
push.v self.y
push.v self.startY
cmp.v.v GT
bf [5]

:[3]
push.v self.startY
pop.v.v self.y
pushi.e 0
pop.v.i self.gravity
pushbltn.v builtin.room
pushi.e 217
cmp.i.v EQ
bf [5]

:[4]
pushi.e 62
conv.i.v
call.i gml_Script_snd_stop(argc=1)
popz.v
pushi.e 62
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 193
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[5]
push.v self.y
push.v self.startY
cmp.v.v EQ
bf [7]

:[6]
push.v self.timer
pushi.e 15
cmp.i.v GT
b [8]

:[7]
push.e 0

:[8]
bf [end]

:[9]
pushi.e 260
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.newsaucer
pushi.e 1
push.v self.newsaucer
pushi.e -9
pop.v.i [stacktop]self.mode
pushi.e 0
push.v self.newsaucer
pushi.e -9
pop.v.i [stacktop]self.content
push.v self.newsaucer
pushi.e -9
pushenv [11]

:[10]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[11]
popenv [10]
call.i instance_destroy(argc=0)
popz.v

:[end]