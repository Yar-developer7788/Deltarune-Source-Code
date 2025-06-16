.localvar 2 arguments

:[0]
push.v self.image_index
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
call.i gml_Script_scr_depth(argc=0)
popz.v
b [3]

:[2]
push.i 100001
pop.v.i self.depth

:[3]
pushi.e 276
conv.i.v
push.v self.y
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
bt [9]

:[4]
pushi.e 82
conv.i.v
push.v self.y
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
bt [9]

:[5]
pushi.e 893
conv.i.v
push.v self.y
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
bf [7]

:[6]
push.v 893.active
pushi.e 1
cmp.i.v EQ
b [8]

:[7]
push.e 0

:[8]
b [10]

:[9]
push.e 1

:[10]
bf [end]

:[11]
pushi.e 1259
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [13]

:[12]
pushi.e 1
pop.v.i 1259.triggered

:[13]
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
bf [15]

:[14]
pushi.e 1261
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [16]

:[15]
push.e 0

:[16]
bf [20]

:[17]
pushi.e 1261
pushenv [19]

:[18]
push.i 68097
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[19]
popenv [18]

:[20]
call.i instance_destroy(argc=0)
popz.v

:[end]