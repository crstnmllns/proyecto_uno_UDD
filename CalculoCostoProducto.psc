Proceso CalculoCostoProducto
    Definir precio_original, descuento_cupon, descuento_cantidad, iva, cantidad, peso_paquete, costo_envio, costo_final Como Real
    Definir destino Como Cadena
	
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
    
    precio_con_descuento <- precio_original * (1 - descuento_cupon)
    precio_con_iva <- precio_con_descuento * (1 + iva)
    
    Si cantidad > 1 Entonces
        descuento_cantidad <- 0.05
    Sino
        descuento_cantidad <- 0
    FinSi
    
    precio_con_descuento_cantidad <- precio_con_iva * (1 - descuento_cantidad)
    costo_envio <- 10 + (2 * peso_paquete)
    costo_final <- (precio_con_descuento_cantidad * cantidad) + costo_envio
	
    Escribir "Desglose de costos:"
    Escribir "Precio original: $", precio_original
    Escribir "Descuento del cupón: $", precio_original - precio_con_descuento
    Escribir "Precio después del descuento: $", precio_con_descuento
    Escribir "IVA aplicado: $", precio_con_iva - precio_con_descuento
    Escribir "Precio después del IVA: $", precio_con_iva
    Si cantidad > 1 Entonces
        Escribir "Descuento por cantidad: $", precio_con_iva - precio_con_descuento_cantidad
    FinSi
    Escribir "Precio después del descuento por cantidad: $", precio_con_descuento_cantidad
    Escribir "Costo de envío: $", costo_envio
    Escribir "Costo final del producto: $", costo_final
FinProceso
