function copy_absolute_path(opts)
	local path = vim.fn["expand"]("%:p")
	local clipboard_register = "+"
	vim.fn["setreg"](clipboard_register, path)
	print("Copied " .. path)
end

function copy_relative_path(opts)
	local path = vim.fn["expand"]("%")
	local clipboard_register = "+"
	vim.fn["setreg"](clipboard_register, path)
	print("Copied " .. path)
end

vim.api.nvim_create_user_command("SocksCopyAbsolutePath", copy_absolute_path, {})
vim.api.nvim_create_user_command("SocksCopyRelativePath", copy_relative_path, {})
