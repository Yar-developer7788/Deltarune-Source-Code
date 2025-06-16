.localvar 2 arguments

:[0]
pushi.e 2965
conv.i.v
pushi.e 54
conv.i.v
pushi.e 318
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.counter
push.v 82.depth
pushi.e 10000
add.i.v
push.v self.counter
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 1079
conv.i.v
pushi.e 50
conv.i.v
pushi.e 340
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.sans
push.v self.counter
pushi.e -9
push.v [stacktop]self.depth
pushi.e 10
add.i.v
push.v self.sans
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 99
pop.v.i self.con
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.talked
pushi.e 0
pop.v.b self.interacting
pushi.e -5
pushi.e 308
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e -1
pop.v.i self.con
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.talked
pushi.e 0
pop.v.b self.interacting
pushi.e -1
pop.v.i self.toriel
pushi.e -1
pop.v.i self.asgore

:[end]