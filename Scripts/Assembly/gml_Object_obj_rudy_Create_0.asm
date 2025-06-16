.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.con
pushi.e -5
pushi.e 255
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i self.con
pushi.e 751
conv.i.v
pushi.e 88
conv.i.v
pushi.e 118
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.n
push.i 100000
push.v self.n
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 1039
pop.v.i self.sprite_index
b [3]

:[2]
pushi.e 103
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[3]
pushi.e 0
pop.v.i self.interact
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.talked

:[end]