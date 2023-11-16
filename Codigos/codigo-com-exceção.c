void main()
{
  int a = 0xFFF;
  a <<= 12;
  a += 0xFFF;
  a <<= 7;
  a += a;
  a += a;
  a += a;
  a += a;
}

void EX_OVERFLOW(){
  MTC0(0); 
  RFE();
}
