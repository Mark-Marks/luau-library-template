local Process = require("../util/Process")
local std = require("@std")

local function check(options: { source: string })
    print(
        `{std.ansi.green}{std.ansi.bold}Errors aren't automatically propagated via this script.{std.ansi.reset}\n`
    )

    Process.new("stylua")
        :argument("--respect-ignores")
        :argument("--check")
        :argument(options.source)
        :option("stdio", "inherit")
        :run()

    Process.new("selene")
        :argument(options.source)
        :option("stdio", "inherit")
        :run()

    Process.new("luau")
        :argument("test/unit.luau")
        :option("stdio", "inherit")
        :run()
end

return check
