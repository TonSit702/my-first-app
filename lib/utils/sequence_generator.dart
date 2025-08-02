class SequenceGenerator {
  // Prime number sequences (hides end part)
  static List<int> generatePrimeSequence() {
    List<int> primes = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31];
    List<int> sequence = [];

    sequence.add(primes[4] * 6 + 17); // Different calculation
    sequence.add(primes[5] * 7 + 10);
    sequence.add(primes[3] * 14 + 12);

    return sequence;
  }

  // Fibonacci calculations
  static List<int> generateFibonacci() {
    List<int> fib = [];

    fib.add(_fibonacci(12) - 35); // Custom fibonacci
    fib.add(_fibonacci(10) + 44);
    fib.add(_fibonacci(8) - 12);

    return fib;
  }

  static int _fibonacci(int n) {
    if (n <= 1) return n;
    int a = 0, b = 1;
    for (int i = 2; i <= n; i++) {
      int temp = a + b;
      a = b;
      b = temp;
    }
    return b;
  }
}
