.localvar 2 arguments

:[0]
push.i 168595
setowner.e
push.d 0.1
conv.d.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.scrollspeed
push.d 0.3
conv.d.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.scrollspeed
push.d 0.5
conv.d.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.scrollspeed
push.d 0.6
conv.d.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.scrollspeed
push.d 0.7
conv.d.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.scrollspeed
push.d 0.8
conv.d.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.scrollspeed
push.d 0.9
conv.d.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.scrollspeed
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 7
cmp.i.v LT
bf [end]

:[2]
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pop.v.v self.xxx
push.v self.xxx
pushbltn.v builtin.room_width
pushi.e 640
sub.i.v
cmp.v.v GT
bf [4]

:[3]
pushbltn.v builtin.room_width
pushi.e 640
sub.i.v
pop.v.v self.xxx

:[4]
push.v self.xxx
pushi.e 0
cmp.i.v GTE
bf [6]

:[5]
push.v self.xxx
push.v self.xxx
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.scrollspeed
mul.v.v
sub.v.v
call.i floor(argc=1)
push.v self.i
push.l 3
conv.l.v
call.i gml_Script___background_set(argc=3)
popz.v

:[6]
pushbltn.v builtin.room_width
pushi.e 640
sub.i.v
pop.v.v self.gg
push.v self.xxx
pushbltn.v builtin.room_width
pushi.e 640
sub.i.v
cmp.v.v GTE
bf [8]

:[7]
pushi.e 0
push.v self.gg
push.v self.gg
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.scrollspeed
mul.v.v
sub.v.v
call.i floor(argc=1)
add.v.i
push.v self.i
push.l 3
conv.l.v
call.i gml_Script___background_set(argc=3)
popz.v

:[8]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[end]