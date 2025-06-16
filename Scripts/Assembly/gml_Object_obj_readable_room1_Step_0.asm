.localvar 2 arguments

:[0]
push.v self.myinteract
pushi.e 3
cmp.i.v EQ
bf [6]

:[1]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
bf [6]

:[2]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.myinteract
pushi.e 82
pushenv [4]

:[3]
pushi.e 3
pop.v.i self.onebuffer

:[4]
popenv [3]
push.v self.selfdestruct
pushi.e 1
cmp.b.v EQ
bf [6]

:[5]
push.i 68097
setowner.e
pushi.e 2
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[6]
pushbltn.v builtin.room
pushi.e 170
cmp.i.v EQ
bt [8]

:[7]
pushbltn.v builtin.room
pushi.e 194
cmp.i.v EQ
b [9]

:[8]
push.e 1

:[9]
bf [end]

:[10]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[end]