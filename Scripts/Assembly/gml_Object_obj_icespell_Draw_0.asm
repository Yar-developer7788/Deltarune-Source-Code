.localvar 2 arguments

:[0]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 252
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[2]
push.v self.timer
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
push.i 169856
setowner.e
pushi.e 388
conv.i.v
push.v self.y
pushi.e 20
sub.i.v
push.v self.x
pushi.e 25
sub.i.v
call.i gml_Script_instance_create(argc=3)
pushi.e -1
pushi.e 0
pop.v.v [array]self.hex

:[4]
push.v self.timer
pushi.e 4
cmp.i.v EQ
bf [6]

:[5]
pushi.e 388
conv.i.v
push.v self.y
pushi.e 20
sub.i.v
push.v self.x
pushi.e 25
add.i.v
call.i gml_Script_instance_create(argc=3)
pushi.e -1
pushi.e 1
pop.v.v [array]self.hex

:[6]
push.v self.timer
pushi.e 7
cmp.i.v EQ
bf [8]

:[7]
pushi.e 388
conv.i.v
push.v self.y
pushi.e 20
add.i.v
push.v self.x
call.i gml_Script_instance_create(argc=3)
pushi.e -1
pushi.e 2
pop.v.v [array]self.hex

:[8]
push.v self.timer
pushi.e 10
cmp.i.v EQ
bf [16]

:[9]
pushi.e 0
pop.v.i self.i

:[10]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [16]

:[11]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.hex
pushi.e -9
pushenv [15]

:[12]
pushi.e 0
pop.v.i self.j

:[13]
push.v self.j
pushi.e 6
cmp.i.v LT
bf [15]

:[14]
push.i 169867
setowner.e
pushi.e 388
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pushi.e -1
push.v self.j
conv.v.i
pop.v.v [array]self.hexhex
push.i 133650
setowner.e
push.d 0.75
pushi.e -1
push.v self.j
conv.v.i
push.v [array]self.hexhex
pushi.e -9
pop.v.d [stacktop]self.image_xscale
push.i 133651
setowner.e
push.d 0.75
pushi.e -1
push.v self.j
conv.v.i
push.v [array]self.hexhex
pushi.e -9
pop.v.d [stacktop]self.image_yscale
push.i 231308
setowner.e
pushi.e 1
pushi.e -1
push.v self.j
conv.v.i
push.v [array]self.hexhex
pushi.e -9
pop.v.i [stacktop]self.con
push.i 133625
setowner.e
pushi.e 60
push.v self.j
mul.v.i
pushi.e -1
push.v self.j
conv.v.i
push.v [array]self.hexhex
pushi.e -9
pop.v.v [stacktop]self.direction
push.i 133626
setowner.e
pushi.e 8
pushi.e -1
push.v self.j
conv.v.i
push.v [array]self.hexhex
pushi.e -9
pop.v.i [stacktop]self.speed
push.i 133627
setowner.e
push.d 0.2
pushi.e -1
push.v self.j
conv.v.i
push.v [array]self.hexhex
pushi.e -9
pop.v.d [stacktop]self.friction
push.v self.j
push.e 1
add.i.v
pop.v.v self.j
b [13]

:[15]
popenv [12]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [10]

:[16]
push.v self.timer
pushi.e 11
cmp.i.v EQ
bf [24]

:[17]
pushi.e -1
pushi.e 0
push.v [array]self.hex
pushi.e -9
pushenv [19]

:[18]
call.i instance_destroy(argc=0)
popz.v

:[19]
popenv [18]
pushi.e -1
pushi.e 1
push.v [array]self.hex
pushi.e -9
pushenv [21]

:[20]
call.i instance_destroy(argc=0)
popz.v

:[21]
popenv [20]
pushi.e -1
pushi.e 2
push.v [array]self.hex
pushi.e -9
pushenv [23]

:[22]
call.i instance_destroy(argc=0)
popz.v

:[23]
popenv [22]

:[24]
push.v self.timer
pushi.e 15
cmp.i.v EQ
bf [34]

:[25]
pushglb.v global.fighting
pushi.e 1
cmp.i.v EQ
bf [34]

:[26]
push.i 231593
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.star
conv.v.i
pop.v.v [array]self.hittarget
push.v self.damage
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.monsterhp
cmp.v.v GTE
bf [30]

:[27]
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.monsterinstance
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [30]

:[28]
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.monsterinstance
pushi.e -9
push.v [stacktop]self.freezable
pushi.e 1
cmp.i.v EQ
bf [30]

:[29]
push.i 231204
setowner.e
pushi.e 6
conv.i.v
pushi.e -5
pushi.e 51
push.v self.star
add.v.i
conv.v.i
pop.v.v [array]self.flag

:[30]
push.v self.damage
push.v self.star
call.i gml_Script_scr_damage_enemy(argc=2)
popz.v
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.monster
pushi.e 1
cmp.i.v EQ
bf [34]

:[31]
push.v self.target
pushi.e -9
pushenv [33]

:[32]
call.i gml_Script_scr_oflash(argc=0)
pop.v.v self.__of

:[33]
popenv [32]

:[34]
push.v self.timer
pushi.e 10
cmp.i.v GTE
bf [36]

:[35]
push.v self.timer
pushi.e 30
cmp.i.v LTE
b [37]

:[36]
push.e 0

:[37]
bf [39]

:[38]
push.d 2.2
push.v self.timer
pushi.e 10
conv.i.d
div.d.v
sub.v.d
call.i draw_set_alpha(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 1
conv.b.v
pushi.e 60
push.v self.timer
pushi.e 6
mul.i.v
sub.v.i
push.v self.y
push.v self.x
call.i draw_circle(argc=4)
popz.v
pushi.e 1
conv.b.v
pushi.e 61
push.v self.timer
pushi.e 6
mul.i.v
sub.v.i
push.v self.y
push.v self.x
call.i draw_circle(argc=4)
popz.v
pushi.e 1
conv.b.v
pushi.e 62
push.v self.timer
pushi.e 6
mul.i.v
sub.v.i
push.v self.y
push.v self.x
call.i draw_circle(argc=4)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[39]
push.v self.timer
pushi.e 60
cmp.i.v EQ
bf [end]

:[40]
call.i instance_destroy(argc=0)
popz.v

:[end]