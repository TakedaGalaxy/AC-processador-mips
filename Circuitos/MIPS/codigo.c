void func(int a)
{
  if (a < 2)
    return;
  if (a >= 5)
    return;

  int b = a;

  for (int i = 0; i < 2; i++)
    a ^= i;

  for (int i = 0; i < 2; i++)
    for (int j = 0; j < b; j++)
    {
      a = a + b;
    }

  a <<= 2;
  return;
}

void main()
{
  int b = 9;
  func(2);
}