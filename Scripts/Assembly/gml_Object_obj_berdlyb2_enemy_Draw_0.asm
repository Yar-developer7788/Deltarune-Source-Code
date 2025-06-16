.localvar 2 arguments

:[0]
push.v self.state
pushi.e 3
cmp.i.v EQ
bf [24]

:[1]
push.v self.hurttimer
pushi.e 1
sub.i.v
pop.v.v self.hurttimer
push.v self.hurttimer
pushi.e 0
cmp.i.v LT
bf [3]

:[2]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monster
pushi.e 1
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
pushi.e 0
pop.v.i self.state
b [24]

:[6]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monster
pushi.e 0
cmp.i.v EQ
bf [8]

:[7]
pushi.e 64
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [9]

:[8]
push.e 0

:[9]
bf [17]

:[10]
pushi.e 702
pop.v.i self.hurtsprite
push.v self.endbattle
pushi.e 0
cmp.i.v EQ
bf [17]

:[11]
pushi.e 1
pop.v.i self.endbattle
pushi.e -5
pushi.e 915
push.v [array]self.flag
pushi.e 5
cmp.i.v EQ
bf [13]

:[12]
pushi.e -5
pushi.e 916
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
b [14]

:[13]
push.e 0

:[14]
bf [16]

:[15]
pushi.e 43
conv.i.v
push.v 375.y
push.v 375.x
call.i gml_Script_instance_create(argc=3)
popz.v
call.i gml_Script_scr_sideb_fail(argc=0)
popz.v

:[16]
call.i gml_Script_scr_wincombat(argc=0)
popz.v

:[17]
push.v self.hurtshake
pushi.e 1
add.i.v
pop.v.v self.hurtshake
push.v self.hurtshake
pushi.e 1
cmp.i.v GT
bf [23]

:[18]
push.v self.shakex
pushi.e 0
cmp.i.v GT
bf [20]

:[19]
push.v self.shakex
pushi.e 1
sub.i.v
pop.v.v self.shakex

:[20]
push.v self.shakex
pushi.e 0
cmp.i.v LT
bf [22]

:[21]
push.v self.shakex
pushi.e 1
add.i.v
pop.v.v self.shakex

:[22]
push.v self.shakex
neg.v
pop.v.v self.shakex
pushi.e 0
pop.v.i self.hurtshake

:[23]
pushi.e 1
conv.i.v
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.hurtspriteoffy
add.v.v
push.v self.x
push.v self.shakex
add.v.v
push.v self.hurtspriteoffx
add.v.v
pushi.e 0
conv.i.v
push.v self.hurtsprite
call.i draw_sprite_ext(argc=9)
popz.v

:[24]
push.d 0.16666666666666666
conv.d.v
call.i gml_Script_scr_enemy_drawidle_generic(argc=1)
popz.v
push.v self.becomeflash
pushi.e 0
cmp.i.v EQ
bf [26]

:[25]
pushi.e 0
pop.v.i self.flash

:[26]
pushi.e 0
pop.v.i self.becomeflash

:[end]