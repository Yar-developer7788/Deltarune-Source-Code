.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.read
pushi.e 0
pop.v.i self.tempvar
pushbltn.v builtin.room
pushi.e 319
cmp.i.v EQ
bf [end]

:[1]
pushi.e -5
pushi.e 100
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [end]

:[2]
pushi.e 4173
conv.i.v
push.v self.y
pushi.e 6
add.i.v
push.v self.x
pushi.e 10
add.i.v
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.shine
push.d 0.1
push.v self.shine
pushi.e -9
pop.v.d [stacktop]self.image_speed

:[end]