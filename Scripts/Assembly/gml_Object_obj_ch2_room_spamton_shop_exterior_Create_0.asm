.localvar 2 arguments

:[0]
pushi.e -1
pop.v.i self.con
pushi.e -5
pushi.e 386
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [9]

:[1]
pushi.e 4
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bf [3]

:[2]
push.i 231204
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
pushi.e 386
pop.v.v [array]self.flag
b [8]

:[3]
pushi.e 2
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bf [5]

:[4]
pushi.e 3
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
b [6]

:[5]
push.e 0

:[6]
bf [8]

:[7]
pushi.e 20
pop.v.i self.con

:[8]
b [end]

:[9]
pushi.e -5
pushi.e 309
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bt [11]

:[10]
pushi.e -5
pushi.e 309
push.v [array]self.flag
pushi.e 2
cmp.i.v GT
b [12]

:[11]
push.e 1

:[12]
bf [end]

:[13]
call.i instance_destroy(argc=0)
popz.v

:[end]