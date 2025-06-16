.localvar 2 arguments

:[0]
pushi.e -1
pop.v.i self.con
pushi.e 110
pushenv [3]

:[1]
push.v self.sprite_index
pushi.e 3122
cmp.i.v EQ
bf [3]

:[2]
pushi.e 1
pop.v.i self.depthcancel
call.i gml_Script_scr_depth(argc=0)
popz.v
push.v self.depth
pushi.e 250
add.i.v
pop.v.v self.depth

:[3]
popenv [1]
pushglb.v global.chapter
pushi.e 2
cmp.i.v NEQ
bt [5]

:[4]
pushglb.v global.plot
pushi.e 12
cmp.i.v GT
b [6]

:[5]
push.e 1

:[6]
bf [end]

:[7]
call.i instance_destroy(argc=0)
popz.v

:[end]