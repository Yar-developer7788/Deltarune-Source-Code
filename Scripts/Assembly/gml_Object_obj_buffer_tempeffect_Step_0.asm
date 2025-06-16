.localvar 2 arguments

:[0]
call.i gml_Script_scr_queen_buffercheck(argc=0)
conv.v.b
bf [3]

:[1]
pushi.e 0
pop.v.i self.image_speed
exit.i

:[2]
b [5]

:[3]
push.v self.image_speed
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
pushi.e 1
pop.v.i self.image_speed

:[5]
pushi.e 1
pop.v.i self.init
push.v self.animdone
conv.v.b
bf [end]

:[6]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
push.v self.endtime
cmp.v.v GTE
bf [end]

:[7]
call.i instance_destroy(argc=0)
popz.v

:[end]