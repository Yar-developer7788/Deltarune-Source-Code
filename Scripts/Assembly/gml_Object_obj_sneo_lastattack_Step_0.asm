.localvar 2 arguments

:[0]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.x
pop.v.v self.remx
push.v self.movetimer
push.e 1
add.i.v
pop.v.v self.movetimer
pushi.e 1
pop.v.i self.init

:[2]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [14]

:[3]
push.v self.movetimer
push.e 1
add.i.v
pop.v.v self.movetimer
push.v self.movetimer
pushi.e 14
cmp.i.v LTE
bf [5]

:[4]
push.d 0.122
conv.d.v
pushi.e -1
push.v self.ycurrent
conv.v.i
push.v [array]self.yspot
push.v self.y
call.i lerp(argc=3)
pop.v.v self.y
b [7]

:[5]
pushi.e 0
pop.v.i self.movetimer
push.v self.count
push.e 1
add.i.v
pop.v.v self.count
push.v self.ycurrent
push.e 1
add.i.v
pop.v.v self.ycurrent
push.v self.ycurrent
pushi.e 2
cmp.i.v GTE
bf [7]

:[6]
pushi.e 0
pop.v.i self.ycurrent

:[7]
push.v self.shottimer
push.e 1
add.i.v
pop.v.v self.shottimer
push.v self.shottimer
pushi.e 15
conv.i.v
call.i choose(argc=1)
cmp.v.v GTE
bf [9]

:[8]
push.v self.y
pop.v.v self.lastshoty
pushi.e 633
conv.i.v
push.v self.y
push.v self.y_offset
add.v.v
push.v self.x
pushi.e 100
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bigshot
pushi.e -6
push.v self.bigshot
pushi.e -9
pop.v.i [stacktop]self.hspeed
push.d -0.25
push.v self.bigshot
pushi.e -9
pop.v.d [stacktop]self.friction
pushi.e 0
push.v self.count
pushi.e 4
conv.i.d
div.d.v
add.v.i
pop.v.v self.shottimer
pushi.e 1
pop.v.i self.shotmouthopen
pushi.e 0
pop.v.i self.shotmouthopentimer
pushi.e 70
pushi.e 5
conv.i.v
call.i irandom(argc=1)
add.v.i
pop.v.v self.rand
push.d 0.7
conv.d.v
push.d 0.75
conv.d.v
pushi.e 136
conv.i.v
call.i gml_Script_snd_play_x(argc=3)
popz.v

:[9]
push.v self.count
pushi.e 10
cmp.i.v EQ
bt [11]

:[10]
push.v self.endattack
pushi.e 1
cmp.i.v EQ
b [12]

:[11]
push.e 1

:[12]
bf [14]

:[13]
pushi.e 1
pop.v.i self.con
pushi.e 0
pop.v.i self.timer
pushi.e 1
pop.v.i self.endattack

:[14]
push.v self.shotmouthopen
pushi.e 1
cmp.i.v EQ
bf [17]

:[15]
push.v self.shotmouthopentimer
push.e 1
add.i.v
pop.v.v self.shotmouthopentimer
push.v self.shotmouthopentimer
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
neg.v
pushi.e 30
mul.i.v
pop.v.v self.mouthtopy
push.v self.mouthtopy
neg.v
pop.v.v self.mouthbottomy
push.v self.mouthtopy
pop.v.v self.mouthangle
push.v self.mouthbottomy
pushi.e 0
cmp.i.v LT
bf [17]

:[16]
pushi.e 0
pop.v.i self.mouthangle
pushi.e 0
pop.v.i self.mouthtopy
pushi.e 0
pop.v.i self.mouthbottomy
pushi.e 0
pop.v.i self.shotmouthopentimer
pushi.e 0
pop.v.i self.shotmouthopen

:[17]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [end]

:[18]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.d 0.1
conv.d.v
pushi.e -1
pushi.e 0
push.v [array]self.yspot
pushi.e -1
pushi.e 1
push.v [array]self.yspot
add.v.v
pushi.e 2
conv.i.d
div.d.v
push.v self.y
call.i lerp(argc=3)
pop.v.v self.y
push.v self.timer
pushi.e 10
cmp.i.v LT
bf [20]

:[19]
push.d 0.2
conv.d.v
pushi.e 0
conv.i.v
push.v self.mouthbottomy
call.i lerp(argc=3)
pop.v.v self.mouthbottomy
push.d 0.2
conv.d.v
pushi.e 20
conv.i.v
push.v self.mouthtopy
call.i lerp(argc=3)
pop.v.v self.mouthtopy

:[20]
push.v self.timer
pushi.e 10
cmp.i.v GTE
bf [22]

:[21]
push.v self.timer
pushi.e 25
cmp.i.v LT
b [23]

:[22]
push.e 0

:[23]
bf [25]

:[24]
push.d 0.04
conv.d.v
pushi.e 120
conv.i.v
push.v self.mouthbottomy
call.i lerp(argc=3)
pop.v.v self.mouthbottomy
push.d 0.04
conv.d.v
pushi.e -100
conv.i.v
push.v self.mouthtopy
call.i lerp(argc=3)
pop.v.v self.mouthtopy
push.d 0.05
conv.d.v
pushi.e -45
conv.i.v
push.v self.mouthangle
call.i lerp(argc=3)
pop.v.v self.mouthangle

:[25]
push.v self.timer
pushi.e 10
cmp.i.v GTE
bf [27]

:[26]
push.v self.mouthtopy
push.v self.timer
pushi.e 2
mul.i.v
call.i sin(argc=1)
pushi.e 4
mul.i.v
add.v.v
pop.v.v self.mouthtopy
push.v self.mouthbottomy
push.v self.timer
pushi.e 2
mul.i.v
call.i sin(argc=1)
pushi.e 4
mul.i.v
sub.v.v
pop.v.v self.mouthbottomy
push.v self.mouthangle
push.v self.timer
call.i sin(argc=1)
pushi.e 5
mul.i.v
sub.v.v
pop.v.v self.mouthangle
push.v self.x
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
call.i random_range(argc=2)
add.v.v
pop.v.v self.x
push.v self.y
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
call.i random_range(argc=2)
add.v.v
pop.v.v self.y

:[27]
push.v self.timer
pushi.e 11
cmp.i.v EQ
bf [end]

:[28]
pushi.e 633
conv.i.v
push.v self.y
push.v self.y_offset
add.v.v
push.v self.x
pushi.e 131
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bigshot
pushi.e 0
push.v self.bigshot
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 0
push.v self.bigshot
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 2028
push.v self.bigshot
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 0
pop.v.i self.shottimer
push.d 0.4
conv.d.v
push.d 0.7
conv.d.v
pushi.e 136
conv.i.v
call.i gml_Script_snd_play_x(argc=3)
popz.v
push.d 0.6
conv.d.v
push.d 0.7
conv.d.v
pushi.e 136
conv.i.v
call.i gml_Script_snd_play_x(argc=3)
popz.v
push.d 0.8
conv.d.v
push.d 0.7
conv.d.v
pushi.e 136
conv.i.v
call.i gml_Script_snd_play_x(argc=3)
popz.v
push.d 0.9
conv.d.v
push.d 0.7
conv.d.v
pushi.e 136
conv.i.v
call.i gml_Script_snd_play_x(argc=3)
popz.v

:[end]