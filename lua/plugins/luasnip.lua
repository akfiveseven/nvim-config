return {
  "L3MON4D3/LuaSnip",
  dependencies = {
    ---
    -- your dependencies
    ---
  },
  config = function()
    local ls = require("luasnip")
    local s = ls.snippet
    local t = ls.text_node
    local i = ls.insert_node
    local extras = require("luasnip.extras")
    local rep = extras.rep
    local fmt = require("luasnip.extras.fmt").fmt

    vim.keymap.set({ "i", "s" }, "<A-n>", function()
      if ls.expand_or_jumpable() then
        ls.expand_or_jump()
      end
    end, { silent = true })

    vim.keymap.set({ "i", "s" }, "<A-p>", function()
      if ls.jumpable(-1) then
        ls.jump(-1)
      end
    end, { silent = true })

    ls.add_snippets("javascriptreact", {

      s("MyReactComponent", fmt(
        [[
        const {} = ({}) => {{
          return (
            {}
          );
        }};

        export {{ {} }}
        ]], {
            i(1), i(2), i(0), rep(1)
        }
      )),

      s("MyHTMLTag", fmt(
        [[
        <{} className='{}'>{}</{}>
        ]], {
          i(1),
          i(2),
          i(0),
          rep(1)
        }
      ))
    })
  end,
}
