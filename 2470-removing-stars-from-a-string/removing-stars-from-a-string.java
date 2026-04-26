class Solution {
    public String removeStars(String s) {
        Stack<Character> st = new Stack<>();
        for (int i = 0; i < s.length(); i++) {
            char ch = s.charAt(i);
            if (ch == '*')
                st.pop();
            else
                st.push(ch);
        }

        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < st.size(); i++) {
            // char c = st.get(i);
            // sb.append(c);
            sb.append(st.get(i));
        }
        return sb.toString();
    }
}