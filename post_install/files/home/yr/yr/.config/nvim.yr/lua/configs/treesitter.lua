local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
	return
end

configs.setup({
  ensure_installed = {
    "lua",
    "hcl",
    "make",
    "cmake",
    "c",
    "bash",
    "perl",
    -- "sql",
    "yaml",
    "vim",
    "php",
    "java",
    "javascript",
    "c_sharp",
    "python",
    "json",
    "html",
    "css",
  },
  indent = {
    enable = true,
    disable = { "python", "yaml" },
  },
  highlight = {
    enable = true,
    use_languagetree = true,
  },
  rainbow = {
    enable = true,
    extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
    max_file_lines = nil, -- Do not enable for files with more than n lines, int
    colors = {
      "#ff0076",
      "#a89984",
      "#b16286",
      "#d79921",
      "#689d6a",
      "#d65d0e",
    },
  }
})
