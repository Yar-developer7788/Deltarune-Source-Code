.localvar 2 arguments

:[0]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [4]

:[1]
pushi.e 1
pop.v.i self.init
push.v self.attackdirection
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
pushi.e 1
pop.v.i self.finalpoint
push.i 166317
setowner.e
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 80
sub.i.v
pushi.e -1
pushi.e 1
push.v [arraypopaf]self.points
pushi.e 0
popaf.e
push.v self.y
pushi.e -1
pushi.e 1
push.v [arraypopaf]self.points
pushi.e 1
popaf.e
b [4]

:[3]
push.i 166317
setowner.e
push.v self.x
pushi.e -1
pushi.e 1
push.v [arraypopaf]self.points
pushi.e 0
popaf.e
push.v self.y
pushi.e 100
push.v self.attackdirection
pushi.e 1
sub.i.v
mul.v.i
add.v.v
pushi.e -1
pushi.e 1
push.v [arraypopaf]self.points
pushi.e 1
popaf.e
pushi.e -1
pushi.e 1
push.v [arraypushaf]self.points
pushi.e 1
pushaf.e
pushi.e -1
pushi.e 2
push.v [arraypopaf]self.points
pushi.e 1
popaf.e

:[4]
push.v self.nextpoint
push.v self.finalpoint
cmp.v.v LTE
bf [end]

:[5]
push.v self.nextpoint
pushi.e 2
cmp.i.v EQ
bf [13]

:[6]
push.v self.x
pushi.e 10
sub.i.v
push.v 631.x
pushi.e 8
add.i.v
cmp.v.v LTE
bf [11]

:[7]
push.v 631.x
pushi.e 8
add.i.v
pop.v.v self.x
push.v self.x
pushi.e -1
pushi.e 2
push.v [arraypopaf]self.points
pushi.e 0
popaf.e
push.v self.x
pushi.e -1
pushi.e 3
push.v [arraypopaf]self.points
pushi.e 0
popaf.e
push.v self.attackdirection
pushi.e 2
cmp.i.v EQ
bf [9]

:[8]
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 80
sub.i.v
pushi.e -1
pushi.e 3
push.v [arraypopaf]self.points
pushi.e 1
popaf.e
b [10]

:[9]
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 580
add.i.v
pushi.e -1
pushi.e 3
push.v [arraypopaf]self.points
pushi.e 1
popaf.e

:[10]
push.v self.nextpoint
push.e 1
add.i.v
pop.v.v self.nextpoint
b [12]

:[11]
push.v self.x
pushi.e 15
sub.i.v
pop.v.v self.x

:[12]
b [end]

:[13]
pushi.e 15
conv.i.v
pushi.e -1
push.v self.nextpoint
conv.v.i
push.v [arraypushaf]self.points
pushi.e 0
pushaf.e
push.v self.x
call.i gml_Script_scr_movetowards(argc=3)
pop.v.v self.x
pushi.e 15
conv.i.v
pushi.e -1
push.v self.nextpoint
conv.v.i
push.v [arraypushaf]self.points
pushi.e 1
pushaf.e
push.v self.y
call.i gml_Script_scr_movetowards(argc=3)
pop.v.v self.y
pushi.e -1
push.v self.nextpoint
conv.v.i
push.v [arraypushaf]self.points
pushi.e 1
pushaf.e
pushi.e -1
push.v self.nextpoint
conv.v.i
push.v [arraypushaf]self.points
pushi.e 0
pushaf.e
push.v self.y
push.v self.x
call.i point_distance(argc=4)
pushi.e 0
cmp.i.v LTE
bf [end]

:[14]
push.v self.nextpoint
push.e 1
add.i.v
pop.v.v self.nextpoint

:[end]