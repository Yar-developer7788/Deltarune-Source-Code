.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index
pushi.e 10
conv.i.v
call.i irandom(argc=1)
pop.v.v self.randomvar
push.v self.randomvar
pushi.e 7
cmp.i.v EQ
bf [2]

:[1]
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=3)
pop.v.v self.image_index

:[2]
pushi.e 70
conv.i.v
call.i irandom(argc=1)
pop.v.v self.randomvar
push.v self.randomvar
pushi.e 69
cmp.i.v EQ
bf [4]

:[3]
pushi.e 4
pop.v.i self.image_index

:[4]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[end]