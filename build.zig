const std = @import("std");

const newcity_cpp_sources = [_][]const u8{
    "src/amenity.cpp",
    "src/blueprint.cpp",
    "src/board.cpp",
    "src/box.cpp",
    "src/building/building.cpp",
    "src/building/buildingTexture.cpp",
    "src/building/buildingCallbacks.cpp",
    "src/building/deco.cpp",
    "src/building/design.cpp",
    "src/building/designOrganizer.cpp",
    "src/building/designPackage.cpp",
    "src/building/statue.cpp",
    "src/building/renderBuilding.cpp",
    "src/business.cpp",
    "src/city.cpp",
    "src/collisionTable.cpp",
    "src/color.cpp",
    "src/compass.cpp",
    "src/configuration.cpp",
    "src/economy.cpp",

    "src/console/conCallbacks.cpp",
    "src/console/conCmd.cpp",
    "src/console/conDisplay.cpp",
    "src/console/conInput.cpp",
    "src/console/conMod.cpp",

    "src/draw/buffer.cpp",
    "src/draw/camera.cpp",
    "src/draw/culler.cpp",
    "src/draw/drawCallbacks.cpp",
    "src/draw/entity.cpp",
    "src/draw/framebuffer.cpp",
    "src/draw/image.cpp",
    "src/draw/mesh.cpp",
    "src/draw/shader.cpp",
    "src/draw/texture.cpp",

    "src/error.cpp",

    "src/game/achievement.cpp",
    "src/game/constants.cpp",
    "src/game/feature.cpp",
    "src/game/game.cpp",
    "src/game/task.cpp",
    "src/game/update.cpp",
    "src/game/version.cpp",

    "src/graph.cpp",
    "src/graph/config.cpp",
    "src/graph/graphParent.cpp",
    "src/graph/stop.cpp",
    "src/graph/transit.cpp",
    "src/graph/transitRouter.cpp",

    "src/heatmap.cpp",
    "src/icons.cpp",

    "src/import/obj.cpp",
    "src/import/mesh-import.cpp",

    "src/input.cpp",
    "src/intersection.cpp",
    "src/item.cpp",
    "src/label.cpp",
    "src/land.cpp",
    "src/lane.cpp",
    "src/line.cpp",
    "src/log.cpp",
    "src/lot.cpp",
    "src/main.cpp",
    "src/money.cpp",
    "src/name.cpp",

    "src/newspaper/newspaper.cpp",
    "src/newspaper/newspaperCallbacks.cpp",
    "src/newspaper/article.cpp",

    "src/option.cpp",

    "src/parts/aboutPanel.cpp",
    "src/parts/amenityInfo.cpp",
    "src/parts/article.cpp",
    "src/parts/blank.cpp",
    "src/parts/block.cpp",
    "src/parts/blueprintPanel.cpp",
    "src/parts/blueprintsList.cpp",
    "src/parts/budgetPanel.cpp",
    "src/parts/changelogPanel.cpp",
    "src/parts/citipediaPanel.cpp",
    "src/parts/console.cpp",
    "src/parts/colorPicker.cpp",
    "src/parts/button.cpp",
    "src/parts/chart.cpp",
    "src/parts/designConfigPanel.cpp",
    "src/parts/economyPanel.cpp",
    "src/parts/error.cpp",
    "src/parts/hr.cpp",
    "src/parts/icon.cpp",
    "src/parts/image.cpp",
    "src/parts/label.cpp",
    "src/parts/leftPanel.cpp",
    "src/parts/loader.cpp",
    "src/parts/loadPreviewPanel.cpp",

    "src/parts/mainMenu.cpp",
    "src/parts/menuBar.cpp",
    "src/parts/messageBoard.cpp",
    "src/parts/newGamePanel.cpp",
    "src/parts/newspaperPanel.cpp",
    "src/parts/optInPopup.cpp",
    "src/parts/optionsPanel.cpp",
    "src/parts/root.cpp",
    "src/parts/panel.cpp",
    "src/parts/part.cpp",
    "src/parts/renderParts.cpp",
    "src/parts/scrollbox.cpp",
    "src/parts/selectionPanel.cpp",
    "src/parts/slider.cpp",
    "src/parts/span.cpp",
    "src/parts/statusBar.cpp",
    "src/parts/steamWorkshop.cpp",
    "src/parts/textBox.cpp",
    "src/parts/textureSelect.cpp",
    "src/parts/toolbar.cpp",
    "src/parts/tooltip.cpp",
    "src/parts/transitPanel.cpp",
    "src/parts/transitDesignerPanel.cpp",
    "src/parts/tutorialPanel.cpp",
    "src/parts/tutorialPopup.cpp",

    "src/person.cpp",
    "src/pillar.cpp",
    "src/plan.cpp",

    "src/platform/binaryfilebuilder.cpp",
    "src/platform/binaryfilereader.cpp",
    "src/platform/event.cpp",
    "src/platform/fcaseopen.cpp",
    "src/platform/file.cpp",
    "src/platform/lookup.cpp",
    "src/platform/lua.cpp",
    "src/platform/mod.cpp",

    "src/pool.cpp",

    "src/renderGraph.cpp",
    "src/renderLot.cpp",
    "src/renderPillar.cpp",
    "src/renderPlan.cpp",
    "src/renderSelection.cpp",
    "src/renderUtils.cpp",

    "src/renum.cpp",

    "src/route/broker.cpp",
    "src/route/heap.cpp",
    "src/route/location.cpp",
    "src/route/route.cpp",
    "src/route/router.cpp",
    "src/route/routeRequest.cpp",

    "src/simplex.cpp",
    "src/selection.cpp",
    "src/serialize.cpp",
    "src/sound.cpp",
    "src/spline.cpp",

    "src/steam/steamwrapper.cpp",
    "src/steam/steamws.cpp",
    "src/steam/steamws_core.cpp",

    "src/string.cpp",
    "src/string_proxy.cpp",
    "src/tanker.cpp",
    "src/terrain/tree.cpp",
    "src/thread.cpp",
    "src/time.cpp",
    "src/tutorial.cpp",

    "src/tools/blueprint.cpp",
    "src/tools/elevation.cpp",
    "src/tools/road.cpp",
    "src/tools/plansPanel.cpp",

    "src/util.cpp",

    "src/vehicle/interpolator.cpp",
    "src/vehicle/laneLoc.cpp",
    "src/vehicle/model.cpp",
    "src/vehicle/pedestrian.cpp",
    "src/vehicle/physics.cpp",
    "src/vehicle/renderPedestrian.cpp",
    "src/vehicle/renderVehicle.cpp",
    "src/vehicle/transitPhysics.cpp",
    "src/vehicle/travelGroup.cpp",
    "src/vehicle/update.cpp",
    "src/vehicle/vehicle.cpp",
    "src/vehicle/vehicleCallbacks.cpp",
    "src/vehicle/wanderer.cpp",

    "src/vorbis_proxy.cpp",
    "src/weather.cpp",
    "src/zone.cpp",
};
const newcity_c_sources = [_][]const u8{
    "src/lz4.c",
    "src/md4c/md4c.c",
};

