Historial2 = (23500, 5960, 2300, 10200, 8900)

Total = 0

for i in Historial2:
    Total += i

print("Su gasto total fue:", Total)

def Gastos_mayores(Gastos):
    Numero_gastos = 0
    for i in Gastos:
        if i > 5000:
            Numero_gastos += 1
    return Numero_gastos

print("Los gastos superiores a 5000 fueron:", Gastos_mayores(Historial2))
