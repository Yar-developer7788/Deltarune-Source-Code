.localvar 2 arguments

:[0]
push.v self.target
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [15]

:[1]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [12]

:[2]
pushi.e 1
pop.v.i self.init
push.v self.direction_word
push.s "nothing"@27311
cmp.s.v NEQ
bf [11]

:[3]
push.v self.direction_word
push.s "l"@6707
cmp.s.v EQ
bf [5]

:[4]
pushi.e 180
pop.v.i self.direction

:[5]
push.v self.direction_word
push.s "d"@6706
cmp.s.v EQ
bf [7]

:[6]
pushi.e 270
pop.v.i self.direction

:[7]
push.v self.direction_word
push.s "r"@6696
cmp.s.v EQ
bf [9]

:[8]
pushi.e 0
pop.v.i self.direction

:[9]
push.v self.direction_word
push.s "u"@6708
cmp.s.v EQ
bf [11]

:[10]
pushi.e 90
pop.v.i self.direction

:[11]
push.v self.speed
push.v self.target
pushi.e -9
pop.v.v [stacktop]self.speed
push.v self.direction
push.v self.target
pushi.e -9
pop.v.v [stacktop]self.direction

:[12]
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
push.v self.time
cmp.v.v GTE
bf [14]

:[13]
pushi.e 0
push.v self.target
pushi.e -9
pop.v.i [stacktop]self.speed
pushi.e 0
push.v self.target
pushi.e -9
pop.v.i [stacktop]self.image_index
pushi.e 0
push.v self.target
pushi.e -9
pop.v.i [stacktop]self.image_speed
call.i instance_destroy(argc=0)
popz.v
exit.i

:[14]
b [end]

:[15]
call.i instance_destroy(argc=0)
popz.v
exit.i

:[end]