.localvar 2 arguments

:[0]
b [13]

> gml_Script_scr_enemy_drawhurt_generic (locals=0, argc=0)
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
pushi.e 0
pop.v.i self.state
b [12]

:[3]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monster
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
call.i gml_Script_scr_defeatrun(argc=0)
popz.v

:[5]
push.v self.hurtshake
pushi.e 1
add.i.v
pop.v.v self.hurtshake
push.v self.hurtshake
pushi.e 1
cmp.i.v GT
bf [11]

:[6]
push.v self.shakex
pushi.e 0
cmp.i.v GT
bf [8]

:[7]
push.v self.shakex
pushi.e 1
sub.i.v
pop.v.v self.shakex

:[8]
push.v self.shakex
pushi.e 0
cmp.i.v LT
bf [10]

:[9]
push.v self.shakex
pushi.e 1
add.i.v
pop.v.v self.shakex

:[10]
push.v self.shakex
neg.v
pop.v.v self.shakex
pushi.e 0
pop.v.i self.hurtshake

:[11]
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

:[12]
exit.i

:[13]
push.i [function]gml_Script_scr_enemy_drawhurt_generic
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_enemy_drawhurt_generic
popz.v

:[end]