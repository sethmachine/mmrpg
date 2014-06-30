scope AttackTrig initializer init

globals
	constant integer ATTACK_MELEE = 'ATT0'
	constant integer ATTACK_RANGED = 'ATT1'
	constant integer BASE_DAMAGE = 5
	constant real MELEE_MULTIPLIER = 0.60
	constant real RANGED_MULTIPLIER = 0.40
endglobals


/* Some problems
1.  if a monster levels up while using Attack, it will not pick up its Attack Tome
	the tome will be left on the ground for anyone to pick up
2.  if a ranged monster kills another unit while using Attack, the cooldown will not reset
	this means the monster can immediately use another Attack!  
*/


private function main takes nothing returns boolean
	local integer spellId = GetSpellAbilityId()
	local unit target
	local unit caster
    local player p
    local integer pid
	local real damage
	local texttag tt
    local Monster m
    if spellId == ATTACK_MELEE or spellId == ATTACK_RANGED then
		set target = GetSpellTargetUnit()
		if target == null then
			call printl("thinks the target is null")
		endif
		set caster = GetTriggerUnit()
		set p = GetOwningPlayer(caster)
		set pid = GetPlayerId(p)
		set m = playerDatum[pid].party.getMonsterByUnit(caster)
		if spellId == ATTACK_MELEE then
			set damage = BASE_DAMAGE + (m.attrPts[ATT] * MELEE_MULTIPLIER)
		else
			set damage = BASE_DAMAGE + (m.attrPts[ATT] * RANGED_MULTIPLIER)
		endif
		set tt = CreateTextTag()
		call SetTextTagText(tt, I2S(R2I(damage)) + "!", 0.02)
		call SetTextTagVisibility(tt, false) //hide text tag
		if players[pid] == GetLocalPlayer() then //show tag only if its the owning player
			call SetTextTagVisibility (tt, true)
		endif
		call SetTextTagPosUnit(tt, target, 0)
		call SetTextTagColor(tt, 255, 0, 0, 255)
		call SetTextTagVelocity(tt, 0, 0.04)
		call SetTextTagPermanent(tt, false)
		call SetTextTagLifespan(tt, 3)
		call SetTextTagFadepoint(tt, 2)
		call UnitDamageTarget(caster, target, damage, false, false, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_UNIVERSAL, null)
		call printl("damage: " + I2S(R2I(damage)))
		set tt = null
	endif
    return false
endfunction

private function init takes nothing returns nothing
    local trigger t = CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(t, Condition(function main))
endfunction

endscope