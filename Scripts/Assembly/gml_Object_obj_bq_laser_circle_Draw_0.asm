.localvar 2 arguments

:[0]
push.v 789.drawflip
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v 789.x
pushi.e 12
add.i.v
pop.v.v self.x
push.v 789.y
pushi.e 64
sub.i.v
pop.v.v self.y
b [3]

:[2]
push.v 789.x
pushi.e 12
sub.i.v
pop.v.v self.x
push.v 789.y
pushi.e 64
sub.i.v
pop.v.v self.y

:[3]
push.v self.horizontal
pushi.e 1
cmp.i.v EQ
bf [7]

:[4]
push.v 789.drawflip
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
push.v 789.x
pushi.e 80
add.i.v
pop.v.v self.x
push.v 789.y
pushi.e 173
sub.i.v
pop.v.v self.y
b [7]

:[6]
push.v 789.x
pushi.e 80
sub.i.v
pop.v.v self.x
push.v 789.y
pushi.e 173
sub.i.v
pop.v.v self.y

:[7]
push.v self.state
pushi.e 0
cmp.i.v EQ
bf [12]

:[8]
push.v self.timer
pushi.e 5
add.i.v
pop.v.v self.timer
push.v self.horizontal
pushi.e 1
cmp.i.v EQ
bf [10]

:[9]
push.v self.timer
pushi.e 5
add.i.v
pop.v.v self.timer

:[10]
push.v self.timer
pushi.e 79
cmp.i.v GT
bf [12]

:[11]
pushi.e 1
pop.v.i self.state

:[12]
push.v self.state
pushi.e 1
cmp.i.v EQ
bf [17]

:[13]
push.v self.timer
pushi.e 5
sub.i.v
pop.v.v self.timer
push.v self.horizontal
pushi.e 1
cmp.i.v EQ
bf [15]

:[14]
push.v self.timer
pushi.e 5
sub.i.v
pop.v.v self.timer

:[15]
push.v self.timer
pushi.e 40
cmp.i.v LT
bf [17]

:[16]
pushi.e 0
pop.v.i self.state

:[17]
push.v self.timer
pushi.e 30
cmp.i.v GTE
bf [19]

:[18]
pushi.e 783
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [20]

:[19]
push.e 0

:[20]
bf [23]

:[21]
pushi.e 783
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.laser
push.v self.horizontal
pushi.e 1
cmp.i.v EQ
bf [23]

:[22]
pushi.e 1
push.v self.laser
pushi.e -9
pop.v.i [stacktop]self.horizontal

:[23]
push.v self.timer
pushi.e 100
conv.i.d
div.d.v
pushi.e 30
conv.i.v
pushi.e 3
conv.i.v
call.i lerp(argc=3)
pop.v.v self.circle1_radius
push.d 0.8
conv.d.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
conv.b.v
push.i 65280
conv.i.v
push.i 65280
conv.i.v
push.v self.circle1_radius
push.v self.y
push.v self.x
call.i draw_circle_colour(argc=6)
popz.v
pushi.e 0
conv.b.v
push.i 65280
conv.i.v
push.i 16777215
conv.i.v
pushi.e 5
conv.i.v
push.v self.y
push.v self.x
call.i draw_circle_colour(argc=6)
popz.v

:[end]