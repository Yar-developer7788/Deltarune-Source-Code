.localvar 2 arguments
.localvar 7985 _j 2698

:[0]
b [18]

> gml_Script_scr_custommenu_item_info_refresh (locals=1, argc=0)
:[1]
call.i gml_Script_scr_iteminfo_all(argc=0)
popz.v
call.i gml_Script_scr_itemdesc(argc=0)
popz.v
pushi.e 0
pop.v.i self.i

:[2]
push.v self.i
pushi.e 12
cmp.i.v LT
bf [6]

:[3]
push.i 33655851
setowner.e
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.item
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.menuitemid
push.i 33655852
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.itemdesc
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.menuitemdesc
push.i 33655853
setowner.e
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.itemnameb
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.menuitemname
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.menuitemname
push.s " "@353
cmp.s.v EQ
bf [5]

:[4]
push.s "---"@8074
conv.s.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.menuitemname

:[5]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [2]

:[6]
pushi.e 0
pop.v.i self.i

:[7]
push.v self.i
pushi.e -5
pushi.e 64
push.v [array]self.flag
cmp.v.v LT
bf [11]

:[8]
push.i 33655854
setowner.e
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.pocketitem
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.pocketitemid
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.pocketitemid
call.i gml_Script_scr_iteminfo(argc=1)
popz.v
push.i 33655855
setowner.e
push.v self.itemnameb
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.pocketitemname
push.i 33655856
setowner.e
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.pocketitem
call.i gml_Script_scr_itemdesc_single(argc=1)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.pocketitemdesc
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.pocketitemname
push.s " "@353
cmp.s.v EQ
bf [10]

:[9]
push.i 33655855
setowner.e
push.s "---"@8074
conv.s.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.pocketitemname

:[10]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [7]

:[11]
push.i 33655758
setowner.e
pushi.e 11
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.menuMaximumID
pushi.e 0
pop.v.i local._j

:[12]
pushloc.v local._j
pushi.e -1
pushi.e 0
push.v [array]self.menuMaximumID
cmp.v.v LTE
bf [14]

:[13]
push.i 33655857
setowner.e
pushi.e -1
pushloc.v local._j
conv.v.i
push.v [array]self.menuitemid
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.optionID
pushloc.v local._j
conv.v.i
popaf.e
push.i 33655858
setowner.e
pushi.e -1
pushloc.v local._j
conv.v.i
push.v [array]self.menuitemname
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.optionText
pushloc.v local._j
conv.v.i
popaf.e
push.i 33655859
setowner.e
pushi.e -1
pushloc.v local._j
conv.v.i
push.v [array]self.menuitemdesc
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.optionTopComment
pushloc.v local._j
conv.v.i
popaf.e
push.i 33655860
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.optionSelectable
pushloc.v local._j
conv.v.i
popaf.e
push.v local._j
push.e 1
add.i.v
pop.v.v local._j
b [12]

:[14]
push.i 33655758
setowner.e
pushi.e -5
pushi.e 64
push.v [array]self.flag
pushi.e 1
sub.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.menuMaximumID
pushi.e 0
pop.v.i local._j

:[15]
pushloc.v local._j
pushi.e -1
pushi.e 1
push.v [array]self.menuMaximumID
cmp.v.v LTE
bf [17]

:[16]
push.i 33655857
setowner.e
pushi.e -1
pushloc.v local._j
conv.v.i
push.v [array]self.pocketitemid
pushi.e -1
pushi.e 1
push.v [arraypopaf]self.optionID
pushloc.v local._j
conv.v.i
popaf.e
push.i 33655858
setowner.e
pushi.e -1
pushloc.v local._j
conv.v.i
push.v [array]self.pocketitemname
pushi.e -1
pushi.e 1
push.v [arraypopaf]self.optionText
pushloc.v local._j
conv.v.i
popaf.e
push.i 33655860
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 1
push.v [arraypopaf]self.optionSelectable
pushloc.v local._j
conv.v.i
popaf.e
push.i 33655861
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 1
push.v [arraypopaf]self.optionEffect
pushloc.v local._j
conv.v.i
popaf.e
push.i 33655859
setowner.e
pushi.e -1
pushloc.v local._j
conv.v.i
push.v [array]self.pocketitemdesc
pushi.e -1
pushi.e 1
push.v [arraypopaf]self.optionTopComment
pushloc.v local._j
conv.v.i
popaf.e
push.v local._j
push.e 1
add.i.v
pop.v.v local._j
b [15]

:[17]
exit.i

:[18]
push.i [function]gml_Script_scr_custommenu_item_info_refresh
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_custommenu_item_info_refresh
popz.v

:[end]