// (const|var) identifier[: type] = value

const constant: i32 = 5; //signed 32-bit/8-byte constant
var variable: u32 = 5000; //unsigned 32-bit/8-byte variable

//@as performs an explicit type coercion
const inferred_constant = @as(i32, 5);
var inferred_variable = @as(u32, 5000);

//constants and variables MUST have a value
//if there is no known value, undefined can be used

const a: i32 = undefined;
var b: u32 = undefined;
