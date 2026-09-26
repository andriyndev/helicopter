--
-- constants
--

helicopter = {}

helicopter.S = core.get_translator(core.get_current_modname())

local path = core.get_modpath(core.get_current_modname())
helicopter.path = path

helicopter.friction_air_quadratic = 0.01
helicopter.friction_air_constant = 0.2
helicopter.friction_land_quadratic = 1
helicopter.friction_land_constant = 2
helicopter.friction_water_quadratic = 0.1
helicopter.friction_water_constant = 1

helicopter.colors ={
    black='#2b2b2b',
    blue='#0063b0',
    brown='#8c5922',
    cyan='#07B6BC',
    dark_green='#567a42',
    dark_grey='#6d6d6d',
    green='#4ee34c',
    grey='#9f9f9f',
    magenta='#ff0098',
    orange='#ff8b0e',
    pink='#ff62c6',
    red='#dc1818',
    violet='#a437ff',
    white='#FFFFFF',
    yellow='#ffe400',
}

helicopter.creative = core.global_exists("creative")

if not core.global_exists("matrix3") then
	dofile(path .. "/matrix.lua")
end

dofile(path .. "/settings.lua")
dofile(path .. "/heli_hud.lua")
dofile(path .. "/heli_utilities.lua")
dofile(path .. "/heli_entities.lua")
dofile(path .. "/heli_crafts.lua")
dofile(path .. "/heli_control.lua")
dofile(path .. "/heli_fuel_management.lua")


helicopter.helicopter_last_time_command = 0
