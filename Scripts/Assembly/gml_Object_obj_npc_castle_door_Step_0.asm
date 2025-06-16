.localvar 2 arguments

:[0]
pushi.e 133
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [20]

:[1]
pushi.e 133
pushenv [19]

:[2]
push.v self.visible
pushi.e 1
cmp.i.v EQ
bf [19]

:[3]
push.d 0.25
pop.v.d self.image_speed
push.v self.direction
pushi.e 136
cmp.i.v GTE
bf [5]

:[4]
push.v self.direction
pushi.e 225
cmp.i.v LTE
b [6]

:[5]
push.e 0

:[6]
bf [8]

:[7]
pushi.e 2
pop.v.i self.image_xscale

:[8]
push.v self.direction
pushi.e 306
cmp.i.v GTE
bt [10]

:[9]
push.v self.direction
pushi.e 45
cmp.i.v LTE
b [11]

:[10]
push.e 1

:[11]
bf [13]

:[12]
pushi.e -2
pop.v.i self.image_xscale

:[13]
push.v self.sprite_index
pushi.e 1672
cmp.i.v EQ
bf [18]

:[14]
push.v self.y
pushi.e 350
cmp.i.v GT
bf [16]

:[15]
push.v 82.depth
pushi.e 100
sub.i.v
b [17]

:[16]
push.v 82.depth
pushi.e 100
add.i.v

:[17]
pop.v.v self.depth
b [19]

:[18]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[19]
popenv [2]

:[20]
push.v self.howl_con
pushi.e 1
cmp.i.v EQ
bf [22]

:[21]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [23]

:[22]
push.e 0

:[23]
bf [end]

:[24]
pushi.e 0
pop.v.i self.howl_con
pushi.e 208
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[end]