const GLFWBackendAPI = enum {
    X11,
    Wayland,
    WIN32,
};

fn build_glfw(b: *std.Build, target: std.Build.ResolvedTarget, optimize: std.builtin.OptimizeMode) !*std.Build.Step.Compile {
    const glfw_path = "external/glfw-3.3/";
    const glfw_lib = b.addStaticLibrary(.{
        .name = "glfw3",
        .target = target,
        .optimize = optimize,
        .link_libc = true,
        .pic = true,
    });
    // Quick hack for mappings.h
    glfw_lib.defineCMacro("NULL", "0");
    // Declare internal header files
    var sources = std.ArrayList([]const u8).init(b.allocator);
    // Add common headers
    try sources.appendSlice(&.{
        glfw_path ++ "src/internal.h",
        glfw_path ++ "src/mappings.h",
        glfw_path ++ "include/GLFW/glfw3.h",
        glfw_path ++ "include/GLFW/glfw3native.h",
    });
    glfw_lib.addIncludePath(.{.cwd_relative = "external/glfw-3.3/include/"});
    // Add common sources
    try sources.appendSlice(&.{
        glfw_path ++ "src/context.c",
        glfw_path ++ "src/init.c",
        glfw_path ++ "src/input.c",
        glfw_path ++ "src/monitor.c",
        glfw_path ++ "src/vulkan.c",
        glfw_path ++ "src/window.c",
    });

    const backend: GLFWBackendAPI = switch (target.result.os.tag) {
        .linux => .X11,
        else => @panic("os not supported"),
    };

    if (backend == .X11) {
        // As a replacement to glfw_config.h
        glfw_lib.defineCMacro("_GLFW_X11", "1");
        try sources.appendSlice(&.{
            glfw_path ++ "src/x11_init.c",
            glfw_path ++ "src/x11_monitor.c",
            glfw_path ++ "src/x11_window.c",
            glfw_path ++ "src/xkb_unicode.c",
            glfw_path ++ "src/posix_time.c",
            glfw_path ++ "src/posix_thread.c",
            glfw_path ++ "src/glx_context.c",
            glfw_path ++ "src/egl_context.c",
            glfw_path ++ "src/osmesa_context.c",
            glfw_path ++ "src/linux_joystick.c",
        });

        glfw_lib.linkSystemLibrary("GL");
        glfw_lib.linkSystemLibrary("GLU");
        glfw_lib.linkSystemLibrary("X11");
        glfw_lib.linkSystemLibrary("Xrandr");

        // Math and time libraries
        glfw_lib.linkSystemLibrary("rt");
        glfw_lib.linkSystemLibrary("m");
    }

    glfw_lib.addCSourceFiles(.{
        .files = sources.items,
        .flags = &.{"-Wall"},
    });

    return glfw_lib;
}

