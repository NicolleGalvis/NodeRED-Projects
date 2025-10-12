# Node-RED Project: Uso de MySQL, InfluxDB y Node-RED para datos de robots

Fue el ultimo parcial hecho, se nos encargo hacer una base de datos propia con las metricas enviadas por el profesor y con esta base de datos hacer un menu hamburguesa donde se ingresen robots nuevos o se pueda actualizar datos y otra donde se le hace un seguimiento a los datos que entreguen los robots, en este caso al no tener los robots disponibles se usaron datos randoms configurados.

---
## Descripción general

Este flujo de Node-RED realiza las siguientes funciones:
- 📡 **Entrada:** los datos usados son de [`robotmovil.sql`](./robotmovil.sql) ademas de los generados o inyectados por el usuario. 
- ⚙️ **Procesamiento por Actividad:** El flujo se compone de **dos actividades principales**: una enfocada en **ingresar nuevos datos** y otra en **mostrar el seguimiento del robot escogido y sus métricas**.  
Además, se utilizó un nuevo nodo, **InfluxDB**, para enviar los datos a la nube y poder generar **gráficas más complejas**.
  
---
  ### 🟢 Actividad 1 – ingresar nuevos robots y actualizar datos de robots anteriores
  Se utilizan **text input** para ingresar la **referencia** y **nombre** del robot que se desee registrar.  
  Un botón activa la consulta a la base de datos, y en el **nodo function** se realiza un conteo de registros, ya que se estableció un límite de **cuatro robots** que podían ser ingresados manualmente.  
  El resultado se muestra en un **nodo text**, indicando cuántos robots se han añadido.
  
  Adicionalmente, un nodo conectado a **InfluxDB** envía los datos de los robots creados a una base de datos previamente configurada en la nube.
  
  También se creó un apartado para la **actualización de datos**.  
Si se desea cambiar un nombre o una referencia, puede hacerse directamente desde el **dashboard**:  
- Se selecciona el robot en un **dropdown** (que muestra nombre y referencia).  
- Se editan los datos mediante **text input**.  
- Al presionar el botón de actualizar, los nuevos datos se envían desde un **nodo function** hacia la base de datos **MySQL**, reemplazando los valores anteriores.

<p align="center">
  <img src="images/Nodos RM get in and update Data.png" width="600" alt="nodosRobots">
</p>
    
  ### 🟣 Actividad 2 – seguimiento de datos de un robot
  En esta segunda parte se selecciona un robot para **ingresarle datos simulados**, Se emplean **sliders** como activadores para generar datos aleatorios.  
  Al presionar el botón **“Actualizar Robots”**, estos valores se envían automáticamente al robot escogido e **inyectan los datos en la base de datos MySQL** y en **InfluxDB** simultáneamente.
    
<p align="center">
  <img src="images/nodos for data samplingRM.png" width="600" alt="nodosRobots">
</p>
    
---

- 🧩 **Nodos adicionales utilizados:** Algunos nodos no son predeterminados en Node-RED, pero pueden descargarse desde el Manage Palette:
  - node-red-node-mysql
  - node-red-contrib-stackhero-influxdb-v2
  
---

## Vista del Dashboard
En la primera vista se puede observar el **menú hamburguesa** y los **dos dashboards creados**: uno para ingresar y otro para actualizar datos.

<p align="center">
  <img src="images/dashboard Robots and InfluxDB.png" width="600" alt="Dashboard Preview">
</p>

En la segunda vista se aprecian los **sliders** utilizados en el proceso y el **dropdown** que muestra los robots ingresados, permitiendo seleccionar a cuál se desean asignar datos.

<p align="center">
  <img src="images/dashboard Robots and InfluxDB part 2.png" width="600" alt="Dashboard Preview">
</p>

---

## Aprendizaje 
- me ayudo a mejorar un poco mi organización y buscar hacerlo en menos nodos, esta version que muestro es la segunda versión ya que la primera fue hecha en su momento de manera desorganizada y sin tanta experiencia, esta tiene en cuenta muchos aspectos que en la primera versión no tenia en cuenta.
- Entendi como funcionaban mejor los mensajes para enviar a la base de datos MySQL ademas de ajustarlos para InfluxDB
- con mas experiencia tambien se nota el cambio en los dashboards y la organización de botones y dropdown, no como la primera vez con la actividad [`conection MySQL with Node-red`](./conection%20MySQL%20with%20Node-red/)

---

## 📎 Créditos
Creado por **[Nicolle Galvis](https://github.com/NicolleGalvis)** 🪄  

📧 Contacto: [nicollegalvis03@gmail.com](mailto:nicollegalvis03@gmail.com) 

🔗 LinkedIn: [Nicolle Galvis](https://www.linkedin.com/in/nicolle-galvis-640422270?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app) 
