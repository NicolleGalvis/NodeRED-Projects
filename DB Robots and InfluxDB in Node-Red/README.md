# Node-RED Project: Uso de MySQL, InfluxDB y Node-RED para datos de robots

Fue el ultimo parcial hecho, se nos encargo hacer una base de datos propia con las metricas enviadas por el profesor y con esta base de datos hacer un menu hamburguesa donde se ingresen robots nuevos o se pueda actualizar datos y otra donde se le hace un seguimiento a los datos que entreguen los robots, en este caso al no tener los robots disponibles se usaron datos randoms configurados.

---
## Descripción general

Este flujo de Node-RED realiza las siguientes funciones:
- 📡 **Entrada:** los datos usados son de [`robotmovil.sql`](./robotmovil.sql) ademas de los generados o inyectados por el usuario. 
- ⚙️ **Procesamiento por Actividad:** El flujo se compone de **2 actividades principales**, una enfocada en ingresar nuevos datos y otra de mostrar un seguimiento del robot escogido y sus datos tambien se uso un nuevo nod, el de influxDB para mandar los datos a la nube y poder mostrar graficas mas complicadas.
  
---
  ### 🟢 Actividad 1 – ingresar nuevos robots y actualizar datos de robots anteriores
  se usan text imput para ingresar la referencia y nombre del robot que se quiera poner, se agrega con un boton que activa la consulta a la base de datos, en el nodo funtion se hace una cuenta de registros ya que se nos dio un limite de solo ingresar 4 robots que nosotros ingresaramos, asi que muestra en un nodo text cuantos van ingresados, existe un nodo aparte que se conecta a InfluxDB para ingresar en una base de datos previamente hecha en InfluxDB los robots creados e ingresados, 
  
  tambien se creo un apartado de actualización de datos, si se quiere cambiar algun nombre o una referencia se puede hacer desde el dashboard, se usa el de actualizar información donde se escoge el robot que queramos cambiar en un dropdown que muestra el nombre y referencia del robot, se cambian usando un text imput y de ahi con el boton para actualizar dichos datos que manda a una función los nuevos datos a la base de datos mysql y los cambia 

<p align="center">
  <img src="images/Nodos Robots get in and update Data.png" width="600" alt="nodosRobots">
</p>
    
  ### 🟣 Actividad 2 – Traer datos de una fecha y ventas de cliente especifico
  - Se usan dos Text Input: uno para el ID de venta del cliente y otro para el mes.
  - El nodo Function está configurado para traer exclusivamente los datos del año 2018, por lo que solo filtra por mes.
  - Al presionar el botón, se ejecuta la búsqueda en la base de datos y se obtienen todos los registros asociados al ID y mes indicados.
  - Un nodo Change se utiliza para seleccionar los datos relevantes que serán mostrados en los nodos de texto del Dashboard.
    
<p align="center">
  <img src="images/actividad2.png" width="600" alt="Dashboard Preview">
</p>
    
---

- 🧩 **Nodos adicionales utilizados:** Algunos nodos no son predeterminados en Node-RED, pero pueden descargarse desde el Manage Palette:
  - node-red-node-mysql
  - node-red-contrib-moment2
  
---

## Vista del Dashboard

<p align="center">
  <img src="images/Dashboard Mysql and NodeRED.png" width="600" alt="Dashboard Preview">
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
