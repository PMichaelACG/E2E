// Choose(n, k): selections of k distinct items from n, ignoring order.
// Classroom example: six-number lottery tickets from 10 numbers.
// All intermediate values for this example fit in a signed 32-bit integer.

let n = 10;
let k = 6;
let r = k;
let combinations = 1;
let i = 0;

// Choose(n, k) = Choose(n, n-k): use the shorter calculation.
if (r > n - r) {
    r = n - r;
}

print("QUECTOC COMBINATIONS CALCULATOR");
print("Available numbers:");
print(n);
print("Numbers on each ticket:");
print(k);
print("Combinations after each step:");

// C(n, i) = C(n, i-1) * (n-i+1) / i.
// Multiply before dividing. Every division here is exact.
for (i = 1; i <= r; i = i + 1) {
    combinations = combinations * (n - i + 1) / i;
    print(combinations);
}

print("Different tickets:");
print(combinations);
print("Cost of buying every ticket at 2 euros each:");
print(combinations * 2);
