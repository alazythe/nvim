require("config.lazy")
require("init")

local core_conf_files = {
	"settings.lua",
}

-- source core config files
for _, name in ipairs(core_conf_files) do
	local path = string.format("%s/core/%s", vim.fn.stdpath("config"), name)
	local source_cmd = "source" .. path
	vim.cmd(source_cmd)
end
