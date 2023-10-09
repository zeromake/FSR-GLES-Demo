add_rules("mode.debug", "mode.release")


add_repositories("zeromake https://github.com/zeromake/xrepo.git")


if is_plat("windows") then
    add_cxflags("/utf-8")
    add_cxflags("/UNICODE")
    add_defines("UNICODE", "_UNICODE")
end

add_requires("imgui 1.89.9", {configs={backend="opengl3;glfw",freetype=true}})
add_requires("glfw", "glad")


set_rundir("$(projectdir)")

target("gles_fsr")
    add_files("src/main.cpp")
    add_files("src/image_utils.cpp")
    add_packages("glfw", "imgui", "glad")
    add_defines('GLSL_VERION="330 core"')
