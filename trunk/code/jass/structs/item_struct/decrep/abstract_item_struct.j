library AbstractItemStruct

globals
    constant integer MONSTER_ITEM = 0 //the item is for a monster
    constant integer PLAYER_ITEM = 1 //the item is for a player
	constant integer QUEST_ITEM = 2
endglobals

struct AbstractItem
    integer itemId //the unique id of the item, e.g. 'I001'
    integer strReq //the requisite strength to hold the item
    integer dropRate //the likelihood of the item drop--lower drop rates make the item harder to get
    integer index //the position in the AbstractItemTable
    integer itemClass //whether the item is meant for monsters or monster masters
    boolean isQuestItem //whether this item can safely be dropped or not
    string name
    
    static method create takes integer itemId, integer itemClass, boolean isQuestItem returns thistype
        local thistype this = thistype.allocate()
        local item i //trick to get the item level
        set this.itemId = itemId
        set this.itemClass = itemClass
        set this.isQuestItem = isQuestItem
        set i = CreateItem(itemId, CITY_CENTER_X, CITY_CENTER_Y)
        set this.index = GetItemLevel(i)
        set name = GetItemName(i)
        call RemoveItem(i)
        set i = null
        return this
    endmethod

endstruct


endlibrary