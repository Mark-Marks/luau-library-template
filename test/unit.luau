-- stylua: ignore start
local lib = require("../lib")

local testkit = require("./testkit")

local it = testkit.test()
local TEST, CASE = it.TEST, it.CASE
local CHECK, FINISH = it.CHECK, it.FINISH
local SKIP, FOCUS = it.SKIP, it.FOCUS
local CHECK_EXPECT_ERR = it.CHECK_EXPECT_ERR

TEST("Library", function()
    do CASE "Returns hello world message"
        CHECK(lib.msg == "Hello, World!")
    end
end)

FINISH()
-- stylua: ignore end
