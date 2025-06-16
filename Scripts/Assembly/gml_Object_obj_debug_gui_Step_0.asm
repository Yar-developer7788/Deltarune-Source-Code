.localvar 2 arguments

:[0]
pushi.e -1
pushi.e 0
push.v [array]self.timer
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
push.i 165834
setowner.e
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.timer
dup.v 0
dup.i 4 48
push.e 1
sub.i.v
pop.i.v [array]self.timer
popz.v
push.v self.totaltimer
push.e 1
sub.i.v
pop.v.v self.totaltimer

:[2]
pushi.e -1
pushi.e 0
push.v [array]self.timer
pushi.e 0
cmp.i.v LTE
bf [end]

:[3]
push.v self.messagecount
push.e 1
sub.i.v
pop.v.v self.messagecount
push.v self.messagecount
pushi.e 0
cmp.i.v LTE
bf [5]

:[4]
call.i instance_destroy(argc=0)
popz.v
b [end]

:[5]
pushi.e 0
pop.v.i self.i

:[6]
push.v self.i
push.v self.messagecount
cmp.v.v LT
bf [8]

:[7]
push.i 167342
setowner.e
pushi.e -1
push.v self.i
pushi.e 1
add.i.v
conv.v.i
push.v [array]self.message
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.message
push.i 165834
setowner.e
pushi.e -1
push.v self.i
pushi.e 1
add.i.v
conv.v.i
push.v [array]self.timer
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.timer
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [6]

:[8]
push.i 167342
setowner.e
push.s ""@157
conv.s.v
pushi.e -1
push.v self.messagecount
conv.v.i
pop.v.v [array]self.message
push.i 165834
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.messagecount
conv.v.i
pop.v.v [array]self.timer
pushi.e -1
pushi.e 0
push.v [array]self.message
pop.v.v self.debugmessage
pushi.e 1
pop.v.i self.i

:[9]
push.v self.i
push.v self.messagecount
cmp.v.v LT
bf [end]

:[10]
push.v self.debugmessage
push.s "#"@6243
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.message
add.v.s
add.v.v
pop.v.v self.debugmessage
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [9]

:[end]