fn build_glew(b: *std.Build, target: std.Build.ResolvedTarget, optimize: std.builtin.OptimizeMode) !*std.Build.Step.Compile {
    const glew_lib = b.addStaticLibrary(.{
        .name = "GLEW_1130",
        .target = target,
        .optimize = optimize,
        .pic = true,
        .link_libc = true,
    });
    glew_lib.addCSourceFile(.{
        .file = .{.cwd_relative = "external/glew-1.13.0/src/glew.c"},
    });
    return glew_lib;
}

pub fn build(b: *std.Build) !void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    // Declare extra compile options
    // b.option(bool, "Enable Steam", "Enables compiling the steam")


    // Declare main program
    const newcity_exe = b.addExecutable(.{
        .name = "newcity",
        .target = target,
        .optimize = optimize,
        .link_libc = true,
    });
    newcity_exe.root_module.sanitize_c = false;

    // Configure defines
    newcity_exe.defineCMacro("TW_STATIC", null);
    newcity_exe.defineCMacro("TW_NO_LIB_PRAGMA", null);
    newcity_exe.defineCMacro("TW_NO_DIRECT3D", null);
    newcity_exe.defineCMacro("GLEW_STATIC", null);
    newcity_exe.defineCMacro("_CRT_SECURE_NO_WARNINGS", null);
    newcity_exe.defineCMacro("SPDLOG_NO_EXCEPTIONS", "ON");
    newcity_exe.defineCMacro("BOOST_EXCEPTION_DISABLE", null);
    newcity_exe.defineCMacro("BOOST_NO_EXCEPTIONS", null);
    newcity_exe.defineCMacro("INCLUDE_STEAM", null);
    newcity_exe.defineCMacro("LP_DEBUG", null);
    newcity_exe.defineCMacro("INCLUDE_STEAM", "0");

    // Configure source files
    newcity_exe.addCSourceFiles(.{
        .files = &newcity_cpp_sources,
        .flags = &.{"-std=c++17"},
    });
    newcity_exe.addCSourceFiles(.{
        .files = &newcity_c_sources,
    });
    newcity_exe.addCSourceFiles(.{
       .files = try getCSourcesInPath(b, "external/lua-5.3.5/src/"),
    });
    // Configure header files
    newcity_exe.addIncludePath(.{.cwd_relative = "src/"});
    addLibraryIncludePaths(newcity_exe);

    // Declare GLFW
    const glfw_lib = try build_glfw(b, target, optimize);
    newcity_exe.root_module.linkLibrary(glfw_lib);

    // Declare GLEW
    const glew_lib = try build_glew(b, target, optimize);
    newcity_exe.root_module.linkLibrary(glew_lib);

    // Configure linking
    newcity_exe.addLibraryPath(.{.cwd_relative = "lib/"});
    newcity_exe.addLibraryPath(.{.cwd_relative = "external/steam/lib/linux64"});
    newcity_exe.linkLibCpp();

    newcity_exe.addObjectFile(.{.cwd_relative = "build/libfreetyped.a"});
    // GLFW link deps
    newcity_exe.linkSystemLibrary("OpenGL");
    newcity_exe.linkSystemLibrary("GLX");
    newcity_exe.linkSystemLibrary("GLU");
    newcity_exe.linkSystemLibrary("Xrandr");
    newcity_exe.linkSystemLibrary("Xext");
    newcity_exe.linkSystemLibrary("X11");
    newcity_exe.linkSystemLibrary("rt");
    // Freetype deps
    newcity_exe.linkSystemLibrary("z");
    newcity_exe.linkSystemLibrary("bz2");
    newcity_exe.linkSystemLibrary("png");
    // Other deps
    newcity_exe.addObjectFile(.{.cwd_relative = "external/steam/lib/linux64/libsteam_api.so"});
    newcity_exe.linkSystemLibrary("openal");

    // Declare executable artifact
    const installed_exe = b.addInstallArtifact(newcity_exe, .{});
    b.getInstallStep().dependOn(&installed_exe.step);
}

