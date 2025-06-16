.localvar 2 arguments
.localvar 19882 _x 19799
.localvar 19881 _y 19800

:[0]
push.v self.myinteract
pushi.e 3
cmp.i.v EQ
bf [5]

:[1]
push.v self.mydialoguer
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [5]

:[2]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.myinteract
pushi.e 82
pushenv [4]

:[3]
pushi.e 5
pop.v.i self.onebuffer

:[4]
popenv [3]

:[5]
push.v self.myinteract
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
pushi.e 1
pop.v.i self.con
pushi.e 0
pop.v.i self.myinteract
pushi.e 99
pop.v.i self.timer
pushi.e 74
pop.v.i self.bucket

:[10]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [20]

:[11]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 5
cmp.i.v GTE
bf [20]

:[12]
pushi.e 177
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 2694
conv.i.v
push.v self.bucket
pushi.e -9
push.v [stacktop]self.y
push.v self.bucket
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.mouse
push.v self.bucket
pushi.e -9
push.v [stacktop]self.depth
pushi.e 10
add.i.v
push.v self.mouse
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.x
pushi.e 20
add.i.v
pop.v.v local._x
push.v self.y
pushi.e 20
add.i.v
pop.v.v local._y
pushi.e 2
push.v self.mouse
pushi.e -9
pop.v.i [stacktop]self.image_alpha
push.v self.mouse
pushi.e -9
pushenv [14]

:[13]
push.s "out"@14331
conv.s.v
pushi.e 2
conv.i.v
pushi.e 15
conv.i.v
pushloc.v local._x
push.v self.x
push.s "x"@50
conv.s.v
call.i gml_Script_scr_lerpvar(argc=6)
popz.v

:[14]
popenv [13]
push.v self.mouse
pushi.e -9
pushenv [16]

:[15]
push.s "out"@14331
conv.s.v
pushi.e 2
conv.i.v
pushi.e 15
conv.i.v
pushloc.v local._y
push.v self.y
push.s "y"@52
conv.s.v
call.i gml_Script_scr_lerpvar(argc=6)
popz.v

:[16]
popenv [15]
push.v self.mouse
pushi.e -9
pushenv [18]

:[17]
push.s "out"@14331
conv.s.v
pushi.e 2
conv.i.v
pushi.e 25
conv.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
push.s "image_alpha"@6548
conv.s.v
call.i gml_Script_scr_lerpvar(argc=6)
popz.v

:[18]
popenv [17]
pushi.e 25
conv.i.v
push.v self.mouse
call.i gml_Script_scr_doom(argc=2)
popz.v
pushi.e 0
pop.v.i self.timer
push.v self.bucket
pushi.e -9
dup.i 4
push.v [stacktop]self.miceheld
push.e 1
sub.i.v
pop.i.v [stacktop]self.miceheld
push.v self.micerequired
push.e 1
sub.i.v
pop.v.v self.micerequired
push.v self.bucket
pushi.e -9
push.v [stacktop]self.miceheld
pushi.e 0
cmp.i.v LTE
bf [20]

:[19]
pushi.e 2
pop.v.i self.con
pushi.e 0
pop.v.i self.timer

:[20]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [end]

:[21]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 30
cmp.i.v EQ
bf [23]

:[22]
call.i gml_Script_scr_shakescreen(argc=0)
popz.v
pushi.e 1
pop.v.i self.completed
pushi.e 62
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[23]
push.v self.timer
pushi.e 40
cmp.i.v EQ
bf [end]

:[24]
pushi.e 3
pop.v.i self.con
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing

:[end]