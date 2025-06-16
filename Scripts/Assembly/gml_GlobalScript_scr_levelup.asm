.localvar 2 arguments
.localvar 338 _i 1232

:[0]
b [12]

> gml_Script_scr_levelup (locals=1, argc=0)
:[1]
push.i 24872740
setowner.e
pushi.e -5
pushi.e 65
dup.i 1
push.v [array]self.flag
dup.v 0
dup.i 4 48
push.e 1
add.i.v
pop.i.v [array]global.flag
popz.v
push.i 24872668
setowner.e
pushi.e -5
pushi.e 1
dup.i 1
push.v [array]self.maxhp
pushi.e 2
add.i.v
pop.i.v [array]self.maxhp
pushi.e -5
pushi.e 2
dup.i 1
push.v [array]self.maxhp
pushi.e 2
add.i.v
pop.i.v [array]self.maxhp
pushi.e -5
pushi.e 3
dup.i 1
push.v [array]self.maxhp
pushi.e 2
add.i.v
pop.i.v [array]self.maxhp
push.i 24872667
setowner.e
pushi.e -5
pushi.e 1
dup.i 1
push.v [array]self.hp
pushi.e 2
add.i.v
pop.i.v [array]self.hp
pushi.e -5
pushi.e 2
dup.i 1
push.v [array]self.hp
pushi.e 2
add.i.v
pop.i.v [array]self.hp
pushi.e -5
pushi.e 3
dup.i 1
push.v [array]self.hp
pushi.e 2
add.i.v
pop.i.v [array]self.hp
pushi.e -5
pushi.e 65
push.v [array]self.flag
pushi.e 2
mod.i.v
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
push.i 24872668
setowner.e
pushi.e -5
pushi.e 2
dup.i 1
push.v [array]self.maxhp
pushi.e 1
add.i.v
pop.i.v [array]self.maxhp

:[3]
pushi.e -5
pushi.e 65
push.v [array]self.flag
pushi.e 10
mod.i.v
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
push.i 24872669
setowner.e
pushi.e -5
pushi.e 1
dup.i 1
push.v [array]self.at
pushi.e 1
add.i.v
pop.i.v [array]self.at
pushi.e -5
pushi.e 2
dup.i 1
push.v [array]self.at
pushi.e 1
add.i.v
pop.i.v [array]self.at
push.i 24872671
setowner.e
pushi.e -5
pushi.e 2
dup.i 1
push.v [array]self.mag
pushi.e 1
add.i.v
pop.i.v [array]self.mag
push.i 24872669
setowner.e
pushi.e -5
pushi.e 3
dup.i 1
push.v [array]self.at
pushi.e 1
add.i.v
pop.i.v [array]self.at
push.i 24872671
setowner.e
pushi.e -5
pushi.e 3
dup.i 1
push.v [array]self.mag
pushi.e 1
add.i.v
pop.i.v [array]self.mag
push.i 24872740
setowner.e
pushi.e -5
pushi.e 66
dup.i 1
push.v [array]self.flag
dup.v 0
dup.i 4 48
push.e 1
add.i.v
pop.i.v [array]global.flag
popz.v

:[5]
pushi.e 4
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bf [8]

:[6]
pushi.e -5
pushi.e 919
push.v [array]self.flag
popz.v
pushi.e -5
pushi.e 919
dup.i 1
push.v [array]self.flag
dup.v 0
dup.i 4 48
push.e 1
add.i.v
pop.i.v [array]global.flag
popz.v
push.i 24872668
setowner.e
pushi.e -5
pushi.e 4
dup.i 1
push.v [array]self.maxhp
pushi.e 4
add.i.v
pop.i.v [array]self.maxhp
push.i 24872667
setowner.e
pushi.e -5
pushi.e 4
dup.i 1
push.v [array]self.hp
pushi.e 4
add.i.v
pop.i.v [array]self.hp
pushi.e -5
pushi.e 65
push.v [array]self.flag
pushi.e 4
mod.i.v
pushi.e 0
cmp.i.v EQ
bf [8]

:[7]
push.i 24872669
setowner.e
pushi.e -5
pushi.e 4
dup.i 1
push.v [array]self.at
pushi.e 1
add.i.v
pop.i.v [array]self.at
push.i 24872671
setowner.e
pushi.e -5
pushi.e 4
dup.i 1
push.v [array]self.mag
pushi.e 1
add.i.v
pop.i.v [array]self.mag

:[8]
push.i 24872668
setowner.e
pushi.e 160
conv.i.v
pushi.e 10
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]self.maxhp
call.i clamp(argc=3)
pushi.e -5
pushi.e 1
pop.v.v [array]self.maxhp
pushi.e 190
conv.i.v
pushi.e 10
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]self.maxhp
call.i clamp(argc=3)
pushi.e -5
pushi.e 2
pop.v.v [array]self.maxhp
pushi.e 140
conv.i.v
pushi.e 10
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]self.maxhp
call.i clamp(argc=3)
pushi.e -5
pushi.e 3
pop.v.v [array]self.maxhp
pushi.e 999
conv.i.v
pushi.e 10
conv.i.v
pushi.e -5
pushi.e 4
push.v [array]self.maxhp
call.i clamp(argc=3)
pushi.e -5
pushi.e 4
pop.v.v [array]self.maxhp
pushi.e 1
pop.v.i local._i

:[9]
pushloc.v local._i
pushi.e 5
cmp.i.v LT
bf [11]

:[10]
push.i 24872667
setowner.e
pushi.e -5
pushloc.v local._i
conv.v.i
push.v [array]self.maxhp
pushi.e -5
pushloc.v local._i
conv.v.i
push.v [array]self.hp
call.i min(argc=2)
pushi.e -5
pushloc.v local._i
conv.v.i
pop.v.v [array]self.hp
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [9]

:[11]
exit.i

:[12]
push.i [function]gml_Script_scr_levelup
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_levelup
popz.v

:[end]