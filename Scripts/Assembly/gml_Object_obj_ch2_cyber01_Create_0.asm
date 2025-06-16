.localvar 2 arguments

:[0]
pushi.e -1
pop.v.i self.con
pushi.e 0
pop.v.b self.shortened
pushi.e -1
pop.v.i self.tempcon
pushi.e 1
pop.v.b self.visible
pushi.e 0
pop.v.i self.customcon
pushi.e 0
pop.v.i self.steptimer
pushi.e 0
pop.v.i self.floattimer
pushglb.v global.chapter
pushi.e 2
cmp.i.v NEQ
bt [2]

:[1]
pushglb.v global.plot
pushi.e 60
cmp.i.v GTE
b [3]

:[2]
push.e 1

:[3]
bf [5]

:[4]
pushi.e 1144
conv.i.v
pushi.e 200
conv.i.v
pushi.e 1880
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.nobacktracking
pushi.e 1
push.v self.nobacktracking
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 7
push.v self.nobacktracking
pushi.e -9
pop.v.i [stacktop]self.image_yscale
call.i instance_destroy(argc=0)
popz.v
b [end]

:[5]
pushi.e -5
pushi.e 27
push.v [array]self.tempflag
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
pushi.e 1
pop.v.b self.shortened

:[7]
pushi.e 1779
conv.i.v
pushbltn.v builtin.room_height
pushi.e 2
conv.i.d
div.d.v
pushi.e 80
sub.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 700
add.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.nisesweet
push.d 0.25
push.v self.nisesweet
pushi.e -9
pop.v.d [stacktop]self.image_speed
pushi.e 1759
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 200
sub.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.nisehatguy
pushi.e 0
push.v self.nisehatguy
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushi.e 715
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 200
sub.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.nisekk
push.v self.nisekk
pushi.e -9
pushenv [9]

:[8]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[9]
popenv [8]
pushi.e 498
conv.i.v
push.v self.nisesweet
pushi.e -9
push.v [stacktop]self.y
pushi.e 64
add.i.v
push.v self.nisesweet
pushi.e -9
push.v [stacktop]self.x
pushi.e 40
sub.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.djtable
push.d 0.25
push.v self.djtable
pushi.e -9
pop.v.d [stacktop]self.image_speed
pushbltn.v builtin.room_height
pushi.e 2
conv.i.d
div.d.v
pushi.e 80
sub.i.v
pop.v.v self.targy

:[end]