library GroupStruct requires Constants, Util

globals
endglobals

struct Group
	List l
	integer currSize
	integer maxSize
    
    static method create takes integer pid, integer maxSize returns thistype
        local thistype this = thistype.allocate()
		set l = List.create(maxSize)
		set this.maxSize = maxSize
		set this.currSize = 0
        return this
    endmethod
	
	method get takes integer i returns integer
		return l.table[i]
	endmethod
	
	method has takes integer i returns boolean
		return l.has(i)
	endmethod
	
	method add takes integer i returns boolean
		return l.add(i)
		set currSize = l.currSize
	endmethod
	
	method remove takes integer i returns boolean
		return l.remove(i)
		set currSize = l.currSize
	endmethod
    
	method move takes integer i, List whichList returns boolean
		return l.move(i, whichList)
		set currSize = l.currSize
	endmethod
  
	//returns a Dialog that lists out each member of the group
	//object must have a toString() method
	//! textmacro GroupToDialog takes Type, TypeName
	method $TypeName$sToDialog takes string msg returns Dialog
		local integer i = 0
		local string s
		local $Type$ object
		local Dialog d = Dialog.create(msg)
		loop
			exitwhen i == l.currSize
			set object = get(i)
			call d.append(WHITE + object.toString() + " [ " + RED + I2S(i) + "|r" + WHITE + " ]", i + KEY_NUMPAD_0)
			set i = i + 1
		endloop
		return d
	endmethod
	//! endtextmacro
	//! runtextmacro("Item", "item")
endstruct
endlibrary