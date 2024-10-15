local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets("c", {
    s("myfor", {
        t("for (int "), i(1, "i"), t(" = 0; "), i(2, "i"), t(" < "), i(3, "n"), t("; "), i(4, "i"), t("++) {\n\t"),
        i(0),
        t("\n}"),
    }),
})

