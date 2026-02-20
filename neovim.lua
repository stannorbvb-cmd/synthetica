return {
    {
        "bjarneo/aether.nvim",
        branch = "v2",
        name = "aether",
        priority = 1000,
        opts = {
            transparent = false,
            colors = {
                -- Background colors
                bg = "#000000",
                bg_dark = "#000000",
                bg_highlight = "#3e3e5d",

                -- Foreground colors
                -- fg: Object properties, builtin types, builtin variables, member access, default text
                fg = "#e7dfdf",
                -- fg_dark: Inactive elements, statusline, secondary text
                fg_dark = "#d3efef",
                -- comment: Line highlight, gutter elements, disabled states
                comment = "#3e3e5d",

                -- Accent colors
                -- red: Errors, diagnostics, tags, deletions, breakpoints
                red = "#ec0042",
                -- orange: Constants, numbers, current line number, git modifications
                orange = "#ff407d",
                -- yellow: Types, classes, constructors, warnings, numbers, booleans
                yellow = "#ea1654",
                -- green: Comments, strings, success states, git additions
                green = "#598672",
                -- cyan: Parameters, regex, preprocessor, hints, properties
                cyan = "#8091a2",
                -- blue: Functions, keywords, directories, links, info diagnostics
                blue = "#6f6f92",
                -- purple: Storage keywords, special keywords, identifiers, namespaces
                purple = "#c7b1c7",
                -- magenta: Function declarations, exception handling, tags
                magenta = "#e7dfdf",
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Enable hot reload
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}
