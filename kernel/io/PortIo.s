global outb

outb:
  push ebp
  mov ebp, esp
  pusha

  %define PORT ebp + 8
  %define VALUE ebp + 12
  mov dx, [PORT]
  mov al, [VALUE]
  out dx, al


  popa
  pop ebp
  ret