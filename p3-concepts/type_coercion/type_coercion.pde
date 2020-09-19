// char viene usato per caratteri alfanumerici e simboli
char c;  
// float viene usato per i numeri decimali 
float f;  
// int viene usato per valori numerici interi
int i; 
// byte contiene valori da -128 a +127
byte b;

// assegno il carattere ‘A’ alla variabile c - tabella ASCII: https://ascii.cl/ 
c = 'A';
// assegno alla variabile f la variabile a convertita a float (65.0)
f = float(c); 
// assegno alla variabile i la variabile f 
// moltiplicata per 1.4 e convertita a int (156)
i = int(f * 2.4);
// assegno alla variabile b la variabile c divisa per 2
// e convertita a byte (78)
b = byte(i / 2);

println("char c = " + c);
println("float(c) = " + f);
println("int(f*2.4) = " + i);
println("byte(i/2) = " + b);

//assegno alla variabile c il valore di b convertito a char (‘N’)
c = char(b);
println("char(b) = " + c);
