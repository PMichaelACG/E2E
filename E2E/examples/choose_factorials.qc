// Literal factorial formula: C(n,k) = n! / (k! * (n-k)!).
// Use 0 <= k <= n <= 12 with QuectoC's signed 32-bit integers.
// 12! = 479001600 fits; 13! does not.

let n = 10;
let k = 6;
let remaining = n - k;
let factorialN = 1;
let factorialK = 1;
let factorialRemaining = 1;
let i = 0;

// First factorial: n!.
for (i = 2; i <= n; i = i + 1) {
    factorialN = factorialN * i;
}

// Second factorial: k!, using while this time.
i = 2;
while (i <= k) {
    factorialK = factorialK * i;
    i = i + 1;
}

// Third factorial: (n-k)!.
for (i = 2; i <= remaining; i = i + 1) {
    factorialRemaining = factorialRemaining * i;
}

let denominator = factorialK * factorialRemaining;
let combinations = factorialN / denominator;

print("CHOOSE USING THREE FACTORIALS");
print("n:");
print(n);
print("k:");
print(k);
print("n!:");
print(factorialN);
print("k!:");
print(factorialK);
print("(n-k)!:");
print(factorialRemaining);
print("Denominator k! * (n-k)!:");
print(denominator);
print("Choose(n,k):");
print(combinations);
