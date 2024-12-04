--       ___          ___          ___
--      /\  \        /\  \        /\  \
--     /::\  \      /::\  \      /::\  \
--    /:/\:\  \    /:/\:\  \    /:/\ \  \
--   /::\~\:\__\  /:/  \:\  \  _\:\~\ \  \
--  /:/\:\ \:|__|/:/__/_\:\__\/\ \:\ \ \__\
--  \:\~\:\/:/  /\:\  /\ \/__/\:\ \:\ \/__/
--   \:\ \::/  /  \:\ \:\__\   \:\ \:\__\
--    \:\/:/  /    \:\/:/  /    \:\/:/  /
--     \::/__/      \::/  /      \::/  /
--      ‾‾           \/__/        \/__/

-- BGS Mining
-- Author: Snapopotamus
-- © 2024
-- A mining system for RedM servers. Based off of a mixture of RSG Mining and VORP Mining. All due credits to the creators and contributors of those projects.
-- Compatible with VORPCore.

---------------------------------------------------------------------------------------------

Config = {}

Config.MinSwing = 1 -- Min Swings on a node
Config.MaxSwing = 3 -- Max Swings on a node

Config.Pickaxe = "pickaxe" -- Item from your database that you want to use for a pickaxe
Config.MinePromptKey = 0xD9D0E1C0 -- Key used to start Mining (Spacebar)
Config.StopMiningKey = 0x3B24C470 -- Key to stop Mining (F)
Config.MineKey = 0x07B8BEAF -- Key to Mine node (Left Click)

Config.PickaxeDamage = 5 -- Amount of damage done to pickaxe durability per mining node

Config.UseMinigame = true -- Use the minigame or not

----- lower number is harder
Config.minDifficulty = 4000
Config.maxDifficulty = 2700
---------------------------

Config.Language = {
	PromptLabel = "Mining",
	MinePrompt = "Mine",
	SwingPrompt = "Swing",
	StopPrompt = "Put Away",
}

