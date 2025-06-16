.localvar 2 arguments
.localvar 10424 startnum 2560
.localvar 10425 endnum 2561
.localvar 10427 whichrecruit 2562
.localvar 107 i 2567

:[0]
b [23]

> gml_Script_scr_recruits_to_array (locals=4, argc=0)
:[1]
pushi.e 0
pop.v.i local.startnum
pushi.e 50
pop.v.i local.endnum
push.s "full"@10426
pop.v.s local.whichrecruit
pushbltn.v builtin.argument_count
pushi.e 1
cmp.i.v GTE
bf [3]

:[2]
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v local.whichrecruit

:[3]
pushbltn.v builtin.argument_count
pushi.e 2
cmp.i.v GTE
bf [8]

:[4]
pushi.e -15
pushi.e 1
push.v [array]self.argument
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
pushi.e 25
pop.v.i local.endnum

:[6]
pushi.e -15
pushi.e 1
push.v [array]self.argument
pushi.e 2
cmp.i.v EQ
bf [8]

:[7]
pushi.e 30
pop.v.i local.startnum

:[8]
push.i 32934855
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.recruit
pushi.e 0
pop.v.i self.totalrecruits
pushi.e 0
pop.v.i self.halfrecruits
pushi.e 0
pop.v.i self.eitherrecruits
pushloc.v local.startnum
pop.v.v local.i

:[9]
pushloc.v local.i
pushloc.v local.endnum
cmp.v.v LT
bf [21]

:[10]
pushi.e -5
pushloc.v local.i
pushi.e 600
add.i.v
conv.v.i
push.v [array]self.flag
pushi.e 0
cmp.i.v GT
bf [20]

:[11]
pushloc.v local.whichrecruit
push.s "either"@10431
cmp.s.v EQ
bf [13]

:[12]
pushloc.v local.i
pushi.e -1
push.v self.eitherrecruits
conv.v.i
pop.v.v [array]self.recruit

:[13]
push.v self.eitherrecruits
push.e 1
add.i.v
pop.v.v self.eitherrecruits
pushi.e -5
pushloc.v local.i
pushi.e 600
add.i.v
conv.v.i
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [17]

:[14]
pushloc.v local.whichrecruit
push.s "full"@10426
cmp.s.v EQ
bf [16]

:[15]
pushloc.v local.i
pushi.e -1
push.v self.totalrecruits
conv.v.i
pop.v.v [array]self.recruit

:[16]
push.v self.totalrecruits
push.e 1
add.i.v
pop.v.v self.totalrecruits
b [20]

:[17]
pushloc.v local.whichrecruit
push.s "half"@10432
cmp.s.v EQ
bf [19]

:[18]
pushloc.v local.i
pushi.e -1
push.v self.halfrecruits
conv.v.i
pop.v.v [array]self.recruit

:[19]
push.v self.halfrecruits
push.e 1
add.i.v
pop.v.v self.halfrecruits

:[20]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [9]

:[21]
push.v self.totalrecruits
ret.v

:[22]
exit.i

:[23]
push.i [function]gml_Script_scr_recruits_to_array
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_recruits_to_array
popz.v

:[end]