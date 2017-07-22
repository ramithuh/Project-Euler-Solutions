import ballerina.lang.system;
import ballerina.lang.math;

function isprime (int n)(boolean){
    if(n==0 || n==1){
        return false;
    }
    int i=2;
   
    while(i< <int> math:sqrt(<float>n)+1){
        if(n%i==0){
            return false;
        }
        i=i+1; //why cant you increment using i++?
    }
    return true;
    
}
function main (string[] args) {
   
    int count=0;
    int i=0;

    while(count<10001){
        if(isprime(i)){
            count=count+1;  
        }
        i=i+1;
    }
    
    system:println(i-1); //answer
}