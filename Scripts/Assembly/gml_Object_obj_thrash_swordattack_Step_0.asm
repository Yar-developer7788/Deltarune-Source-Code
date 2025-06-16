.localvar 2 arguments

:[0]
push.v self.btimer
push.e 1
add.i.v
pop.v.v self.btimer
push.v self.btimer
pushi.e 0
cmp.i.v LT
bf [5]

:[1]
pushi.e 3
conv.i.v
push.v self.btimer
push.v self.difficulty
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
pushi.e -10
conv.i.v
b [4]

:[3]
pushi.e -13
conv.i.v

:[4]
div.v.v
call.i gml_Script_scr_ease_inout(argc=2)
pushi.e 360
conv.i.v
pushi.e 240
conv.i.v
call.i lerp(argc=3)
push.v self.thrash
pushi.e -9
pop.v.v [stacktop]self.headangle
b [9]

:[5]
pushi.e 5
conv.i.v
push.v self.btimer
push.v self.difficulty
conv.v.b
bf [7]

:[6]
pushi.e 14
conv.i.v
b [8]

:[7]
pushi.e 18
conv.i.v

:[8]
div.v.v
call.i gml_Script_scr_ease_out(argc=2)
pushi.e 600
conv.i.v
pushi.e 240
conv.i.v
call.i lerp(argc=3)
push.v self.thrash
pushi.e -9
pop.v.v [stacktop]self.headangle

:[9]
push.v self.btimer
pushi.e 2
cmp.i.v EQ
bf [11]

:[10]
pushi.e 742
conv.i.v
push.v self.thrash
pushi.e -9
push.v [stacktop]self.heady
push.v self.thrash
pushi.e -9
push.v [stacktop]self.headx
call.i gml_Script_scr_bullet_create(argc=3)
pop.v.v self.d
pushi.e 8
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.speed
pushi.e 0
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.gravity_direction
push.d 0.1
push.v self.d
pushi.e -9
pop.v.d [stacktop]self.gravity
push.v self.grazepoints
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.grazepoints
pushi.e 200
conv.i.v
pushi.e 160
conv.i.v
call.i random_range(argc=2)
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.direction

:[11]
push.v self.btimer
push.v self.difficulty
conv.v.b
bf [13]

:[12]
pushi.e 11
conv.i.v
b [14]

:[13]
pushi.e 14
conv.i.v

:[14]
cmp.v.v GTE
bf [end]

:[15]
pushi.e 240
push.v self.thrash
pushi.e -9
pop.v.i [stacktop]self.headangle
pushi.e 0
pop.v.i self.btimer

:[end]