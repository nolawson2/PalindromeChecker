public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++)
  {
   if (palindrome(lines[i])==true)
    {
     println(lines[i] + " IS a palindrome.");
    } else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  return lettersOnly(word).equalsIgnoreCase(reverse(lettersOnly(word))); 

}
public String reverse(String str)
{
  String sNew = new String();
  for ( int i = 0; i < str.length(); i++) {

    sNew = sNew + str.charAt(str.length()-1-i);
  }
  return sNew;
}
public String lettersOnly(String str)
{
  String sNew = new String();
  for ( int i = 0; i < str.length(); i++) {
    if (Character.isLetter(str.charAt(i))) {
      sNew = sNew + str.charAt(i);
    }
  }
  return sNew;
}
