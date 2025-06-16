.localvar 2 arguments

:[0]
pushi.e 1313
pop.v.i self.sprite_index
push.s "block"@14155
pop.v.s self.extflag
pushi.e -5
pushi.e 368
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bt [5]

:[1]
pushi.e -5
pushi.e 915
push.v [array]self.flag
pushi.e 0
cmp.i.v NEQ
bf [3]

:[2]
pushi.e -5
pushi.e 916
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
b [6]

:[5]
push.e 1

:[6]
bf [8]

:[7]
call.i instance_destroy(argc=0)
popz.v

:[8]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[end]