-----------------------------------
--  Area: Attohwa Chasm
--  NPC:  Jakaka
--  Type: ENM
--  @pos -144.711 6.246 -250.309 7
-----------------------------------
package.loaded["scripts/zones/Attohwa_Chasm/TextIDs"] = nil;
-----------------------------------

require("scripts/zones/Attohwa_Chasm/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
		trade:hasItemQty(1778,1) 
		player:tradeComplete()
		player:startEvent(0xC)
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
	player:startEvent(0x000d);
end;

-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
	-- printf("CSID: %u",csid);
	-- printf("RESULT: %u",option);
end;

-----------------------------------
-- onEventFinish
-----------------------------------

function onEventFinish(player,csid,option)
	if (csid == 0x000d) then
		player:addItem(1777)
		player:messageSpecial(ITEM_OBTAINED,1777);
	elseif (csid == 0xC) then
		player:addKeyItem(678)
		player:messageSpecial(KEYITEM_OBTAINED,678);
	end
	-- printf("CSID: %u",csid);
	-- printf("RESULT: %u",option);
end;

