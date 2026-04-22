const std = @import("std");
const print = std.debug.print;

pub fn main(init: std.process.Init) !void {
    const io = init.io;

    var buf: [20]u8 = undefined;

    var stdin_reader = std.Io.File.stdin().reader(io, &buf);

    const stdin = &stdin_reader.interface;

    print("Try entering text here: ", .{});
    const line = try stdin.takeDelimiterExclusive('\n');
    print("You entered: {s}\n", .{line});
}
