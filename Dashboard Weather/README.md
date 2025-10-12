# Node-RED Project: Muestra de Imagenes dependiendo de Datos

Este fue un proyecto personal que quise lograr en base a un proyecto de muestreo de datos del clima en la universidad, se me hizo interesante mostrar un dashboard más dinamico y ver que tanto podia llegar las funciones y uso de herramientas en Node-RED.

---
## Descripción general

Este flujo de Node-RED realiza las siguientes funciones:
- 📡 **Entrada:** los datos fueron dados desde un nodo random que crea datos aleatorios con el limite de datos que yo le configure, esto para hacer pruebas sin tener que acceder a la API de los datos originales.
   
- ⚙️ **Procesamiento:** El flujo fue bastante sencillo primero cree un boton que ayudara a hacer las veces de activador, esto lograba que los nodos randoms dieran los datos que le habia configurado parceados a 2 decimales para que fuera lo más cercano posible a los datos reales utilizados, estos se van a unos gaujes del dashboard para mostrar dichos numeros, lo siguiente es que se unian los tres datos entregados en un array que iba directamente a un nodo funtion que lo que hace es tomar los numeros y hacer unos if/else para saber en que rango se encontraba, dependiendo de esos rangos entrega un mensaje que es mandado al nodo switch donde al recibir uno de estos mensajes va directamente al template nodo y escoge la imagen relacionada a ese mensaje mientras que el nodo de texto muestra el mensaje por ejemplo si esta en un rango con temperatura alta, humedad baja y UV mediano, lo tomara como que esta soleado y mostrara un sol.

<p align="center">
  <img src="images/nodos for update data of weather.png" width="600" alt="NodosWeather">
</p>




