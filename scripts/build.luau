local build = require("./lib/build")

build {
    sourcemap_project = "default.project.json",
    build_project = "default.project.json",
    out = "library.rbxm",
}
