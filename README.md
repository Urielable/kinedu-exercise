# README

## Kinedu API services

### Lista de Bebes

```javascript
route: '/api/v1/babies'

METHOD: GET

```

```json
[
    {
        "name": "Merritt",
        "months": 49,
        "mother_name": "Winifred Pollard",
        "father_name": "Ferdinand Gibbs",
        "address": "4480 Egestas. Av.",
        "phone": "1-446-909-2123"
    },
    {
        "name": "Cherokee",
        "months": 43,
        "mother_name": "Dahlia Castro",
        "father_name": "Zeus Huff",
        "address": "311-7263 Cras St.",
        "phone": "1-704-365-7793"
    }
]
```

### Lista de Actividades

```javascript
route: '/api/v1/activities'

METHOD: GET

```

```json
[
    {
        "id": 1,
        "name": "Actividad de grupo",
        "description": "A aliquet scelerisque per adipiscing proin id a condimentum scelerisque parturient a lobortis a eget condimentum venenatis parturient adipiscing velit dictumst."
    },
    {
        "id": 2,
        "name": "Tomar alimentos",
        "description": "Dis inceptos euismod pharetra nibh pulvinar ad non platea tristique imperdiet parturient vestibulum a nascetur lorem sem.Adipiscing id proin velit."
    }
]
```

### Lista de Actividades

```javascript
route: '/api/v1/assistants'

METHOD: GET

```

```json
[
    {
        "id": 1,
        "name": "Idona Rodgers"
    },
    {
        "id": 2,
        "name": "Basia Reeves"
    }
]
```

### Lista de Acitivity Logs

```javascript
route: '/api/v1/babies/{{baby_id}}/activity_logs'

METHOD: GET

```

```json
[
    {
        "id": 2,
        "start_time": "2017-04-03T08:52:59.000Z",
        "stop_time": "2017-04-03T09:37:59.000Z",
        "baby": {
            "id": 43,
            "name": "Halla"
        },
        "assistant": {
            "id": 9,
            "name": "Ria Robles"
        }
    },
    {
        "id": 65,
        "start_time": "2017-04-03T03:13:35.000Z",
        "stop_time": "2017-04-03T03:40:35.000Z",
        "baby": {
            "id": 43,
            "name": "Halla"
        },
        "assistant": {
            "id": 8,
            "name": "Francesca Baxter"
        }
    }
]
```

### Creacion de Activity Log

```javascript
route: '/api/v1/babies/{{baby_id}}/activity_logs'

METHOD: POST

```

```json
{
  "activity_log": {
    "assistant_id": 5,
    "activity_id": 3,
    "start_time":"2018-03-17 11:30"
  }
}
```

### Actualizacion de Activity Log

```javascript
route: '/api/v1/babies/{{baby_id}}/activity_logs/{{activity_log}}'

METHOD: PUT

```

```json
{
  "activity_log": {
    "stop_time":"2018-03-17 10:30"
  }
}
```

### Eliminacion de Activity Log

```javascript
route: '/api/v1/babies/{{baby_id}}/activity_logs/{{activity_log}}'

METHOD: DELETE

```

## Rutas Administrador y Login

### Dashboard

```javascript
route: '/admin/activitylogs'

METHOD: PUT

```
### Login

```javascript
route: '/users/sign_in'

METHOD: PUT

```

#### Instrucciones para desarrollo local con Docker

```sh
$ docker-compose build
$ docker-compose up
```
### Extras

* Pagiaciòn de administrador
* Se agrego pequeno Sistema de autenticaciòn
* Configuracion para localizaciòn
* Validaciòn en el model de ActivityLog
* Plantilla en la pagina de Bienvenida

