execute as @a[scores={bp_cooldown=1..}] run scoreboard players remove @s bp_cooldown 1
execute as @a[scores={bp_scanning=1,bp_cooldown=0,bp_pending=1}] run function backpack:rescan_pending
execute as @a[scores={bp_scanning=1,bp_cooldown=0,bp_pending=0}] run scoreboard players set @s bp_scanning 0
execute as @a unless score @s bp_on_cursor matches -2147483648..2147483647 run scoreboard players set @s bp_on_cursor 0
execute as @a[scores={bp_on_cursor=1}] unless items entity @s player.cursor #bundles[custom_data~{backpack:1b}] run scoreboard players set @s inventory_idx 0
execute as @a[scores={bp_on_cursor=1}] unless items entity @s player.cursor #bundles[custom_data~{backpack:1b}] store result storage bp:player_data inventory_idx int 1.0 run scoreboard players set @s inventory_idx 0
execute as @a[scores={bp_on_cursor=1}] unless items entity @s player.cursor #bundles[custom_data~{backpack:1b}] run function backpack:show_returned with storage bp:player_data
execute as @a store success score @s bp_on_cursor if items entity @s player.cursor #bundles[custom_data~{backpack:1b}]
