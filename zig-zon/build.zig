const std = @import("std");

// This is where the version would typically be set in Zig
pub fn build(b: *std.build.Builder) void {
    // Standard target options
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const exe = b.addExecutable(.{
        .name = "zig-project-zon",
        .root_source_file = .{ .path = "src/main.zig" },
        .target = target,
        .optimize = optimize,
    });
    b.installArtifact(exe);

    // Version information
    // NOTE: Version is specified as 1.0.0
}
