.localvar 2 arguments

:[0]
pushglb.v global.plot
pushi.e 55
cmp.i.v GTE
bf [5]

:[1]
pushbltn.v builtin.room
pushi.e 93
cmp.i.v EQ
bf [5]

:[2]
pushi.e 143
pushenv [4]

:[3]
pushi.e 142
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.door
push.v self.image_xscale
push.v self.door
pushi.e -9
pop.v.v [stacktop]self.image_yscale
push.v self.image_yscale
push.v self.door
pushi.e -9
pop.v.v [stacktop]self.image_yscale
call.i instance_destroy(argc=0)
popz.v

:[4]
popenv [3]

:[5]
pushglb.v global.plot
pushi.e 60
cmp.i.v GTE
bf [10]

:[6]
pushbltn.v builtin.room
pushi.e 97
cmp.i.v EQ
bf [10]

:[7]
pushi.e 143
pushenv [9]

:[8]
pushi.e 142
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.door
push.v self.image_xscale
push.v self.door
pushi.e -9
pop.v.v [stacktop]self.image_yscale
push.v self.image_yscale
push.v self.door
pushi.e -9
pop.v.v [stacktop]self.image_yscale
call.i instance_destroy(argc=0)
popz.v

:[9]
popenv [8]

:[10]
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_is_playing(argc=1)
conv.v.b
not.b
bf [end]

:[11]
push.i 231459
setowner.e
push.s "cyber.ogg"@19754
conv.s.v
call.i gml_Script_snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.currentsong
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_mus_loop_ext(argc=3)
pushi.e -5
pushi.e 1
pop.v.v [array]self.currentsong

:[end]