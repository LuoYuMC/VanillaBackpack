execute if score @s bp_scanning matches 1 run advancement revoke @s only backpack:inventory_changed
execute if score @s bp_scanning matches 1 run scoreboard players set @s bp_pending 1
execute if score @s bp_scanning matches 1 run scoreboard players set @s bp_cooldown 2
execute if score @s bp_scanning matches 1 run return 0
scoreboard players set @s bp_scanning 1
scoreboard players set @s bp_pending 0
scoreboard players set @s bp_cooldown 2
advancement revoke @s only backpack:inventory_changed
scoreboard players set @s inventory_idx 0
data merge storage bp:player_data {inventory_idx: 0}
function backpack:detect_bp_ with storage bp:player_data