.localvar 2 arguments

:[0]
pushi.e -1
pop.v.i self.script
pushi.e -1
pop.v.i self.target
pushi.e 1
pop.v.i self.rate
push.i 68097
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 13
cmp.i.v LT
bf [3]

:[2]
push.i 166998
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.script_arg
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [1]

:[3]
pushi.e 0
pop.v.i self.arg_count
pushi.e 0
pop.v.i self.constant
pushi.e 0
pop.v.i self.max_time
pushi.e 999
pop.v.i self.timer
pushi.e 0
pop.v.i self.totaltimer

:[end]