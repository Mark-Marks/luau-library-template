local Process = require("../util/Process")

local function build(options: {
    sourcemap_project: string,
    build_project: string,
    out: string,
    cwd: string?,
})
    Process.new("pesde"):argument("install"):option("stdio", "inherit"):run()

    Process.new("rojo")
        :argument("sourcemap")
        :argument(options.sourcemap_project)
        :argument("-o")
        :argument("sourcemap.json")
        :option("stdio", "inherit")
        :option("cwd", options.cwd)
        :run()

    Process.new("rojo")
        :argument("build")
        :argument(options.build_project)
        :argument("-o")
        :argument(options.out)
        :option("stdio", "inherit")
        :option("cwd", options.cwd)
        :run()
end

return build
