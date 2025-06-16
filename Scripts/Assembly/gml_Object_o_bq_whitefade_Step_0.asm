.localvar 2 arguments

:[0]
push.v self.state
pushi.e 0
cmp.i.v EQ
bf [6]

:[1]
push.v self.image_alpha
push.d 0.03
add.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
push.d 1.2
cmp.d.v GT
bf [6]

:[2]
pushi.e 2
pop.v.i self.image_alpha
pushi.e 1
pop.v.i self.state
push.v 789.basex
pop.v.v 789.x
push.v 789.basey
pop.v.v 789.y
pushi.e 792
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [6]

:[3]
pushi.e 209
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 792
pushenv [5]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[5]
popenv [4]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_set(argc=3)
popz.v
pushi.e 2098
pop.v.i 789.sprite_index
pushi.e 26
pop.v.i 789.image_index

:[6]
push.v self.state
pushi.e 1
cmp.i.v EQ
bf [8]

:[7]
push.v self.dont_fade_out
pushi.e 0
cmp.i.v EQ
b [9]

:[8]
push.e 0

:[9]
bf [end]

:[10]
push.v self.image_alpha
push.d 0.02
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
pushi.e 0
cmp.i.v LT
bf [end]

:[11]
call.i instance_destroy(argc=0)
popz.v

:[end]