fn addLibraryIncludePaths(newcity_exe: *std.Build.Step.Compile) void {
    newcity_exe.addSystemIncludePath(.{.cwd_relative = "external/boost/boost_1_74_0/"});
    newcity_exe.addSystemIncludePath(.{.cwd_relative = "external/curl/include"});
    newcity_exe.addSystemIncludePath(.{.cwd_relative = "external/glfw-3.3/include/GLFW/"});
    newcity_exe.addSystemIncludePath(.{.cwd_relative = "external/glm-0.9.7.1/"});
    newcity_exe.addSystemIncludePath(.{.cwd_relative = "external/openal-soft/include/"});
    // spdlog's fmt
    newcity_exe.addSystemIncludePath(.{.cwd_relative = "external/spdlog-1.5.0/include/spdlog/fmt/"});
    newcity_exe.addSystemIncludePath(.{.cwd_relative = "external/spdlog-1.5.0/include/spdlog/"});
    // Add the same but non systemlevel
    newcity_exe.addIncludePath(.{.cwd_relative = "external/spdlog-1.5.0/include"});
    newcity_exe.addSystemIncludePath(.{.cwd_relative = "external/gcc/libbacktrace/"});
    newcity_exe.addSystemIncludePath(.{.cwd_relative = "external/lua-5.3.5/src/"});
    newcity_exe.addSystemIncludePath(.{.cwd_relative = "external/freetype/include/"});
    newcity_exe.addSystemIncludePath(.{.cwd_relative = "external/steam/include/"});
    newcity_exe.addSystemIncludePath(.{.cwd_relative = "external/StackWalker/include/"});
}

/// - path: Must end with a trailing slash
fn getCSourcesInPath(b: *std.Build, path: []const u8) ![][]const u8 {
    if (!std.mem.endsWith(u8, path, "/")) @panic("Path must end with a trailing slash!");
    var files = std.ArrayList([]const u8).init(b.allocator);
    const code_dir = try std.fs.cwd().openDir(path, .{
        .iterate = true,
    });
    var iter = code_dir.iterate();
    while (try iter.next()) |e| {
        if (e.kind == .file and std.mem.endsWith(u8, e.name, ".c")) {
            try files.append(try std.mem.concat(b.allocator, u8, &.{path, e.name}));
        }
    }
    return files.toOwnedSlice();
}