data = b'\x00'

print(data)
print(type(data))

i = 5
print(i)
print(type(i))

i = i.to_bytes(2,'big')

print(i)
print(type(i))