.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.carGen
pushi.e 5102
pop.v.i self.depth
pushi.e 1
pop.v.b self.visible
pushi.e 0
pop.v.b self.victory
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.hitcount
pushi.e 0
conv.i.v
push.s "HIDDEN_PATH"@38080
conv.s.v
call.i layer_set_visible(argc=2)
popz.v
pushi.e 0
conv.i.v
push.s "TRAFFIC_JAM"@38081
conv.s.v
call.i layer_set_visible(argc=2)
popz.v
pushi.e -5
pushi.e 370
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [17]

:[1]
pushi.e 338
pushenv [4]

:[2]
push.v self.image_index
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
pushi.e 3
pop.v.i self.image_index

:[4]
popenv [2]
pushi.e 1231
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [8]

:[5]
pushi.e 1231
pushenv [7]

:[6]
pushbltn.v builtin.room_width
pushi.e 2
mul.i.v
pop.v.v self.x
pushbltn.v builtin.room_height
pushi.e 2
mul.i.v
pop.v.v self.y

:[7]
popenv [6]

:[8]
pushi.e 1117
pushenv [10]

:[9]
call.i instance_destroy(argc=0)
popz.v

:[10]
popenv [9]
pushi.e 1180
pushenv [12]

:[11]
call.i instance_destroy(argc=0)
popz.v

:[12]
popenv [11]
pushi.e 1118
pushenv [14]

:[13]
call.i instance_destroy(argc=0)
popz.v

:[14]
popenv [13]
pushi.e 315
pushenv [16]

:[15]
call.i instance_destroy(argc=0)
popz.v

:[16]
popenv [15]
pushi.e 1
conv.i.v
push.s "HIDDEN_PATH"@38080
conv.s.v
call.i layer_set_visible(argc=2)
popz.v
pushi.e 1
conv.i.v
push.s "TRAFFIC_JAM"@38081
conv.s.v
call.i layer_set_visible(argc=2)
popz.v
pushi.e 0
conv.i.v
push.s "SPRITES_Alcoves_2"@38082
conv.s.v
call.i layer_set_visible(argc=2)
popz.v
call.i instance_destroy(argc=0)
popz.v
b [end]

:[17]
pushi.e 339
pushenv [19]

:[18]
call.i instance_destroy(argc=0)
popz.v

:[19]
popenv [18]

:[end]