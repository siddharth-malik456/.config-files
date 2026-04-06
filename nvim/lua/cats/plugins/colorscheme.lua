return {
	{
		"catppuccin/nvim",
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			require("catppuccin").setup({
				flavour = "mocha", -- latte, frappe, macchiato, mocha
				background = { -- :h background
					light = "latte",
					dark = "mocha",
				},
				transparent_background = true, -- disables setting the background color.
				show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
				term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
				dim_inactive = {
					enabled = false, -- dims the background color of inactive window
					shade = "dark",
					percentage = 0.15, -- percentage of the shade to apply to the inactive window
				},
				no_italic = false, -- Force no italic
				no_bold = false, -- Force no bold
				no_underline = false, -- Force no underline
				styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
					comments = { "italic" }, -- Change the style of comments
					conditionals = { "italic" },
					loops = {},
					functions = {},
					keywords = {},
					strings = {},
					variables = {},
					numbers = {},
					booleans = {},
					properties = {},
					types = {},
					operators = {},
					-- miscs = {}, -- Uncomment to turn off hard-coded styles
				},
				color_overrides = {},
				custom_highlights = {},
				default_integrations = true,
				integrations = {
					cmp = true,
					gitsigns = true,
					nvimtree = true,
					treesitter = true,
					notify = false,
					mini = {
						enabled = true,
						indentscope_color = "",
					},
					-- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
				},
			})
			-- load the colorscheme here
			vim.cmd([[colorscheme catppuccin]])
		end,
	},
}

-- return {
-- 	"scottmckendry/cyberdream.nvim",
-- 	lazy = false,
-- 	priority = 1000,
-- 	config = function()
-- 		require("cyberdream").setup({
-- 			-- Enable transparent background
-- 			transparent = true,
--
-- 			-- Enable italics comments
-- 			italic_comments = true,
--
-- 			-- Replace all fillchars with ' ' for the ultimate clean look
-- 			hide_fillchars = false,
--
-- 			-- Modern borderless telescope theme
-- 			borderless_telescope = true,
--
-- 			-- Set terminal colors used in `:terminal`
-- 			terminal_colors = true,
--
-- 			-- Use caching to improve performance - WARNING: experimental feature - expect the unexpected!
-- 			-- Early testing shows a 60-70% improvement in startup time. YMMV. Disables dynamic light/dark theme switching.
-- 			cache = false, -- generate cache with :CyberdreamBuildCache and clear with :CyberdreamClearCache
--
-- 			theme = {
-- 				variant = "default", -- use "light" for the light variant. Also accepts "auto" to set dark or light colors based on the current value of `vim.o.background`
-- 				highlights = {
-- 					-- Highlight groups to override, adding new groups is also possible
-- 					-- See `:h highlight-groups` for a list of highlight groups or run `:hi` to see all groups and their current values
--
-- 					-- Example:
-- 					Comment = { fg = "#696969", bg = "NONE", italic = true },
--
-- 					-- Complete list can be found in `lua/cyberdream/theme.lua`
-- 				},
--
-- 				-- Override a highlight group entirely using the color palette
-- 				overrides = function(colors) -- NOTE: This function nullifies the `highlights` option
-- 					-- Example:
-- 					return {
-- 						Comment = { fg = colors.green, bg = "NONE", italic = true },
-- 						["@property"] = { fg = colors.magenta, bold = true },
-- 					}
-- 				end,
--
-- 				-- Override a color entirely
-- 				colors = {
-- 					-- For a list of colors see `lua/cyberdream/colours.lua`
-- 					-- Example:
-- 					bg = "#000000",
-- 					green = "#00ff00",
-- 					magenta = "#ff00ff",
-- 				},
-- 			},
--
-- 			-- Disable or enable colorscheme extensions
-- 			extensions = {
-- 				telescope = true,
-- 				notify = true,
-- 				mini = true,
-- 			},
-- 		})
-- 		vim.cmd("colorscheme cyberdream")
-- 	end,
-- }

-- return {
-- 	"olimorris/onedarkpro.nvim",
-- 	priority = 1000, -- Ensure it loads first
-- 	config = function()
-- 		vim.cmd("colorscheme onedark")
-- 	end,
-- }
