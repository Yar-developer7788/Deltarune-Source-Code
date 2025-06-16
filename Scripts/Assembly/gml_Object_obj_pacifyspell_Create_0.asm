.localvar 2 arguments

:[0]
push.i 439493
pop.v.i self.target
pushi.e 1
pop.v.i self.con
pushi.e 0
pop.v.i self.siner
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pop.v.v self.xx
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pop.v.v self.yy
push.i 68097
setowner.e
pushi.e 50
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e 0
pop.v.i self.fail
push.i 16711680
pop.v.i self.flashcolor
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.zcounter

:[end]