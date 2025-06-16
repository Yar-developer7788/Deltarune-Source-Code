.localvar 2 arguments

:[0]
push.v self.drawtype
pushi.e 0
cmp.i.v EQ
bf [22]

:[1]
push.d 0.25
pop.v.d self.image_speed
pushi.e 0
pop.v.i self.rot
push.v self.vertState
pushi.e 0
cmp.i.v EQ
bf [18]

:[2]
call.i gml_Script_left_h(argc=0)
conv.v.b
bf [4]

:[3]
pushi.e 8
pop.v.i self.raheight
pushi.e -8
pop.v.i self.suheight
pushi.e 15
pop.v.i self.rot

:[4]
call.i gml_Script_right_h(argc=0)
conv.v.b
bf [6]

:[5]
pushi.e -8
pop.v.i self.raheight
pushi.e 8
pop.v.i self.suheight
pushi.e -15
pop.v.i self.rot

:[6]
call.i gml_Script_right_h(argc=0)
conv.v.b
bf [8]

:[7]
call.i gml_Script_left_h(argc=0)
conv.v.b
b [9]

:[8]
push.e 0

:[9]
bt [14]

:[10]
call.i gml_Script_right_h(argc=0)
conv.v.b
not.b
bf [12]

:[11]
call.i gml_Script_left_h(argc=0)
conv.v.b
not.b
b [13]

:[12]
push.e 0

:[13]
b [15]

:[14]
push.e 1

:[15]
bf [17]

:[16]
pushi.e 0
pop.v.i self.raheight
pushi.e 0
pop.v.i self.suheight
pushi.e 0
pop.v.i self.rot

:[17]
b [19]

:[18]
pushi.e 0
pop.v.i self.raheight
pushi.e 0
pop.v.i self.suheight
pushi.e 0
pop.v.i self.rot

:[19]
push.v self.drawcustom
pushi.e 0
cmp.i.v EQ
bf [21]

:[20]
pushi.e 651
pop.v.i self.krspr
pushi.e 845
pop.v.i self.suspr
pushi.e 1521
pop.v.i self.raspr

:[21]
push.v self.dogimagespeed
push.d 0.25
add.d.v
pop.v.v self.dogimagespeed
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 24
add.i.v
push.v self.x
push.v self.dogimagespeed
pushi.e 2362
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.rot
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 2319
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 76
sub.i.v
push.v self.raheight
add.v.v
push.v self.x
pushi.e 60
sub.i.v
pushi.e 1
conv.i.v
push.v self.raspr
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 82
sub.i.v
push.v self.suheight
add.v.v
push.v self.x
pushi.e 12
add.i.v
pushi.e 0
conv.i.v
push.v self.suspr
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 60
sub.i.v
push.v self.x
pushi.e 21
sub.i.v
pushi.e 0
conv.i.v
push.v self.krspr
call.i draw_sprite_ext(argc=9)
popz.v

:[22]
push.v self.drawtype
pushi.e 1
cmp.i.v EQ
bf [end]

:[23]
push.v self.dogimagespeed
push.d 0.25
add.d.v
pop.v.v self.dogimagespeed
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 24
add.i.v
push.v self.x
push.v self.dogimagespeed
pushi.e 2362
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 2319
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[end]