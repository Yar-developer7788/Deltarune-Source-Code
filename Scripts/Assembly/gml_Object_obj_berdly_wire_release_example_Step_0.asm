.localvar 2 arguments

:[0]
push.v self.shakecon
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 0
pop.v.i self.shakecon
call.i gml_Script_scr_shakeobj(argc=0)
popz.v
push.v self.shake_loop
conv.v.b
bf [end]

:[2]
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[end]