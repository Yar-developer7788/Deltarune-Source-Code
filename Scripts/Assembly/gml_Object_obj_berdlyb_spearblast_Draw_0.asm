.localvar 2 arguments
.localvar 24434 muzzleflash 11232

:[0]
push.v self.firedShots
push.v self.bulletCount
cmp.v.v GTE
bf [2]

:[1]
exit.i

:[2]
push.v self.progressLoop
push.v self.pathLifetime
pushi.e 1
add.i.v
cmp.v.v GT
bf [14]

:[3]
push.v self.timer
push.v self.shootSpeed
cmp.v.v GTE
bf [12]

:[4]
push.v self.firedShots
pushi.e 0
cmp.i.v EQ
bf [6]

:[5]
pushi.e 491
conv.i.v
push.v self.y
push.v self.x
pushi.e 21
sub.i.v
call.i gml_Script_scr_bullet_create(argc=3)
pop.v.v local.muzzleflash
pushi.e 180
pushloc.v local.muzzleflash
pushi.e -9
pop.v.i [stacktop]self.image_angle
pushloc.v local.muzzleflash
pushi.e -9
dup.i 4
push.v [stacktop]self.depth
pushi.e 2
sub.i.v
pop.i.v [stacktop]self.depth

:[6]
pushi.e 489
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_scr_bullet_create(argc=3)
pop.v.v self.d
push.v self.grazepoints
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.grazepoints
push.v self.childgraze
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.childgraze
push.d 0.02
conv.d.v
push.v self.mypath
call.i path_get_y(argc=2)
push.d 0.02
conv.d.v
push.v self.mypath
call.i path_get_x(argc=2)
push.v self.y
push.v self.x
call.i point_direction(argc=4)
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.direction
pushi.e 0
pop.v.i self.timer
push.v self.mypath
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.bulletPath
push.v self.special
pushi.e 1
cmp.i.v GTE
bf [8]

:[7]
push.v self.firedShots
pushi.e 1
cmp.i.v EQ
b [9]

:[8]
push.e 0

:[9]
bf [11]

:[10]
push.v self.special
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.spawnchild

:[11]
push.v self.firedShots
push.e 1
add.i.v
pop.v.v self.firedShots
b [13]

:[12]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer

:[13]
exit.i

:[14]
push.v self.progressLoop
push.v self.pathLifetime
cmp.v.v LT
bf [16]

:[15]
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
b [17]

:[16]
push.v self.pathLifetime
pushi.e 1
add.i.v
push.v self.progressLoop
sub.v.v
call.i draw_set_alpha(argc=1)
popz.v

:[17]
push.v self.progressLoop
pop.v.v self.loopStart
push.v self.progressLoop
pushi.e 1
cmp.i.v GT
bf [19]

:[18]
pushi.e 1
pop.v.i self.loopStart

:[19]
pushi.e 0
pop.v.i self.colorProgress
push.v self.progressLoop
pushi.e 1
cmp.i.v GT
bf [23]

:[20]
push.v self.progressLoop
pushi.e 2
cmp.i.v GT
bf [22]

:[21]
pushi.e 1
pop.v.i self.colorProgress
b [23]

:[22]
push.v self.progressLoop
pushi.e 1
sub.i.v
pop.v.v self.colorProgress

:[23]
push.v self.loopStart
pop.v.v self.i

:[24]
push.v self.i
pushi.e 0
cmp.i.v GT
bf [28]

:[25]
push.v self.colorProgress
pushi.e 255
conv.i.v
push.i 16777215
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.firstColor
push.v self.colorProgress
pushi.e 1
cmp.i.v LT
bf [27]

:[26]
push.v self.colorProgress
push.d 0.05
add.d.v
pop.v.v self.colorProgress

:[27]
push.v self.colorProgress
pushi.e 255
conv.i.v
push.i 16777215
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.secondColor
push.v self.i
push.v self.mypath
call.i path_get_x(argc=2)
pop.v.v self.x1
push.v self.i
push.v self.mypath
call.i path_get_y(argc=2)
pop.v.v self.y1
push.v self.i
push.d 0.0125
sub.d.v
push.v self.mypath
call.i path_get_x(argc=2)
pop.v.v self.x2
push.v self.i
push.d 0.0125
sub.d.v
push.v self.mypath
call.i path_get_y(argc=2)
pop.v.v self.y2
push.v self.secondColor
push.v self.firstColor
push.v self.y2
push.v self.x2
push.v self.y1
push.v self.x1
call.i draw_line_color(argc=6)
popz.v
push.v self.i
push.d 0.0125
sub.d.v
pop.v.v self.i
b [24]

:[28]
push.v self.progressLoop
push.v self.pathLifetime
pushi.e 1
add.i.v
cmp.v.v EQ
bf [29]

:[29]
push.v self.progressLoop
push.v self.pathLifetime
cmp.v.v GTE
bf [31]

:[30]
push.v self.progressLoop
push.v self.fadeSpeed
add.v.v
pop.v.v self.progressLoop
b [32]

:[31]
push.v self.progressLoop
push.d 0.1
add.d.v
pop.v.v self.progressLoop

:[32]
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[end]