.localvar 2 arguments

:[0]
push.v self.constant
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.v self.max_time
pushi.e -1
cmp.i.v EQ
bf [3]

:[2]
pushi.e -10
pop.v.i self.totaltimer

:[3]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
push.v self.rate
cmp.v.v GTE
bf [10]

:[4]
push.v self.target
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [6]

:[5]
push.v self.totaltimer
push.v self.max_time
cmp.v.v LT
b [7]

:[6]
push.e 0

:[7]
bf [9]

:[8]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 0
pop.v.i self.timer
b [10]

:[9]
call.i instance_destroy(argc=0)
popz.v

:[10]
push.v self.totaltimer
push.e 1
add.i.v
pop.v.v self.totaltimer

:[end]