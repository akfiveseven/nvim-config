return {
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local harpoon = require("harpoon")
      harpoon:setup({
        settings = {
          save_on_toggle = false,
          sync_on_ui_close = true,
          key = function()
            return vim.loop.cwd()
          end,
        },
      })

      -- basic telescope configuration
      local conf = require("telescope.config").values
      local function toggle_telescope(harpoon_files)
        local file_paths = {}
        for _, item in ipairs(harpoon_files.items) do
          table.insert(file_paths, item.value)
        end

        require("telescope.pickers")
          .new({}, {
            prompt_title = "Harpoon",
            finder = require("telescope.finders").new_table({
              results = file_paths,
            }),
            previewer = conf.file_previewer({}),
            sorter = conf.generic_sorter({}),
          })
          :find()
      end

      vim.keymap.set("n", "<C-e>", function()
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end)

      vim.keymap.set("n", "<leader><leader>", function()
        toggle_telescope(harpoon:list())
      end, { desc = "Open harpoon window" })

      -- local harpoon = require("harpoon")

      -- REQUIRED
      -- harpoon:setup()
      -- OPTIONAL: Set up keymaps
      vim.keymap.set("n", "<leader>A", function()
        harpoon:list():append()
      end)
      -- vim.keymap.set("n", "<C-e>", function()
      -- harpoon.ui:toggle_quick_menu(harpoon:list())
      -- end)

      vim.keymap.set("n", "<leader>hh", function()
        harpoon:list():select(1)
      end)

      vim.keymap.set("n", "<leader>hn", function()
        harpoon:list():select(2)
      end)

      vim.keymap.set("n", "<leader>ht", function()
        harpoon:list():select(3)
      end)

      vim.keymap.set("n", "<leader>hs", function()
        harpoon:list():select(4)
      end)

      -- vim.keymap.set("n", "<C-n>", function()
      --   harpoon:list():select(1)
      -- end)

      -- Toggle previous & next buffers stored within Harpoon list
      vim.keymap.set("n", "<C-p>", function()
        harpoon:list():prev()
      end)
      vim.keymap.set("n", "<C-n>", function()
        harpoon:list():next()
      end)
    end,
  },
}
