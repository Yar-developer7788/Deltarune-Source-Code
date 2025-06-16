.localvar 2 arguments

:[0]
call.i gml_Script_scr_monsterpop_ch1(argc=0)
pushi.e 0
cmp.i.v GT
bf [end]

:[1]
pushi.e 0
pop.v.i self.i

:[2]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [end]

:[3]
push.v self.target
push.v self.i
cmp.v.v EQ
bf [8]

:[4]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.charinstance
call.i instance_exists(argc=1)
conv.v.b
bf [8]

:[5]
push.i 231853
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.points
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.charinstance
pushi.e -9
pop.v.v [stacktop]self.points
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.charinstance
pushi.e -9
pushenv [7]

:[6]
pushi.e 1
pop.v.i self.state
pushi.e 0
pop.v.i self.attacktimer

:[7]
popenv [6]

:[8]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [2]

:[end]