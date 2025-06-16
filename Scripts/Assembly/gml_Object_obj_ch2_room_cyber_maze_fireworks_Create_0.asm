.localvar 2 arguments

:[0]
pushglb.v global.chapter
pushi.e 2
cmp.i.v NEQ
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v
b [5]

:[2]
pushi.e 105
conv.i.v
pushi.e 206
conv.i.v
pushi.e 394
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.hacker
push.v self.hacker
pushi.e -9
pushenv [4]

:[3]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[4]
popenv [3]
pushi.e 1231
push.v self.hacker
pushi.e -9
pop.v.i [stacktop]self.sprite_index

:[5]
pushi.e 0
pop.v.i self.check1
pushi.e 0
pop.v.i self.check2
pushi.e 0
pop.v.i self.check3
pushi.e 0
pop.v.i self.fireworks_con

:[end]