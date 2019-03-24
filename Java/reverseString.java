public String reverseString(String str) {
    String res = "";
    for (int i = 0; i < str.length(); i++) {
       res = str.charAt(i) + res;            // Add each char to the *front*
    }
    return res;
}