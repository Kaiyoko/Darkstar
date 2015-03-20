-----------------------------------
-- Area: Boneyard Gully
-- NPC:  Tuchulcha
-- ID: 	16810001
-----------------------------------
-----------------------------------

require("scripts/globals/titles");
require("scripts/globals/status");
require("scripts/globals/magic");


-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
	mob:setTP(100);
	mob:setMobMod(MOBMOD_SUPERLINK,0);
end;

-----------------------------------
-- onMobEngaged
-----------------------------------
function onMobEngaged(mob, killer)
	mob:useMobAbility(22); -- Pit Ambush
end;


-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
end;
