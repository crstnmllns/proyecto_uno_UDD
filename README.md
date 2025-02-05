
# Proyecto 1:

## Definición de variables:

```pseudocodigo
Definir precio_original, descuento_cupon, descuento_cantidad, iva, cantidad, peso_paquete, costo_envio, costo_final Como Real
Definir destino Como Cadena
```

Se declaran las variables a utilizar:

- **precio_original**: el precio base del producto.
- **descuento_cupon**: el porcentaje de descuento por cupón que se aplicará al producto.
- **descuento_cantidad**: el descuento por comprar más de una unidad.
- **iva**: el porcentaje de IVA que se aplicará.
- **cantidad**: cuántos productos se están comprando.
- **peso_paquete**: el peso total del paquete en kilogramos.
- **costo_envio**: el costo de envío calculado en función del peso.
- **costo_final**: el costo final a pagar por el cliente.
- **destino**: la ubicación del envío.

## Entrada de datos por parte del usuario:

```pseudocodigo
Escribir "Ingrese el precio original del producto: "
Leer precio_original

Escribir "Ingrese el porcentaje de descuento del cupón (en decimal, por ejemplo, 0.10 para 10%): "
Leer descuento_cupon

Escribir "Ingrese el IVA aplicable (en decimal, por ejemplo, 0.12 para 12%): "
Leer iva

Escribir "Ingrese la cantidad de productos comprados: "
Leer cantidad

Escribir "Ingrese el peso total del paquete en kg: "
Leer peso_paquete

Escribir "Ingrese el destino de envío: "
Leer destino
```

El algoritmo pide al usuario que ingrese todos los datos relevantes para realizar el cálculo:

- **precio_original**: el precio sin ningún descuento.
- **descuento_cupon**: el porcentaje de descuento que debe ser ingresado en formato decimal (por ejemplo, 0.10 para un 10% de descuento).
- **iva**: el porcentaje de IVA también ingresado en formato decimal (por ejemplo, 0.12 para un 12% de IVA).
- **cantidad**: el número de productos que está comprando.
- **peso_paquete**: el peso total del paquete en kilogramos.
- **destino**: el destino de envío.

## Aplicar el descuento del cupón:

```pseudocodigo
precio_con_descuento <- precio_original * (1 - descuento_cupon)
```

Aquí se aplica el descuento del cupón. Si el cupón es del 10% (0.10), el precio con descuento será igual al precio original multiplicado por 1 - 0.10.

## Aplicar el IVA sobre el precio con descuento:

```pseudocodigo
precio_con_iva <- precio_con_descuento * (1 + iva)
```

El IVA se aplica sobre el precio con descuento. Si el IVA es del 12% (0.12), el precio con IVA será el precio con descuento multiplicado por 1 + 0.12.

## Aplicar el descuento por cantidad:

```pseudocodigo
Si cantidad > 1 Entonces
    descuento_cantidad <- 0.05
Sino
    descuento_cantidad <- 0
FinSi
```

Si el cliente está comprando más de un producto, se aplica un descuento adicional del 5% (0.05) por cantidad. Si solo está comprando uno, no se aplica ningún descuento adicional.

## Calcular el precio después del descuento por cantidad:

```pseudocodigo
precio_con_descuento_cantidad <- precio_con_iva * (1 - descuento_cantidad)
```

El precio con descuento por cantidad se calcula restando el descuento por cantidad del precio con IVA. Si el descuento por cantidad es del 5%, el precio con descuento será el 95% del precio con IVA.

## Calcular el costo de envío:

```pseudocodigo
costo_envio <- 10 + (2 * peso_paquete)
```

El costo de envío se calcula como una tarifa fija de $10 más $2 por cada kilogramo del paquete. Por ejemplo, si el paquete pesa 3 kg, el costo de envío será 10 + (2 * 3) = 16.

## Calcular el costo final del producto:

```pseudocodigo
costo_final <- (precio_con_descuento_cantidad * cantidad) + costo_envio
```

El costo final se calcula multiplicando el precio con descuento por cantidad por el número de productos y sumando el costo de envío.

## Mostrar el desglose de costos:

```pseudocodigo
Escribir "Desglose de costos:"
Escribir "Precio original: $" precio_original
Escribir "Descuento del cupón: $" precio_original - precio_con_descuento
Escribir "Precio después del descuento: $" precio_con_descuento
Escribir "IVA aplicado: $" precio_con_iva - precio_con_descuento
Escribir "Precio después del IVA: $" precio_con_iva
Si cantidad > 1 Entonces
    Escribir "Descuento por cantidad: $" precio_con_iva - precio_con_descuento_cantidad
FinSi
Escribir "Precio después del descuento por cantidad: $" precio_con_descuento_cantidad
Escribir "Costo de envío: $" costo_envio
Escribir "Costo final del producto: $" costo_final
```

## Se muestra el desglose detallado de los costos:

- **Precio original**.
- **Descuento del cupón**: cuánto se descontó del precio original.
- **Precio después del descuento**: el precio tras aplicar el cupón.
- **IVA aplicado**: cuánto es el IVA que se añadió al precio.
- **Precio después del IVA**.
- **Descuento por cantidad**: si se compró más de un producto, cuánto se descontó.
- **Precio después del descuento por cantidad**.
- **Costo de envío**.
- **Costo final**: el total que deberá pagar el cliente.

