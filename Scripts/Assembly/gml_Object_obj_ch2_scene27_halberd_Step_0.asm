.localvar 2 arguments
.localvar 33534 goalx 16876
.localvar 10416 goaly 16877
.localvar 33535 thisid 16878

:[0]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.siner
pushi.e 1
pop.v.i self.con
pushi.e 0
pop.v.i self.float
pushi.e 1
pop.v.i self.init
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index

:[2]
push.v self.float
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
push.v self.siner
push.e 1
add.i.v
pop.v.v self.siner
push.v self.y
push.v self.siner
pushi.e 8
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.3
mul.d.v
sub.v.v
pop.v.v self.y

:[4]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
push.s "out"@14331
conv.s.v
pushi.e 2
conv.i.v
pushi.e 30
conv.i.v
push.v self.y
push.v self.y
pushi.e 20
sub.i.v
push.s "y"@52
conv.s.v
call.i gml_Script_scr_lerpvar(argc=6)
popz.v
push.s "out"@14331
conv.s.v
pushi.e 2
conv.i.v
pushi.e 30
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.s "image_alpha"@6548
conv.s.v
call.i gml_Script_scr_lerpvar(argc=6)
popz.v
pushi.e 2
pop.v.i self.con

:[6]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [9]

:[7]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 30
cmp.i.v GTE
bf [9]

:[8]
pushi.e 1
pop.v.i self.float
pushi.e 3
pop.v.i self.con
pushi.e 0
pop.v.i self.timer

:[9]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [15]

:[10]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 15
cmp.i.v GTE
bf [12]

:[11]
call.i gml_Script_scr_oflash(argc=0)
popz.v
pushi.e 0
pop.v.i self.timer

:[12]
pushi.e 360
conv.i.v
call.i random(argc=1)
push.v self.sprite_width
pushi.e 2
mul.i.v
call.i lengthdir_x(argc=2)
pop.v.v local.goalx
pushi.e 360
conv.i.v
call.i random(argc=1)
push.v self.sprite_height
call.i lengthdir_y(argc=2)
pop.v.v local.goaly
push.v self.id
pop.v.v local.thisid
pushi.e 353
conv.i.v
push.v self.y
pushloc.v local.goaly
add.v.v
push.v self.x
pushloc.v local.goalx
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.ball
pushi.e 377
push.v self.ball
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 2
push.v self.ball
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.ball
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 0
push.v self.ball
pushi.e -9
pop.v.i [stacktop]self.image_alpha
push.d -0.1
push.v self.ball
pushi.e -9
pop.v.d [stacktop]self.fade
push.d -0.08
push.v self.ball
pushi.e -9
pop.v.d [stacktop]self.xrate
push.d -0.08
push.v self.ball
pushi.e -9
pop.v.d [stacktop]self.yrate
push.v self.ball
pushi.e -9
pushenv [14]

:[13]
push.s "in"@9785
conv.s.v
pushi.e 2
conv.i.v
pushi.e 20
conv.i.v
pushloc.v local.thisid
pushi.e -9
push.v [stacktop]self.x
push.v self.x
push.s "x"@50
conv.s.v
call.i gml_Script_scr_lerpvar(argc=6)
popz.v
push.s "in"@9785
conv.s.v
pushi.e 2
conv.i.v
pushi.e 20
conv.i.v
pushloc.v local.thisid
pushi.e -9
push.v [stacktop]self.y
pushloc.v local.goaly
pushi.e 4
conv.i.d
div.d.v
add.v.v
push.v self.y
push.s "y"@52
conv.s.v
call.i gml_Script_scr_lerpvar(argc=6)
popz.v
pushi.e 20
conv.i.v
push.v self.id
call.i gml_Script_scr_doom(argc=2)
popz.v

:[14]
popenv [13]

:[15]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [end]

:[16]
pushi.e 924
pushenv [18]

:[17]
call.i instance_destroy(argc=0)
popz.v

:[18]
popenv [17]
pushi.e 352
pushenv [20]

:[19]
pushi.e 1
pop.v.i self.gravity
pushi.e 1
pushi.e 2
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.vspeed

:[20]
popenv [19]
push.s "in"@9785
conv.s.v
pushi.e 2
conv.i.v
pushi.e 30
conv.i.v
push.v self.y
pushi.e 20
sub.i.v
push.v self.y
push.s "y"@52
conv.s.v
call.i gml_Script_scr_lerpvar(argc=6)
popz.v
push.s "in"@9785
conv.s.v
pushi.e 2
conv.i.v
pushi.e 30
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.s "image_alpha"@6548
conv.s.v
call.i gml_Script_scr_lerpvar(argc=6)
popz.v
pushi.e 40
conv.i.v
push.v self.id
call.i gml_Script_scr_doom(argc=2)
popz.v
pushi.e 6
pop.v.i self.con

:[end]