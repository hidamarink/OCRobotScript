local bot = require("robot")
local component = require("component")

for i = 1,5 do
    local seed_arr = {}
    for j = 1,8,1 do
        local s_c = bot.count(j)
        seed_arr[j] = s_c
        if(s_c > 1)
        then
            bot.select(j)
            break
        end
        print("seed",j,s_c)
    end
    component.inventory_controller.equip()
    bot.use()
    component.inventory_controller.equip()


    local bone_count = {}

    for j = 16,9,-1 do
        local b_c = bot.count(j)
        bone_count[j] = b_c
        if(b_c > 1)
        then
            bot.select(j)
            break
        end
        print("bone",j,b_c)
    end

    component.inventory_controller.equip()
    for j = 1,4 do
        bot.use()
    end
    component.inventory_controller.equip()

    bot.swing()
end