# README

Este repositorio fue creado para poder cumplir con el requisito de la Prueba Tecnica.
### Requisitos
* Ruby version **3.1.2**
* Rails version **7.0.3**
* PostgreSQL **12.11**

### Comandos esenciales
Comandos para descargar el repositorio
1. Clonar repositorio
```
git clone https://github.com/mexzziv/cf-tecnico.git
```
2. Install dependencias (bundle)
```
bundle install
```
3. Inicializar Base de Datos
```
rails db:reset
```
4. Inicializar servidor local
```
rails s 
```

### Funcionalidad
Una vez realizado los pasos anteriores en el navegador poner la siguiente direccion [http://127.0.0.1:3000](http://127.0.0.1:3000) donde se vera una vista como la siguiente:

![Imgur](https://i.imgur.com/hVGsvBG.png)

Solo ingrese el usuario a buscar en el input de la siguiente manera y dar click en **Buscar Posts**:
![Imgur](https://i.imgur.com/1TgdVrn.png)

Esto nos dirigira a la vista donde se mostraran los posts del usuario
![Imgur](https://i.imgur.com/UPo0WAH.png)

#### Live Demo
[https://test-cf-mexzziv.herokuapp.com/](https://test-cf-mexzziv.herokuapp.com/)