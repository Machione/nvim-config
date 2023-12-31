return {
    "epwalsh/obsidian.nvim",
    version = "*",
    lazy = true,
    ft = "markdown",
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    config = function()
        require("obsidian").setup({
            workspaces = {
                {
                    name = "Second Brain",
                    path = "/Users/ryan/Library/Mobile Documents/iCloud~md~obsidian/Documents/Second Brain"
                }
            }
        })
    end
}
