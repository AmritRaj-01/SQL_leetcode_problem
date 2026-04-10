class MinStack {
    Stack<Integer> st=new Stack<>();
     Stack<Integer> min=new Stack<>();  // extra space 
    public MinStack() {
        
    }
    
    public void push(int val) {
        if(st.size()==0){
            st.push(val);
            min.push(val);
        }else{
            st.push(val);
            if(min.peek()<val) min.push(min.peek());
            else min.push(val);
        }
    }
    
    public void pop() {
        st.pop();
        min.pop();
    }
    
    public int top() {
        return st.peek();
    }

    public int getMin() {
        return min.peek();
    }

}



// class MinStack {

//     public MinStack() {
        
//     }
    
//     public void push(int val) {
        
//     }
    
//     public void pop() {
        
//     }
    
//     public int top() {
        
//     }
    
//     public int getMin() {
        
//     }
// }

/**
 * Your MinStack object will be instantiated and called as such:
 * MinStack obj = new MinStack();
 * obj.push(val);
 * obj.pop();
 * int param_3 = obj.top();
 * int param_4 = obj.getMin();
 */




