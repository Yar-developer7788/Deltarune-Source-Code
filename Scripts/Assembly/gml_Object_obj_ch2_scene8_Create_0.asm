.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.customcon
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.destroyme
pushglb.v global.chapter
pushi.e 2
cmp.i.v NEQ
bt [2]

:[1]
pushglb.v global.plot
pushi.e 20
cmp.i.v GTE
b [3]

:[2]
push.e 1

:[3]
bf [5]

:[4]
pushi.e 1
pop.v.i self.destroyme
b [11]

:[5]
pushglb.v global.plot
pushi.e 20
cmp.i.v LT
bf [11]

:[6]
pushi.e 135
pushenv [8]

:[7]
call.i instance_destroy(argc=0)
popz.v

:[8]
popenv [7]
pushi.e 103
pushenv [10]

:[9]
call.i instance_destroy(argc=0)
popz.v

:[10]
popenv [9]
pushi.e 1
pop.v.i self.con
pushi.e 1
pop.v.i global.interact
pushi.e 5000
conv.i.v
call.i layer_get_id_at_depth(argc=1)
pop.v.v self.foreground
push.i 900000
conv.i.v
pushi.e -1
pushi.e 0
push.v [array]self.foreground
call.i layer_depth(argc=2)
popz.v

:[11]
push.v self.destroyme
pushi.e 1
cmp.i.v EQ
bf [13]

:[12]
call.i instance_destroy(argc=0)
popz.v

:[13]
pushi.e 1
pop.v.i self.drawdoor
pushi.e 0
pop.v.i self.darkbg
push.i 100000
pop.v.i self.depth
pushi.e 0
pop.v.i self.xsin
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.amt

:[end]