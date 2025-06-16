.localvar 2 arguments

:[0]
push.v self.creatednewalls
pushi.e 1
cmp.i.v EQ
bf [6]

:[1]
pushi.e 0
pop.v.i self.creatednewalls
push.v self.topwall
pushi.e -9
pushenv [3]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[3]
popenv [2]
push.v self.bottomwall
pushi.e -9
pushenv [5]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[5]
popenv [4]

:[6]
push.v self.difficulty
pushi.e 4
cmp.i.v EQ
bf [8]

:[7]
push.v self.createdguns
pushi.e 1
cmp.i.v EQ
b [9]

:[8]
push.e 0

:[9]
bt [14]

:[10]
push.v self.difficulty
pushi.e 6
cmp.i.v EQ
bf [12]

:[11]
push.v self.createdguns
pushi.e 1
cmp.i.v EQ
b [13]

:[12]
push.e 0

:[13]
b [15]

:[14]
push.e 1

:[15]
bf [end]

:[16]
push.v self.gun1
pushi.e -9
pushenv [18]

:[17]
call.i instance_destroy(argc=0)
popz.v

:[18]
popenv [17]
push.v self.gun2
pushi.e -9
pushenv [20]

:[19]
call.i instance_destroy(argc=0)
popz.v

:[20]
popenv [19]

:[end]