int compress(List<String> chars) {
  int index = 0; // Pointer for writing the compressed characters in place
  int i = 0; // Pointer for iterating through chars

  while (i < chars.length) {
    String currentChar = chars[i];
    int count = 0;

    // Count the number of consecutive repeating characters
    while (i < chars.length && chars[i] == currentChar) {
      i++;
      count++;
    }

    // Write the character
    chars[index++] = currentChar;

    // If the count is more than 1, convert it to string and write each digit
    if (count > 1) {
      for (var c in count.toString().split('')) {
        chars[index++] = c;
      }
    }
  }

  // Trim the list to the new length
  chars.length = index;
  return index;
}
