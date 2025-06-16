.localvar 2 arguments

:[0]
b [10]

> gml_Script_scr_debug_print (locals=0, argc=1)
:[1]
call.i gml_Script_scr_debug(argc=0)
conv.v.b
not.b
bf [3]

:[2]
exit.i

:[3]
pushi.e 911
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [5]

:[4]
pushi.e 911
conv.i.v
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 10
add.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 10
add.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e -9999
pop.v.i 911.depth

:[5]
push.v arg.argument0
pop.v.v 911.newtext
pushi.e 911
pushenv [9]

:[6]
push.i 43748782
setowner.e
push.v self.newtext
pushi.e -1
push.v self.messagecount
conv.v.i
pop.v.v [array]self.message
push.s ""@157
pop.v.s self.newtext
push.i 43747274
setowner.e
pushi.e 90
push.v self.totaltimer
sub.v.i
pushi.e -1
push.v self.messagecount
conv.v.i
pop.v.v [array]self.timer
push.v self.totaltimer
pushi.e -1
push.v self.messagecount
conv.v.i
push.v [array]self.timer
add.v.v
pop.v.v self.totaltimer
push.v self.messagecount
push.e 1
add.i.v
pop.v.v self.messagecount
pushi.e -1
pushi.e 0
push.v [array]self.message
pop.v.v self.debugmessage
pushi.e 1
pop.v.i self.i

:[7]
push.v self.i
push.v self.messagecount
cmp.v.v LT
bf [9]

:[8]
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
b [7]

:[9]
popenv [6]
exit.i

:[10]
push.i [function]gml_Script_scr_debug_print
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_debug_print
popz.v

:[end]