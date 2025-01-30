```hack
function foo(x: int): int {
  // Check for potential overflow before adding
  if (x > 2147483646) { //Max int value -1
    return -1; //Or throw an exception for better error handling
  }
  return x + 1;
}

function bar(x: int): int {
  // Check for potential overflow before multiplication
  $result = foo(x);
  if ($result > 1073741823) { //Check for overflow before multiplying by 2
    return -1; // Or throw an exception
  }
  return $result * 2;
}

function main(): void {
  echo bar(5);
  echo bar(2147483646);
}
```