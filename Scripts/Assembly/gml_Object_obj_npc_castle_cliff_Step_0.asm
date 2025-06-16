.localvar 2 arguments
.localvar 18099 sinmove_x 7427
.localvar 15466 xpos 7428
.localvar 14550 ypos 7429
.localvar 18100 sinmove_y 7430

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [3]

:[1]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
bf [3]

:[2]
pushi.e 103
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
b [4]

:[3]
push.e 0

:[4]
bf [11]

:[5]
push.v self.sfx
conv.v.b
not.b
bf [7]

:[6]
pushi.e 1
pop.v.b self.sfx
pushi.e 105
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[7]
pushi.e 0
pop.v.i self.sinerx
pushi.e 0
pop.v.i self.sinery
push.v self.siner_amplitude0
push.d 0.2
add.d.v
pop.v.v self.siner_amplitude0
push.v self.siner0
push.d 0.2
add.d.v
pop.v.v self.siner0
push.v self.siner0
call.i sin(argc=1)
push.v self.siner_amplitude0
mul.v.v
pop.v.v local.sinmove_x
push.v self.sinerx
push.v self.siner_direction0
pushloc.v local.sinmove_x
call.i lengthdir_x(argc=2)
add.v.v
pop.v.v self.sinerx
push.v self.sinery
push.v self.siner_direction0
pushloc.v local.sinmove_x
call.i lengthdir_y(argc=2)
add.v.v
pop.v.v self.sinery
push.v self.sinerx
pop.v.v local.xpos
push.v self.sinery
pop.v.v local.ypos
push.v self.siner1
push.v self.siner_add1
add.v.v
pop.v.v self.siner1
push.v self.siner1
call.i cos(argc=1)
push.v self.siner_amplitude1
mul.v.v
pop.v.v local.sinmove_y
push.v self.sinerx
push.v self.siner_direction1
pushloc.v local.sinmove_y
call.i lengthdir_x(argc=2)
add.v.v
pop.v.v self.sinerx
push.v self.sinery
push.v self.siner_direction1
pushloc.v local.sinmove_y
call.i lengthdir_y(argc=2)
add.v.v
pop.v.v self.sinery
push.v self.sinerx
pop.v.v local.xpos
push.v self.sinery
pop.v.v local.ypos
pushi.e 103
pushenv [9]

:[8]
push.v self.x
pushloc.v local.xpos
add.v.v
pop.v.v self.x
push.v self.y
pushloc.v local.ypos
add.v.v
pushi.e 6
sub.i.v
pop.v.v self.y

:[9]
popenv [8]
push.v 103.y
pushi.e -100
cmp.i.v LTE
bf [11]

:[10]
pushi.e 99
pop.v.i self.con

:[11]
push.v self.remove_shine
conv.v.b
bf [end]

:[12]
pushi.e 0
pop.v.b self.remove_shine
push.v self.shine
pushi.e -4
cmp.i.v NEQ
bf [end]

:[13]
push.v self.shine
pushi.e -9
pushenv [15]

:[14]
call.i instance_destroy(argc=0)
popz.v

:[15]
popenv [14]

:[end]