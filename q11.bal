import ballerina.lang.system;

function listdiv (int n)(int){
    int i=1;
    int count=0;
    while(i<=n){
        if(n%i==0){
            //system:println(i);
            count=count+1;
        }
        i=i+1; //why cant you increment using i++?
    }
    return count;
    
}
function main (string[] args) {
    
    boolean answer=false;
    int i=1;
    while(!answer){
        if(listdiv(i*(i+1)/2)>500){
            system:println(i*(i+1)/2);
            answer=true;
        }
        i=i+1;


    }
   
}