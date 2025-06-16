.localvar 2 arguments

:[0]
pushi.e 1259
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
pushi.e 1
pop.v.i 1259.triggered

:[2]
pushi.e 1
pop.v.i self.image_index
pushi.e 166
conv.i.v
pushi.e 165
conv.i.v
call.i choose(argc=2)
call.i gml_Script_snd_play(argc=1)
popz.v
push.v self.sprite_index
push.v self.y
push.v self.x
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.brokenpot
pushi.e 1
push.v self.brokenpot
pushi.e -9
pop.v.i [stacktop]self.image_index
push.i 800000
push.v self.brokenpot
pushi.e -9
pop.v.i [stacktop]self.depth
pushbltn.v builtin.room
pushi.e 170
cmp.i.v EQ
bf [4]

:[3]
push.i 68097
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[4]
call.i instance_destroy(argc=0)
popz.v

:[end]