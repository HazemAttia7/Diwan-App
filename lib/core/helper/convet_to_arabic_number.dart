String convertToArabicNumber(int number) {
  const arabic = ['٠', '١', '٢', '٣', '٤', '٥', '٦', '٧', '٨', '٩'];

  return number
      .toString()
      .split('')
      .map((char) => arabic[int.parse(char)])
      .join();
}
