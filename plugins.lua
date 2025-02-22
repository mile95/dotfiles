local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

local highlight = {
    "CursorColumn",
    "Whitespace",
}
require("ibl").setup {
    indent = { highlight = highlight, char = "" },
    whitespace = {
        highlight = highlight,
        remove_blankline_trail = false,
    },
    scope = { enabled = false },
}
-- Install your plugins here
return packer.startup(function(use)
	use ("wbthomason/packer.nvim") -- Have packer manage itself	
	use ("romainl/Apprentice") -- Color theme
	use ("nvim-tree/nvim-tree.lua") -- file explorer
	use ("nvim-tree/nvim-web-devicons") -- nerd fonts 
	use ("sbdchd/neoformat") -- auto formatters
  use ("lukas-reineke/indent-blankline.nvim") --indent highlighting
  use ('CRAG666/code_runner.nvim') -- code runner
  use ("nvim-lua/plenary.nvim") -- dependency for telescope
  use {'nvim-telescope/telescope.nvim', tag = '0.1.8', requires = {{'nvim-lua/plenary.nvim'}}}




	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)
