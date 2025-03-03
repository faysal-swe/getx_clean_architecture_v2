extension StringExtensions on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1)}";
  }
}


// ✅ Use an Extension when:
// You want to extend an existing class (String, int, List etc.).
// It makes sense to call the function directly on the object (text.capitalize(), num.isEvenNumber()).

// 🚀 Final Thoughts
// ✅ You extend String, but don’t modify it.
// ✅ The new methods work like built-in methods.
// ✅ Makes your code cleaner and easier to read.