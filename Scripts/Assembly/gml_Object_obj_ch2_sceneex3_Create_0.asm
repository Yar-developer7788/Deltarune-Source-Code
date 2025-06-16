.localvar 2 arguments

:[0]
pushi.e -1
pop.v.i self.con
pushi.e 0
pop.v.i self.customcon
pushglb.v global.chapter
pushi.e 2
cmp.i.v NEQ
bt [3]

:[1]
pushi.e -5
pushi.e 309
push.v [array]self.flag
pushi.e 8
cmp.i.v LT
bt [3]

:[2]
pushi.e -5
pushi.e 324
push.v [array]self.flag
pushi.e 0
cmp.i.v GT
b [4]

:[3]
push.e 1

:[4]
bf [end]

:[5]
pushi.e -5
pushi.e 324
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
call.i gml_Script_scr_losechar(argc=0)
popz.v

:[7]
call.i instance_destroy(argc=0)
popz.v

:[end]