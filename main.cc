#include <iostream>

int f(size_t x) {
  if (x > 10)
    return 2 * x;

  return x;
}

int main() {
  std::cout << f(10) << '\n';
}
