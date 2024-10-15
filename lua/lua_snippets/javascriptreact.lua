local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local extras = require("luasnip.extras")
local rep = extras.rep
local fmt = require("luasnip.extras.fmt").fmt

vim.keymap.set({ "i", "s" }, "<c-n>", function()
  if ls.expand_or_jumpable() then
    ls.expand_or_jump()
  end
end, { silent = true })

vim.keymap.set({ "i", "s" }, "<c-p>", function()
  if ls.jumpable(-1) then
    ls.jump(-1)
  end
end, { silent = true })


-- example
-- ls.add_snippets("javascriptreact", {
--   s("arrow", {
--     t("const "),
--     i(1),
--     t(" = () => {")
--   }),
--   s("myif", {
--     t('if '),
--     i(1, "true"),
--     t(' then '),
--     i(2),
--     t(' end')
--   }),
--   s("beg", {
--     t("\\begin{"), i(1), t("}"),
--     t({ "", "\t" }), i(0),
--     t({ "", "\\end{" }), rep(1), t("}"),
--   }),
--   s("beg2", fmt(
--     [[
--     \begin{{{}}}
--         {}
--     \end{{{}}}
--     ]], {
--         i(1), i(0), rep(1)
--     })),
-- })

ls.add_snippets("javascriptreact", {
  s("component", {
    t("const "),
    i(1),
    t(" = ("),
    i(2),
    t(") => {"),
    t({ "", "\t" }),
    t("return ("),
    t({ "", "\t\t" }),
    t("<>"),
    t({ "", "\t\t\t" }),
    i(0),
    t({ "", "\t\t" }),
    t("</>"),
    t({ "", "\t" }),
    t(")"),
    t({ "", "};" }),
  }),
})

