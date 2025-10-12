# Node-RED Project: Uso de MySQL, InfluxDB y Node-RED para datos de robots

Fue el ultimo parcial hecho, se nos encargo hacer una base de datos propia con las metricas enviadas por el profesor y con esta base de datos hacer un menu hamburguesa donde se ingresen robots nuevos o se pueda actualizar datos y otra donde se le hace un seguimiento a los datos que entreguen los robots, en este caso al no tener los robots disponibles se usaron datos randoms configurados.

---
## Descripción general

Este flujo de Node-RED realiza las siguientes funciones:
- 📡 **Entrada:** los datos fueron dados desde un nodo random que crea datos aleatorios con el limite de datos que yo le configure, esto para hacer pruebas sin tener que acceder a la API de los datos originales.
   
- ⚙️ **Procesamiento:** El flujo fue bastante sencillo. Primero, creé un botón que ayudara a hacer las veces de activador; esto lograba que los nodos *random* generaran los datos que le había configurado, parseados a 2 decimales para que fueran lo más cercanos posible a los datos reales utilizados. Estos se envían a unos *gauges* del dashboard para mostrar dichos números.  
  Lo siguiente es que se unían los tres datos entregados en un *array* que iba directamente a un nodo *function*, el cual toma los números y ejecuta unas condiciones *if/else* para saber en qué rango se encontraba cada uno. Dependiendo de esos rangos, entrega un mensaje que es enviado al nodo *switch*, donde, al recibir uno de estos mensajes, va directamente al nodo *template* y escoge la imagen relacionada a ese mensaje, mientras que el nodo de texto muestra el mensaje.  
  Por ejemplo, si está en un rango con temperatura alta, humedad baja y UV mediano, lo tomará como que está soleado y mostrará un sol.

<p align="center">
  <img src="images/nodos for update data of weather.png" width="600" alt="NodosWeather">
</p>

- 🧩 **Nodos importantes utilizados:** Algunos nodos no son predeterminados en Node-RED, pero pueden descargarse desde el Manage Palette:
  - node-red-node-random
    
---

## Vista del Dashboard
<p align="center">
  <img src="images/Dashboard weather.png" width="600" alt="NodosWeather">
</p>

---

## Aprendizaje 
- La verdad entendi mucho sobre el uso de nodos de otro tipo gracias a este proyecto
- uso del nodo template para uso de html en cosas más o menos complicadas para lo simple que es el nodo del dashboard
- mejores usos en los datos y como manejarlos para las funciones.

---

## 📎 Créditos
Creado por **[Nicolle Galvis](https://github.com/NicolleGalvis)** 🪄  

📧 Contacto: [nicollegalvis03@gmail.com](mailto:nicollegalvis03@gmail.com) 

🔗 LinkedIn: [Nicolle Galvis](https://www.linkedin.com/in/nicolle-galvis-640422270?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app) 
