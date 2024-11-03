return {
    "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
        "WhoIsSethDaniel/mason-tool-installer.nvim",
    },
    config = function()
        require("mason").setup()

        require("mason-lspconfig").setup({
            automatic_installation = true,
            ensure_installed = {
                "cssls",
                "eslint",
                "html",
                "jsonls",
                "pyright",
                "tailwindcss",
				-- C++
				"clangd",
				-- C#
				"omnisharp",
				-- Rust
				"rust_analyzer",
				-- Go
				"gopls",
				-- Haskell
				"hls",
				-- Java
				"jdtls",
				-- JavaScript/TypeScript
				"ts_ls",
				-- Bash
				"bashls",
            },
        })

        require("mason-tool-installer").setup({
            ensure_installed = {
			
				-- Debug Adapters
				"netcoredbg",           -- C#
				"codelldb",             -- Rust
				"delve",                -- Go
				"debugpy",              -- Python
				"java-debug-adapter",   -- Java
				"js-debug-adapter",     -- JavaScript/TypeScript
				
				-- Linters
				"cpplint", 
				"flake8", 
				"pylint", 
				"mypy", 
				"eslint_d", 
				"shellcheck",
				
				
				
				-- Formatters
                "prettier",
                "stylua", -- lua formatter
                "isort", -- python formatter
                "black", -- python formatter
				"clang-format",
				"rustfmt",
				"gofumpt",
				"goimports",
				"ormolu",
				"autopep8",
				"yapf",
				"google-java-format",
				"shfmt",
            },
			
			-- Optional: Automatically install/upgrade tools on startup
			auto_update = false,
			run_on_start = true,
        })
    end,
}