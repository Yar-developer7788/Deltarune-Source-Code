.localvar 2 arguments
.localvar 11573 _mytbullet 3172

:[0]
b [25]

> gml_Script_scr_tb_make (locals=1, argc=5)
:[1]
pushi.e 1092
conv.i.v
push.v self.y
push.v arg.argument0
sub.v.v
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v local._mytbullet
pushloc.v local._mytbullet
pushi.e -9
pushenv [23]

:[2]
push.v arg.argument1
pop.v.v self.spin
push.v arg.argument2
pop.v.v self.spinrate
push.v arg.argument3
pop.v.v self.hitType
push.v other.id
pop.v.v self.master
push.v self.hitType
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
push.i 16711935
pop.v.i self.colClose
push.i 16711680
pop.v.i self.colFar
push.i 16711935
pop.v.i self.image_blend

:[4]
push.v self.hitType
pushi.e 2
cmp.i.v EQ
bf [6]

:[5]
push.i 65280
pop.v.i self.colClose
push.i 16711680
pop.v.i self.colFar
push.i 65280
pop.v.i self.image_blend

:[6]
push.v self.hitType
pushi.e 3
cmp.i.v EQ
bf [8]

:[7]
push.i 16728128
pop.v.i self.colClose
push.i 8388608
pop.v.i self.colFar
push.v self.colClose
pop.v.v self.image_blend

:[8]
push.v self.hitType
pushi.e 5
cmp.i.v EQ
bf [10]

:[9]
push.i 4150655
pop.v.i self.image_blend
push.v self.image_blend
pop.v.v self.colClose
push.v self.image_blend
pop.v.v self.colFar

:[10]
push.v self.hitType
pushi.e 4
cmp.i.v EQ
bf [12]

:[11]
pushi.e 2567
pop.v.i self.sprite_index
pushi.e 20
pop.v.i self.bulletCollisionAngle

:[12]
push.v arg.argument4
pop.v.v self.lineToCenter
push.v self.hitType
pushi.e 3
cmp.i.v EQ
bt [14]

:[13]
push.v self.hitType
pushi.e 5
cmp.i.v EQ
b [15]

:[14]
push.e 1

:[15]
bf [17]

:[16]
pushi.e 0
pop.v.b self.lineToCenter

:[17]
push.v self.hitType
pushi.e 1
cmp.i.v EQ
bt [19]

:[18]
push.v self.hitType
pushi.e 2
cmp.i.v EQ
b [20]

:[19]
push.e 1

:[20]
bf [22]

:[21]
pushi.e 2566
pop.v.i self.sprite_index
pushi.e 1
pop.v.i self.groundForgiveness
pushi.e 28
pop.v.i self.bulletCollisionAngle
pushi.e 80
pop.v.i self.bulletHitHeight

:[22]
push.v self.sprite_index
call.i sprite_get_width(argc=1)
pop.v.v self.spriteWidthRoot
push.v self.sprite_index
call.i sprite_get_width(argc=1)
pop.v.v self.spriteHeightRoot

:[23]
popenv [2]
pushloc.v local._mytbullet
ret.v

:[24]
exit.i

:[25]
push.i [function]gml_Script_scr_tb_make
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_tb_make
popz.v

:[end]