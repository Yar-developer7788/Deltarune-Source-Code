.localvar 2 arguments
.localvar 33090 dog 16635

:[0]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 30
cmp.i.v GTE
bf [end]

:[1]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [5]

:[2]
pushi.e 2
pop.v.i self.con
call.i gml_Script_cameray(argc=0)
pushi.e -6
pushi.e 0
push.v [array]self.view_hport
add.v.v
pushi.e 100
add.i.v
pop.v.v self.y
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i random_range(argc=2)
pop.v.v local.dog
pushloc.v local.dog
push.d 0.99
cmp.d.v GTE
bf [4]

:[3]
pushi.e 2350
pop.v.i self.sprite_index
push.d 0.25
pop.v.d self.image_speed
b [5]

:[4]
pushi.e 281
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_speed

:[5]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [end]

:[6]
push.v self.y
pushi.e 5
sub.i.v
pop.v.v self.y
push.v self.y
pushi.e -100
cmp.i.v LTE
bf [end]

:[7]
pushi.e 1
pop.v.i self.con

:[end]