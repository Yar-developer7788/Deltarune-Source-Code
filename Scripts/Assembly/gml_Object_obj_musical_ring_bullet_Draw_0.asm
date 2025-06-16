.localvar 2 arguments
.localvar 7017 a 13493

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
bf [14]

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
b [14]

:[8]
pushi.e 60
conv.i.v
call.i random(argc=1)
pop.v.v local.a
pushi.e 0
pop.v.i self.i

:[9]
push.v self.i
pushi.e 6
cmp.i.v LT
bf [13]

:[10]
pushi.e 723
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bul
push.v self.bul
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [12]

:[11]
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
pushloc.v local.a
pushi.e 40
conv.i.v
call.i random(argc=1)
add.v.v
push.v self.bul
pushi.e -9
pop.v.v [stacktop]self.direction
pushi.e 5
push.v self.bul
pushi.e -9
pop.v.i [stacktop]self.speed
push.d 0.2
push.v self.bul
pushi.e -9
pop.v.d [stacktop]self.friction

:[12]
push.v local.a
pushi.e 60
add.i.v
pop.v.v local.a
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [9]

:[13]
pushi.e 2
pop.v.i self.con
pushi.e 0
pop.v.i self.timer

:[14]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [17]

:[15]
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
bf [17]

:[16]
call.i instance_destroy(argc=0)
popz.v

:[17]
push.v self.circle1alpha
call.i draw_set_alpha(argc=1)
popz.v
push.v self.circle1color
call.i draw_set_color(argc=1)
popz.v
push.v self.y
pushi.e 21
sub.i.v
push.v self.x
pushi.e 32
sub.i.v
pushi.e 0
conv.i.v
pushi.e 1769
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