-- mining locations
Config.MiningLocations = {
	{
		coords = vector3(-1424.091, 1176.6002, 226.3431),
		job = "miner", -- You can either add a job or a table of jobs
		jobMultiplier = 1.5, -- Multiplier for the job(s)
		showmarker = true,
		timeout = 120000,
		basicItem = "rock",
		items = {
			{ name = "clay", label = "Clay", chance = 8, amount = 4 },
			{ name = "coal", label = "Coal", chance = 8, amount = 4 },
			{ name = "copper", label = "Copper", chance = 6, amount = 8 },
			{ name = "iron", label = "Iron", chance = 6, amount = 12 },
			{ name = "nitrite", label = "Nitrite", chance = 8, amount = 4 },
			{ name = "salt", label = "Salt", chance = 10, amount = 4 },
			{ name = "goldnugget", label = "Gold Nuggets", chance = 3, amount = 2 },
		},
	},
	{
		coords = vector3(-1417.508, 1171.145, 226.57142),
		job = { "miner", "gunsmith" }, -- You can either add a job or a table of jobs
		jobMultiplier = 2.5, -- Multiplier for the job(s)
		showmarker = true,
		timeout = 120000,
		basicItem = "rock",
		items = {
			{ name = "clay", label = "Clay", chance = 8, amount = 4 },
			{ name = "coal", label = "Coal", chance = 8, amount = 4 },
			{ name = "copper", label = "Copper", chance = 6, amount = 8 },
			{ name = "iron", label = "Iron", chance = 6, amount = 12 },
			{ name = "nitrite", label = "Nitrite", chance = 8, amount = 4 },
			{ name = "salt", label = "Salt", chance = 10, amount = 4 },
			{ name = "goldnugget", label = "Gold Nuggets", chance = 3, amount = 2 },
		},
	},
	{
		coords = vector3(-1433.531, 1176.245, 226.466),
		showmarker = true,
		job = false, -- You can either add a job or a table of jobs
		jobMultiplier = false, -- Multiplier for the job(s)
		timeout = 120000,
		basicItem = "rock",
		items = {
			{ name = "clay", label = "Clay", chance = 8, amount = 4 },
			{ name = "coal", label = "Coal", chance = 8, amount = 4 },
			{ name = "copper", label = "Copper", chance = 6, amount = 8 },
			{ name = "iron", label = "Iron", chance = 6, amount = 12 },
			{ name = "nitrite", label = "Nitrite", chance = 8, amount = 4 },
			{ name = "salt", label = "Salt", chance = 10, amount = 4 },
			{ name = "goldnugget", label = "Gold Nuggets", chance = 3, amount = 2 },
		},
	},
	{
		coords = vector3(-1391.005, 1172.185, 222.181),
		job = false, -- You can either add a job or a table of jobs
		jobMultiplier = false, -- Multiplier for the job(s)
		showmarker = true,
		timeout = 120000,
		basicItem = "rock",
		items = {
			{ name = "clay", label = "Clay", chance = 8, amount = 4 },
			{ name = "coal", label = "Coal", chance = 8, amount = 4 },
			{ name = "copper", label = "Copper", chance = 6, amount = 8 },
			{ name = "iron", label = "Iron", chance = 6, amount = 12 },
			{ name = "nitrite", label = "Nitrite", chance = 8, amount = 4 },
			{ name = "salt", label = "Salt", chance = 10, amount = 4 },
			{ name = "goldnugget", label = "Gold Nuggets", chance = 3, amount = 2 },
		},
	},
	{
		coords = vector3(-1386.504, 1184.292, 222.005),
		job = false, -- You can either add a job or a table of jobs
		jobMultiplier = false, -- Multiplier for the job(s)
		showmarker = true,
		timeout = 120000,
		basicItem = "rock",
		items = {
			{ name = "clay", label = "Clay", chance = 8, amount = 4 },
			{ name = "coal", label = "Coal", chance = 8, amount = 4 },
			{ name = "copper", label = "Copper", chance = 6, amount = 8 },
			{ name = "iron", label = "Iron", chance = 6, amount = 12 },
			{ name = "nitrite", label = "Nitrite", chance = 8, amount = 4 },
			{ name = "salt", label = "Salt", chance = 10, amount = 4 },
			{ name = "goldnugget", label = "Gold Nuggets", chance = 3, amount = 2 },
		},
	},
	{
		coords = vector3(-1388.796, 1176.752, 221.704),
		job = false, -- You can either add a job or a table of jobs
		jobMultiplier = false, -- Multiplier for the job(s)
		showmarker = true,
		timeout = 120000,
		basicItem = "rock",
		items = {
			{ name = "clay", label = "Clay", chance = 8, amount = 4 },
			{ name = "coal", label = "Coal", chance = 8, amount = 4 },
			{ name = "copper", label = "Copper", chance = 6, amount = 8 },
			{ name = "iron", label = "Iron", chance = 6, amount = 12 },
			{ name = "nitrite", label = "Nitrite", chance = 8, amount = 4 },
			{ name = "salt", label = "Salt", chance = 10, amount = 4 },
			{ name = "goldnugget", label = "Gold Nuggets", chance = 3, amount = 2 },
		},
	},
	{
		coords = vector3(-1394.676, 1187.149, 222.354),
		job = false, -- You can either add a job or a table of jobs
		jobMultiplier = false, -- Multiplier for the job(s)
		showmarker = true,
		timeout = 120000,
		basicItem = "rock",
		items = {
			{ name = "clay", label = "Clay", chance = 8, amount = 4 },
			{ name = "coal", label = "Coal", chance = 8, amount = 4 },
			{ name = "copper", label = "Copper", chance = 6, amount = 8 },
			{ name = "iron", label = "Iron", chance = 6, amount = 12 },
			{ name = "nitrite", label = "Nitrite", chance = 8, amount = 4 },
			{ name = "salt", label = "Salt", chance = 10, amount = 4 },
			{ name = "goldnugget", label = "Gold Nuggets", chance = 3, amount = 2 },
		},
	},
	{
		coords = vector3(-1405.547, 1194.576, 225.419),
		job = false, -- You can either add a job or a table of jobs
		jobMultiplier = false, -- Multiplier for the job(s)
		showmarker = true,
		timeout = 120000,
		basicItem = "rock",
		items = {
			{ name = "clay", label = "Clay", chance = 8, amount = 4 },
			{ name = "coal", label = "Coal", chance = 8, amount = 4 },
			{ name = "copper", label = "Copper", chance = 6, amount = 8 },
			{ name = "iron", label = "Iron", chance = 6, amount = 12 },
			{ name = "nitrite", label = "Nitrite", chance = 8, amount = 4 },
			{ name = "salt", label = "Salt", chance = 10, amount = 4 },
			{ name = "goldnugget", label = "Gold Nuggets", chance = 3, amount = 2 },
		},
	},
	{
		coords = vector3(-1443.628, 1209.869, 227.053),
		job = false, -- You can either add a job or a table of jobs
		jobMultiplier = false, -- Multiplier for the job(s)
		showmarker = true,
		timeout = 120000,
		basicItem = "rock",
		items = {
			{ name = "clay", label = "Clay", chance = 8, amount = 4 },
			{ name = "coal", label = "Coal", chance = 8, amount = 4 },
			{ name = "copper", label = "Copper", chance = 6, amount = 8 },
			{ name = "iron", label = "Iron", chance = 6, amount = 12 },
			{ name = "nitrite", label = "Nitrite", chance = 8, amount = 4 },
			{ name = "salt", label = "Salt", chance = 10, amount = 4 },
			{ name = "goldnugget", label = "Gold Nuggets", chance = 3, amount = 2 },
		},
	},
	{
		coords = vector3(-1448.016, 1197.157, 226.405),
		job = false, -- You can either add a job or a table of jobs
		jobMultiplier = false, -- Multiplier for the job(s)
		showmarker = true,
		timeout = 120000,
		basicItem = "rock",
		items = {
			{ name = "clay", label = "Clay", chance = 8, amount = 4 },
			{ name = "coal", label = "Coal", chance = 8, amount = 4 },
			{ name = "copper", label = "Copper", chance = 6, amount = 8 },
			{ name = "iron", label = "Iron", chance = 6, amount = 12 },
			{ name = "nitrite", label = "Nitrite", chance = 8, amount = 4 },
			{ name = "salt", label = "Salt", chance = 10, amount = 4 },
			{ name = "goldnugget", label = "Gold Nuggets", chance = 3, amount = 2 },
		},
	},
	{
		coords = vector3(-1423.038, 1219.031, 222.626),
		job = false, -- You can either add a job or a table of jobs
		jobMultiplier = false, -- Multiplier for the job(s)
		showmarker = true,
		timeout = 120000,
		basicItem = "rock",
		items = {
			{ name = "clay", label = "Clay", chance = 8, amount = 4 },
			{ name = "coal", label = "Coal", chance = 8, amount = 4 },
			{ name = "copper", label = "Copper", chance = 6, amount = 8 },
			{ name = "iron", label = "Iron", chance = 6, amount = 12 },
			{ name = "nitrite", label = "Nitrite", chance = 8, amount = 4 },
			{ name = "salt", label = "Salt", chance = 10, amount = 4 },
			{ name = "goldnugget", label = "Gold Nuggets", chance = 3, amount = 2 },
		},
	},
	{
		coords = vector3(-1411.517, 1213.851, 223.079),
		job = false, -- You can either add a job or a table of jobs
		jobMultiplier = false, -- Multiplier for the job(s)
		showmarker = true,
		timeout = 120000,
		basicItem = "rock",
		items = {
			{ name = "clay", label = "Clay", chance = 8, amount = 4 },
			{ name = "coal", label = "Coal", chance = 8, amount = 4 },
			{ name = "copper", label = "Copper", chance = 6, amount = 8 },
			{ name = "iron", label = "Iron", chance = 6, amount = 12 },
			{ name = "nitrite", label = "Nitrite", chance = 8, amount = 4 },
			{ name = "salt", label = "Salt", chance = 10, amount = 4 },
			{ name = "goldnugget", label = "Gold Nuggets", chance = 3, amount = 2 },
		},
	},
	{
		coords = vector3(-1408.816, 1204.453, 223.296),
		job = false, -- You can either add a job or a table of jobs
		jobMultiplier = false, -- Multiplier for the job(s)
		showmarker = true,
		timeout = 120000,
		basicItem = "rock",
		items = {
			{ name = "clay", label = "Clay", chance = 8, amount = 4 },
			{ name = "coal", label = "Coal", chance = 8, amount = 4 },
			{ name = "copper", label = "Copper", chance = 6, amount = 8 },
			{ name = "iron", label = "Iron", chance = 6, amount = 12 },
			{ name = "nitrite", label = "Nitrite", chance = 8, amount = 4 },
			{ name = "salt", label = "Salt", chance = 10, amount = 4 },
			{ name = "goldnugget", label = "Gold Nuggets", chance = 3, amount = 2 },
		},
	},
	{
		coords = vector3(2763.174, 1406.2044, 68.444854),
		job = false, -- You can either add a job or a table of jobs
		jobMultiplier = false, -- Multiplier for the job(s)
		showmarker = true,
		timeout = 120000,
		basicItem = "rock",
		items = {
			{ name = "clay", label = "Clay", chance = 8, amount = 4 },
			{ name = "coal", label = "Coal", chance = 8, amount = 4 },
			{ name = "copper", label = "Copper", chance = 6, amount = 8 },
			{ name = "iron", label = "Iron", chance = 6, amount = 12 },
			{ name = "nitrite", label = "Nitrite", chance = 8, amount = 4 },
			{ name = "salt", label = "Salt", chance = 10, amount = 4 },
			{ name = "goldnugget", label = "Gold Nuggets", chance = 3, amount = 2 },
		},
	},
	{
		coords = vector3(2726.7871, 1384.9691, 68.878173),
		job = false, -- You can either add a job or a table of jobs
		jobMultiplier = false, -- Multiplier for the job(s)
		showmarker = true,
		timeout = 120000,
		basicItem = "rock",
		items = {
			{ name = "clay", label = "Clay", chance = 8, amount = 4 },
			{ name = "coal", label = "Coal", chance = 8, amount = 4 },
			{ name = "copper", label = "Copper", chance = 6, amount = 8 },
			{ name = "iron", label = "Iron", chance = 6, amount = 12 },
			{ name = "nitrite", label = "Nitrite", chance = 8, amount = 4 },
			{ name = "salt", label = "Salt", chance = 10, amount = 4 },
			{ name = "goldnugget", label = "Gold Nuggets", chance = 3, amount = 2 },
		},
	},
	{
		coords = vector3(2717.3491, 1314.0633, 69.75164),
		job = false, -- You can either add a job or a table of jobs
		jobMultiplier = false, -- Multiplier for the job(s)
		showmarker = true,
		timeout = 120000,
		basicItem = "rock",
		items = {
			{ name = "clay", label = "Clay", chance = 8, amount = 4 },
			{ name = "coal", label = "Coal", chance = 8, amount = 4 },
			{ name = "copper", label = "Copper", chance = 6, amount = 8 },
			{ name = "iron", label = "Iron", chance = 6, amount = 12 },
			{ name = "nitrite", label = "Nitrite", chance = 8, amount = 4 },
			{ name = "salt", label = "Salt", chance = 10, amount = 4 },
			{ name = "goldnugget", label = "Gold Nuggets", chance = 3, amount = 2 },
		},
	},
	{
		coords = vector3(2753.299, 1368.421, 67.826),
		job = false, -- You can either add a job or a table of jobs
		jobMultiplier = false, -- Multiplier for the job(s)
		showmarker = true,
		timeout = 120000,
		basicItem = "rock",
		items = {
			{ name = "clay", label = "Clay", chance = 8, amount = 4 },
			{ name = "coal", label = "Coal", chance = 8, amount = 4 },
			{ name = "copper", label = "Copper", chance = 6, amount = 8 },
			{ name = "iron", label = "Iron", chance = 6, amount = 12 },
			{ name = "nitrite", label = "Nitrite", chance = 8, amount = 4 },
			{ name = "salt", label = "Salt", chance = 10, amount = 4 },
			{ name = "goldnugget", label = "Gold Nuggets", chance = 3, amount = 2 },
		},
	},
	{
		coords = vector3(2755.469, 1358.720, 68.222),
		job = false, -- You can either add a job or a table of jobs
		jobMultiplier = false, -- Multiplier for the job(s)
		showmarker = true,
		timeout = 120000,
		basicItem = "rock",
		items = {
			{ name = "clay", label = "Clay", chance = 8, amount = 4 },
			{ name = "coal", label = "Coal", chance = 8, amount = 4 },
			{ name = "copper", label = "Copper", chance = 6, amount = 8 },
			{ name = "iron", label = "Iron", chance = 6, amount = 12 },
			{ name = "nitrite", label = "Nitrite", chance = 8, amount = 4 },
			{ name = "salt", label = "Salt", chance = 10, amount = 4 },
			{ name = "goldnugget", label = "Gold Nuggets", chance = 3, amount = 2 },
		},
	},
	{
		coords = vector3(2721.751, 1376.885, 68.876),
		job = false, -- You can either add a job or a table of jobs
		jobMultiplier = false, -- Multiplier for the job(s)
		showmarker = true,
		timeout = 120000,
		basicItem = "rock",
		items = {
			{ name = "clay", label = "Clay", chance = 8, amount = 4 },
			{ name = "coal", label = "Coal", chance = 8, amount = 4 },
			{ name = "copper", label = "Copper", chance = 6, amount = 8 },
			{ name = "iron", label = "Iron", chance = 6, amount = 12 },
			{ name = "nitrite", label = "Nitrite", chance = 8, amount = 4 },
			{ name = "salt", label = "Salt", chance = 10, amount = 4 },
			{ name = "goldnugget", label = "Gold Nuggets", chance = 3, amount = 2 },
		},
	},
	{
		coords = vector3(2724.006, 1410.228, 68.849),
		job = false, -- You can either add a job or a table of jobs
		jobMultiplier = false, -- Multiplier for the job(s)
		showmarker = true,
		timeout = 120000,
		basicItem = "rock",
		items = {
			{ name = "clay", label = "Clay", chance = 8, amount = 4 },
			{ name = "coal", label = "Coal", chance = 8, amount = 4 },
			{ name = "copper", label = "Copper", chance = 6, amount = 8 },
			{ name = "iron", label = "Iron", chance = 6, amount = 12 },
			{ name = "nitrite", label = "Nitrite", chance = 8, amount = 4 },
			{ name = "salt", label = "Salt", chance = 10, amount = 4 },
			{ name = "goldnugget", label = "Gold Nuggets", chance = 3, amount = 2 },
		},
	},
	{
		coords = vector3(2746.628, 1379.067, 68.550),
		job = false, -- You can either add a job or a table of jobs
		jobMultiplier = false, -- Multiplier for the job(s)
		showmarker = true,
		timeout = 120000,
		basicItem = "rock",
		items = {
			{ name = "clay", label = "Clay", chance = 8, amount = 4 },
			{ name = "coal", label = "Coal", chance = 8, amount = 4 },
			{ name = "copper", label = "Copper", chance = 6, amount = 8 },
			{ name = "iron", label = "Iron", chance = 6, amount = 12 },
			{ name = "nitrite", label = "Nitrite", chance = 8, amount = 4 },
			{ name = "salt", label = "Salt", chance = 10, amount = 4 },
			{ name = "goldnugget", label = "Gold Nuggets", chance = 3, amount = 2 },
		},
	},
	{
		coords = vector3(2740.660, 1355.072, 68.169),
		job = false, -- You can either add a job or a table of jobs
		jobMultiplier = false, -- Multiplier for the job(s)
		showmarker = true,
		timeout = 120000,
		basicItem = "rock",
		items = {
			{ name = "clay", label = "Clay", chance = 8, amount = 4 },
			{ name = "coal", label = "Coal", chance = 8, amount = 4 },
			{ name = "copper", label = "Copper", chance = 6, amount = 8 },
			{ name = "iron", label = "Iron", chance = 6, amount = 12 },
			{ name = "nitrite", label = "Nitrite", chance = 8, amount = 4 },
			{ name = "salt", label = "Salt", chance = 10, amount = 4 },
			{ name = "goldnugget", label = "Gold Nuggets", chance = 3, amount = 2 },
		},
	},
	{
		coords = vector3(2734.180, 1328.900, 69.618),
		job = false, -- You can either add a job or a table of jobs
		jobMultiplier = false, -- Multiplier for the job(s)
		showmarker = true,
		timeout = 120000,
		basicItem = "rock",
		items = {
			{ name = "clay", label = "Clay", chance = 8, amount = 4 },
			{ name = "coal", label = "Coal", chance = 8, amount = 4 },
			{ name = "copper", label = "Copper", chance = 6, amount = 8 },
			{ name = "iron", label = "Iron", chance = 6, amount = 12 },
			{ name = "nitrite", label = "Nitrite", chance = 8, amount = 4 },
			{ name = "salt", label = "Salt", chance = 10, amount = 4 },
			{ name = "goldnugget", label = "Gold Nuggets", chance = 3, amount = 2 },
		},
	},
	{
		coords = vector3(2779.162, 1365.785, 70.666),
		job = false, -- You can either add a job or a table of jobs
		jobMultiplier = false, -- Multiplier for the job(s)
		showmarker = true,
		timeout = 120000,
		basicItem = "rock",
		items = {
			{ name = "clay", label = "Clay", chance = 8, amount = 4 },
			{ name = "coal", label = "Coal", chance = 8, amount = 4 },
			{ name = "copper", label = "Copper", chance = 6, amount = 8 },
			{ name = "iron", label = "Iron", chance = 6, amount = 12 },
			{ name = "nitrite", label = "Nitrite", chance = 8, amount = 4 },
			{ name = "salt", label = "Salt", chance = 10, amount = 4 },
			{ name = "goldnugget", label = "Gold Nuggets", chance = 3, amount = 2 },
		},
	},
	{
		coords = vector3(2776.297, 1362.892, 70.601),
		job = false, -- You can either add a job or a table of jobs
		jobMultiplier = false, -- Multiplier for the job(s)
		showmarker = true,
		timeout = 120000,
		basicItem = "rock",
		items = {
			{ name = "clay", label = "Clay", chance = 8, amount = 4 },
			{ name = "coal", label = "Coal", chance = 8, amount = 4 },
			{ name = "copper", label = "Copper", chance = 6, amount = 8 },
			{ name = "iron", label = "Iron", chance = 6, amount = 12 },
			{ name = "nitrite", label = "Nitrite", chance = 8, amount = 4 },
			{ name = "salt", label = "Salt", chance = 10, amount = 4 },
			{ name = "goldnugget", label = "Gold Nuggets", chance = 3, amount = 2 },
		},
	},
	{
		coords = vector3(2779.334, 1372.814, 68.555),
		job = false, -- You can either add a job or a table of jobs
		jobMultiplier = false, -- Multiplier for the job(s)
		showmarker = true,
		timeout = 120000,
		basicItem = "rock",
		items = {
			{ name = "clay", label = "Clay", chance = 8, amount = 4 },
			{ name = "coal", label = "Coal", chance = 8, amount = 4 },
			{ name = "copper", label = "Copper", chance = 6, amount = 8 },
			{ name = "iron", label = "Iron", chance = 6, amount = 12 },
			{ name = "nitrite", label = "Nitrite", chance = 8, amount = 4 },
			{ name = "salt", label = "Salt", chance = 10, amount = 4 },
			{ name = "goldnugget", label = "Gold Nuggets", chance = 3, amount = 2 },
		},
	},
	{
		coords = vector3(2779.118, 1382.328, 69.171),
		job = false, -- You can either add a job or a table of jobs
		jobMultiplier = false, -- Multiplier for the job(s)
		showmarker = true,
		timeout = 120000,
		basicItem = "rock",
		items = {
			{ name = "clay", label = "Clay", chance = 8, amount = 4 },
			{ name = "coal", label = "Coal", chance = 8, amount = 4 },
			{ name = "copper", label = "Copper", chance = 6, amount = 8 },
			{ name = "iron", label = "Iron", chance = 6, amount = 12 },
			{ name = "nitrite", label = "Nitrite", chance = 8, amount = 4 },
			{ name = "salt", label = "Salt", chance = 10, amount = 4 },
			{ name = "goldnugget", label = "Gold Nuggets", chance = 3, amount = 2 },
		},
	},
	{
		coords = vector3(2764.783, 1388.274, 68.474),
		job = false, -- You can either add a job or a table of jobs
		jobMultiplier = false, -- Multiplier for the job(s)
		showmarker = true,
		timeout = 120000,
		basicItem = "rock",
		items = {
			{ name = "clay", label = "Clay", chance = 8, amount = 4 },
			{ name = "coal", label = "Coal", chance = 8, amount = 4 },
			{ name = "copper", label = "Copper", chance = 6, amount = 8 },
			{ name = "iron", label = "Iron", chance = 6, amount = 12 },
			{ name = "nitrite", label = "Nitrite", chance = 8, amount = 4 },
			{ name = "salt", label = "Salt", chance = 10, amount = 4 },
			{ name = "goldnugget", label = "Gold Nuggets", chance = 3, amount = 2 },
		},
	},
	{
		coords = vector3(2760.922, 1395.663, 68.703),
		job = false, -- You can either add a job or a table of jobs
		jobMultiplier = false, -- Multiplier for the job(s)
		showmarker = true,
		timeout = 120000,
		basicItem = "rock",
		items = {
			{ name = "clay", label = "Clay", chance = 8, amount = 4 },
			{ name = "coal", label = "Coal", chance = 8, amount = 4 },
			{ name = "copper", label = "Copper", chance = 6, amount = 8 },
			{ name = "iron", label = "Iron", chance = 6, amount = 12 },
			{ name = "nitrite", label = "Nitrite", chance = 8, amount = 4 },
			{ name = "salt", label = "Salt", chance = 10, amount = 4 },
			{ name = "goldnugget", label = "Gold Nuggets", chance = 3, amount = 2 },
		},
	},
	{
		coords = vector3(2744.979, 1414.050, 68.815),
		job = false, -- You can either add a job or a table of jobs
		jobMultiplier = false, -- Multiplier for the job(s)
		showmarker = true,
		timeout = 120000,
		basicItem = "rock",
		items = {
			{ name = "clay", label = "Clay", chance = 8, amount = 4 },
			{ name = "coal", label = "Coal", chance = 8, amount = 4 },
			{ name = "copper", label = "Copper", chance = 6, amount = 8 },
			{ name = "iron", label = "Iron", chance = 6, amount = 12 },
			{ name = "nitrite", label = "Nitrite", chance = 8, amount = 4 },
			{ name = "salt", label = "Salt", chance = 10, amount = 4 },
			{ name = "goldnugget", label = "Gold Nuggets", chance = 3, amount = 2 },
		},
	},
	{
		coords = vector3(-5981.353, -3161.664, -26.440),
		job = false, -- You can either add a job or a table of jobs
		jobMultiplier = false, -- Multiplier for the job(s)
		showmarker = true,
		timeout = 120000,
		basicItem = "rock",
		items = {
			{ name = "clay", label = "Clay", chance = 8, amount = 4 },
			{ name = "coal", label = "Coal", chance = 8, amount = 4 },
			{ name = "copper", label = "Copper", chance = 6, amount = 8 },
			{ name = "iron", label = "Iron", chance = 6, amount = 12 },
			{ name = "nitrite", label = "Nitrite", chance = 8, amount = 4 },
			{ name = "salt", label = "Salt", chance = 10, amount = 4 },
			{ name = "goldnugget", label = "Gold Nuggets", chance = 3, amount = 2 },
		},
	},
	{
		coords = vector3(-5985.137, -3165.975, -26.559),
		job = false, -- You can either add a job or a table of jobs
		jobMultiplier = false, -- Multiplier for the job(s)
		showmarker = true,
		timeout = 120000,
		basicItem = "rock",
		items = {
			{ name = "clay", label = "Clay", chance = 8, amount = 4 },
			{ name = "coal", label = "Coal", chance = 8, amount = 4 },
			{ name = "copper", label = "Copper", chance = 6, amount = 8 },
			{ name = "iron", label = "Iron", chance = 6, amount = 12 },
			{ name = "nitrite", label = "Nitrite", chance = 8, amount = 4 },
			{ name = "salt", label = "Salt", chance = 10, amount = 4 },
			{ name = "goldnugget", label = "Gold Nuggets", chance = 3, amount = 2 },
		},
	},
	{
		coords = vector3(-5978.632, -3165.824, -25.980),
		job = false, -- You can either add a job or a table of jobs
		jobMultiplier = false, -- Multiplier for the job(s)
		showmarker = true,
		timeout = 120000,
		basicItem = "rock",
		items = {
			{ name = "clay", label = "Clay", chance = 8, amount = 4 },
			{ name = "coal", label = "Coal", chance = 8, amount = 4 },
			{ name = "copper", label = "Copper", chance = 6, amount = 8 },
			{ name = "iron", label = "Iron", chance = 6, amount = 12 },
			{ name = "nitrite", label = "Nitrite", chance = 8, amount = 4 },
			{ name = "salt", label = "Salt", chance = 10, amount = 4 },
			{ name = "goldnugget", label = "Gold Nuggets", chance = 3, amount = 2 },
		},
	},
	{
		coords = vector3(-5970.806, -3166.869, -25.336),
		job = false, -- You can either add a job or a table of jobs
		jobMultiplier = false, -- Multiplier for the job(s)
		showmarker = true,
		timeout = 120000,
		basicItem = "rock",
		items = {
			{ name = "clay", label = "Clay", chance = 8, amount = 4 },
			{ name = "coal", label = "Coal", chance = 8, amount = 4 },
			{ name = "copper", label = "Copper", chance = 6, amount = 8 },
			{ name = "iron", label = "Iron", chance = 6, amount = 12 },
			{ name = "nitrite", label = "Nitrite", chance = 8, amount = 4 },
			{ name = "salt", label = "Salt", chance = 10, amount = 4 },
			{ name = "goldnugget", label = "Gold Nuggets", chance = 3, amount = 2 },
		},
	},
	{
		coords = vector3(-5969.234, -3170.985, -24.630),
		job = false, -- You can either add a job or a table of jobs
		jobMultiplier = false, -- Multiplier for the job(s)
		showmarker = true,
		timeout = 120000,
		basicItem = "rock",
		items = {
			{ name = "clay", label = "Clay", chance = 8, amount = 4 },
			{ name = "coal", label = "Coal", chance = 8, amount = 4 },
			{ name = "copper", label = "Copper", chance = 6, amount = 8 },
			{ name = "iron", label = "Iron", chance = 6, amount = 12 },
			{ name = "nitrite", label = "Nitrite", chance = 8, amount = 4 },
			{ name = "salt", label = "Salt", chance = 10, amount = 4 },
			{ name = "goldnugget", label = "Gold Nuggets", chance = 3, amount = 2 },
		},
	},
	{
		coords = vector3(-5973.632, -3165.318, -25.683),
		job = false, -- You can either add a job or a table of jobs
		jobMultiplier = false, -- Multiplier for the job(s)
		showmarker = true,
		timeout = 120000,
		basicItem = "rock",
		items = {
			{ name = "clay", label = "Clay", chance = 8, amount = 4 },
			{ name = "coal", label = "Coal", chance = 8, amount = 4 },
			{ name = "copper", label = "Copper", chance = 6, amount = 8 },
			{ name = "iron", label = "Iron", chance = 6, amount = 12 },
			{ name = "nitrite", label = "Nitrite", chance = 8, amount = 4 },
			{ name = "salt", label = "Salt", chance = 10, amount = 4 },
			{ name = "goldnugget", label = "Gold Nuggets", chance = 3, amount = 2 },
		},
	},
	{
		coords = vector3(-5975.267, -3167.654, -25.551),
		job = false, -- You can either add a job or a table of jobs
		jobMultiplier = false, -- Multiplier for the job(s)
		showmarker = true,
		timeout = 120000,
		basicItem = "rock",
		items = {
			{ name = "clay", label = "Clay", chance = 8, amount = 4 },
			{ name = "coal", label = "Coal", chance = 8, amount = 4 },
			{ name = "copper", label = "Copper", chance = 6, amount = 8 },
			{ name = "iron", label = "Iron", chance = 6, amount = 12 },
			{ name = "nitrite", label = "Nitrite", chance = 8, amount = 4 },
			{ name = "salt", label = "Salt", chance = 10, amount = 4 },
			{ name = "goldnugget", label = "Gold Nuggets", chance = 3, amount = 2 },
		},
	},
}
