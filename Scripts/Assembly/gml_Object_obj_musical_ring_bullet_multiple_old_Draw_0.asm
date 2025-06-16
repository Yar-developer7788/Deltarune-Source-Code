.localvar 2 arguments

:[0]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [3]

:[1]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.circle1alpha
push.d 0.1
add.d.v
pop.v.v self.circle1alpha
push.v self.timer
pushi.e 10
cmp.i.v EQ
bf [3]

:[2]
pushi.e 1
pop.v.i self.con
pushi.e 0
pop.v.i self.timer

:[3]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [9]

:[4]
push.v self.circle2alpha
pushi.e 1
cmp.i.v LT
bf [6]

:[5]
push.v self.circle2alpha
push.d 0.2
add.d.v
pop.v.v self.circle2alpha

:[6]
push.v self.circle1radius
push.v self.circle2radius
cmp.v.v LT
bf [8]

:[7]
push.v self.circle2radius
pushi.e 2
sub.i.v
pop.v.v self.circle2radius
b [9]

:[8]
pushi.e 2
pop.v.i self.con
pushi.e 0
pop.v.i self.timer

:[9]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [22]

:[10]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.bullettimer
push.e 1
add.i.v
pop.v.v self.bullettimer
push.v self.timer
pushi.e 3
cmp.i.v EQ
bt [13]

:[11]
push.v self.timer
pushi.e 6
cmp.i.v EQ
bt [13]

:[12]
push.v self.timer
pushi.e 9
cmp.i.v EQ
b [14]

:[13]
push.e 1

:[14]
bf [17]

:[15]
pushi.e 723
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bul
push.v self.bul
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [17]

:[16]
pushi.e 1785
push.v self.bul
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 2
push.v self.bul
pushi.e -9
pop.v.i [stacktop]self.grazepoints
pushi.e 1
push.v self.bul
pushi.e -9
pop.v.i [stacktop]self.timepoints
push.v 631.y
push.v 631.x
push.v self.y
push.v self.x
call.i point_direction(argc=4)
push.v self.bul
pushi.e -9
pop.v.v [stacktop]self.direction
pushi.e 6
push.v self.bul
pushi.e -9
pop.v.i [stacktop]self.speed
push.d 0.1
push.v self.bul
pushi.e -9
pop.v.d [stacktop]self.friction

:[17]
push.v self.timer
pushi.e 10
cmp.i.v EQ
bf [22]

:[18]
push.v self.times
push.e 1
sub.i.v
pop.v.v self.times
push.v self.times
pushi.e 0
cmp.i.v LT
bf [20]

:[19]
pushi.e 3
pop.v.i self.con
b [21]

:[20]
pushi.e 1
pop.v.i self.con
pushi.e 0
pop.v.i self.circle2alpha
pushi.e 75
pop.v.i self.circle2radius

:[21]
pushi.e 0
pop.v.i self.timer

:[22]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [25]

:[23]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.circle1alpha
push.d 0.2
add.d.v
pop.v.v self.circle1alpha
push.v self.circle2alpha
push.d 0.2
sub.d.v
pop.v.v self.circle2alpha
push.v self.timer
pushi.e 5
cmp.i.v EQ
bf [25]

:[24]
call.i instance_destroy(argc=0)
popz.v

:[25]
push.v self.circle1alpha
call.i draw_set_alpha(argc=1)
popz.v
push.v self.circle1color
call.i draw_set_color(argc=1)
popz.v
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 1758
conv.i.v
call.i draw_sprite(argc=4)
popz.v
pushi.e 24
conv.i.v
push.v self.circle1width
push.v self.circle1radius
push.v self.y
push.v self.x
call.i gml_Script_scr_draw_circle_width_qb(argc=5)
popz.v
push.v self.circle2alpha
call.i draw_set_alpha(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 24
conv.i.v
push.v self.circle2width
push.v self.circle2radius
push.v self.y
push.v self.x
call.i gml_Script_scr_draw_circle_width_qb(argc=5)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[end]