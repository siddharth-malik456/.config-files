return {
	"startup-nvim/startup.nvim",
	requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
	config = function()
		require("startup").setup({
			header = {
				type = "text",
				align = "center",
				fold_section = false,
				title = "Header",
				margin = 5,
				content = require("startup.headers").hydra_header,
				highlight = "Statement",
				default_color = "",
				oldfiles_amount = 0,
			},
			header_2 = {
				type = "text",
				oldfiles_directory = false,
				align = "center",
				fold_section = false,
				title = "Quote",
				margin = 5,
				content = require("startup.functions").quote(),
				highlight = "Constant",
				default_color = "",
				oldfiles_amount = 0,
			},
			-- name which will be displayed and command
			body = {
				type = "mapping",
				align = "center",
				fold_section = false,
				title = "EAT ... SLEEP ... CODE",
				margin = 5,
				content = {
					{ " Find File", "Telescope find_files", "<leader>ff" },
					{ "󰍉 Find Word", "Telescope live_grep", "<leader>lg" },
					{ " Recent Files", "Telescope oldfiles", "<leader>of" },
					{ " File Browser", "Telescope file_browser", "<leader>fb" },
					{ " Colorschemes", "Telescope colorscheme", "<leader>cs" },
					{ " New File", "lua require'startup'.new_file()", "<leader>nf" },
				},
				highlight = "String",
				default_color = "",
				oldfiles_amount = 5,
			},
			body_2 = {
				type = "oldfiles",
				oldfiles_directory = true,
				align = "center",
				fold_section = false,
				title = "",
				margin = 5,
				content = {},
				highlight = "String",
				default_color = "#FFFFFF",
				oldfiles_amount = 5,
			},
			footer = {
				type = "oldfiles",
				oldfiles_directory = false,
				align = "center",
				fold_section = true,
				title = "Oldfiles",
				margin = 5,
				content = { "startup.nvim" },
				highlight = "TSString",
				default_color = "#FFFFFF",
				oldfiles_amount = 5,
			},
			clock = {
				type = "text",
				content = function()
					local clock = " " .. os.date("%H:%M:%S")
					local date = " " .. os.date("%d-%m-%y")
					return { clock, date }
				end,
				oldfiles_directory = false,
				align = "center",
				fold_section = false,
				title = "",
				margin = 5,
				highlight = "TSString",
				default_color = "#FFFFFF",
				oldfiles_amount = 10,
			},

			footer_2 = {
				type = "text",
				content = require("startup.functions").packer_plugins(),
				oldfiles_directory = false,
				align = "center",
				fold_section = false,
				title = "",
				margin = 5,
				highlight = "TSString",
				default_color = "#FFFFFF",
				oldfiles_amount = 10,
			},

			options = {
				after = function()
					require("startup.utils").oldfiles_mappings()
				end,
				mapping_keys = true,
				cursor_column = 0.5,
				empty_lines_between_mappings = true,
				disable_statuslines = true,
				paddings = { 2, 2, 2, 2, 2, 2, 2 },
			},
			colors = {
				background = "#ffffff",
				folded_section = "#56b6c2",
			},
			parts = {
				"header",
				"header_2",
				"body",
				"body_2",
				"footer",
				"clock",
				"footer_2",
			},
		})
	end,
}
