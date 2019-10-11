# Phone App
Api Productos y Ordenes - Laravel - AuthO2
# ansib_phone_app

## Docker oriented.
	
	###### Levantar Docker
		Dentro de: /docker, ejecutar: 
			docker-compose up -d

	###### Api en: 
		http://0.0.0.0:8000/api

	###### Web para crear usuarios autentificados:
		http://0.0.0.0:8000
		Usuario: carlos@gmail.com
		Contrasenha: password

	###### Scrip sql para levantar base de datos (Recomendado para pruebas):
		/database/phone_app.sql

		o realizar las migraciones de laravel (No crea usuarios)
			php artisan migrate --seed   , Crear base de datos y migrar datos de productos iniciales

## Exercise 1: Create an endpoint to retrieve the phone catalog, and pricing. (Para pruebas, las rutas no estan autentificadas)

	###### Request:
		Método: GET
		URL: http://0.0.0.0:8000/api/product
	
	###### Response: 
		[
		    {
		        "id": 1,
		        "name": "OPPO R17",
		        "description": "Lorem ipsum dolor sit amet consectetur adipisicing elit. Quasi praesentium quo, tempore sunt modi architecto natus deserunt veniam consequatur soluta molestias unde autem ad sapiente iure delectus asperiores exercitationem aliquid.",
		        "price": 150,
		        "image": "/uploads/oppo_r17.png",
		        "created_at": "2019-10-11 01:36:44",
		        "updated_at": "2019-10-11 01:36:44"
		    },
		    {
		        "id": 2,
		        "name": "NOKIA 7 PLUS",
		        "description": "Lorem ipsum dolor sit amet consectetur adipisicing elit. Quasi praesentium quo, tempore sunt modi architecto natus deserunt veniam consequatur soluta molestias unde autem ad sapiente iure delectus asperiores exercitationem aliquid.",
		        "price": 155,
		        "image": "/uploads/nokia_7_plus.png",
		        "created_at": "2019-10-11 01:36:44",
		        "updated_at": "2019-10-11 01:36:44"
		    },
		    {
		        "id": 3,
		        "name": "SAMSUMG GALAXI S10E",
		        "description": "Lorem ipsum dolor sit amet consectetur adipisicing elit. Quasi praesentium quo, tempore sunt modi architecto natus deserunt veniam consequatur soluta molestias unde autem ad sapiente iure delectus asperiores exercitationem aliquid.",
		        "price": 100,
		        "image": "/uploads/samsuns_galaxi_s10e.png",
		        "created_at": "2019-10-11 01:36:44",
		        "updated_at": "2019-10-11 01:36:44"
		    },
		    {
		        "id": 4,
		        "name": "HUAWEI P10",
		        "description": "Lorem ipsum dolor sit amet consectetur adipisicing elit. Quasi praesentium quo, tempore sunt modi architecto natus deserunt veniam consequatur soluta molestias unde autem ad sapiente iure delectus asperiores exercitationem aliquid.",
		        "price": 225,
		        "image": "/uploads/huawei_p10.png",
		        "created_at": "2019-10-11 01:36:44",
		        "updated_at": "2019-10-11 01:36:44"
		    },
		    {
		        "id": 5,
		        "name": "XIAOMI MI MIX 25",
		        "description": "Lorem ipsum dolor sit amet consectetur adipisicing elit. Quasi praesentium quo, tempore sunt modi architecto natus deserunt veniam consequatur soluta molestias unde autem ad sapiente iure delectus asperiores exercitationem aliquid.",
		        "price": 985,
		        "image": "/uploads/xiaomi_mi_mix_25.png",
		        "created_at": "2019-10-11 01:36:44",
		        "updated_at": "2019-10-11 01:36:44"
		    },
		    {
		        "id": 6,
		        "name": "APPLE IPHONE 11",
		        "description": "Lorem ipsum dolor sit amet consectetur adipisicing elit. Quasi praesentium quo, tempore sunt modi architecto natus deserunt veniam consequatur soluta molestias unde autem ad sapiente iure delectus asperiores exercitationem aliquid.",
		        "price": 1300,
		        "image": "/uploads/apple_iphone_11.png",
		        "created_at": "2019-10-11 01:36:44",
		        "updated_at": "2019-10-11 01:36:44"
		    },
		    {
		        "id": 7,
		        "name": "XIAOMI REDMI 8",
		        "description": "Lorem ipsum dolor sit amet consectetur adipisicing elit. Quasi praesentium quo, tempore sunt modi architecto natus deserunt veniam consequatur soluta molestias unde autem ad sapiente iure delectus asperiores exercitationem aliquid.",
		        "price": 1100,
		        "image": "/uploads/xiaomi_redmi_8.png",
		        "created_at": "2019-10-11 01:36:44",
		        "updated_at": "2019-10-11 01:36:44"
		    },
		    {
		        "id": 8,
		        "name": "MOTOROLA ONE MACRO",
		        "description": "Lorem ipsum dolor sit amet consectetur adipisicing elit. Quasi praesentium quo, tempore sunt modi architecto natus deserunt veniam consequatur soluta molestias unde autem ad sapiente iure delectus asperiores exercitationem aliquid.",
		        "price": 1115,
		        "image": "/uploads/motorola_ne_macro.png",
		        "created_at": "2019-10-11 01:36:44",
		        "updated_at": "2019-10-11 01:36:44"
		    },
		    {
		        "id": 9,
		        "name": "YEZZ MAX 1 PLUS",
		        "description": "Lorem ipsum dolor sit amet consectetur adipisicing elit. Quasi praesentium quo, tempore sunt modi architecto natus deserunt veniam consequatur soluta molestias unde autem ad sapiente iure delectus asperiores exercitationem aliquid.",
		        "price": 975,
		        "image": "/uploads/yezz_max_1_plus.png",
		        "created_at": "2019-10-11 01:36:44",
		        "updated_at": "2019-10-11 01:36:44"
		    },
		    {
		        "id": 10,
		        "name": "SAMSUMG GALAXI A70S",
		        "description": "Lorem ipsum dolor sit amet consectetur adipisicing elit. Quasi praesentium quo, tempore sunt modi architecto natus deserunt veniam consequatur soluta molestias unde autem ad sapiente iure delectus asperiores exercitationem aliquid.",
		        "price": 1200,
		        "image": "/uploads/samsung_galaxi_a70s.png",
		        "created_at": "2019-10-11 01:36:44",
		        "updated_at": "2019-10-11 01:36:44"
		    },
		    {
		        "id": 11,
		        "name": "ONEPLUS 7T",
		        "description": "Lorem ipsum dolor sit amet consectetur adipisicing elit. Quasi praesentium quo, tempore sunt modi architecto natus deserunt veniam consequatur soluta molestias unde autem ad sapiente iure delectus asperiores exercitationem aliquid.",
		        "price": 1200,
		        "image": "/uploads/oneplus_7t.png",
		        "created_at": "2019-10-11 01:36:44",
		        "updated_at": "2019-10-11 01:36:44"
		    },
		    {
		        "id": 12,
		        "name": "YESSLIV 1",
		        "description": "Lorem ipsum dolor sit amet consectetur adipisicing elit. Quasi praesentium quo, tempore sunt modi architecto natus deserunt veniam consequatur soluta molestias unde autem ad sapiente iure delectus asperiores exercitationem aliquid.",
		        "price": 1150,
		        "image": "/uploadsyessliv_1/.png",
		        "created_at": "2019-10-11 01:36:44",
		        "updated_at": "2019-10-11 01:36:44"
		    },
		    {
		        "id": 13,
		        "name": "XIAOMI REDMI 8A",
		        "description": "Lorem ipsum dolor sit amet consectetur adipisicing elit. Quasi praesentium quo, tempore sunt modi architecto natus deserunt veniam consequatur soluta molestias unde autem ad sapiente iure delectus asperiores exercitationem aliquid.",
		        "price": 1500,
		        "image": "/uploads/xiaomi_redmi_8a.png",
		        "created_at": "2019-10-11 01:36:44",
		        "updated_at": "2019-10-11 01:36:44"
		    },
		    {
		        "id": 14,
		        "name": "SAMSUNG GALAXI A20S",
		        "description": "Lorem ipsum dolor sit amet consectetur adipisicing elit. Quasi praesentium quo, tempore sunt modi architecto natus deserunt veniam consequatur soluta molestias unde autem ad sapiente iure delectus asperiores exercitationem aliquid.",
		        "price": 4500,
		        "image": "/uploads/samsung_galaxi_a20s.png",
		        "created_at": "2019-10-11 01:36:44",
		        "updated_at": "2019-10-11 01:36:44"
		    },
		    {
		        "id": 15,
		        "name": "OPPO RENO",
		        "description": "Lorem ipsum dolor sit amet consectetur adipisicing elit. Quasi praesentium quo, tempore sunt modi architecto natus deserunt veniam consequatur soluta molestias unde autem ad sapiente iure delectus asperiores exercitationem aliquid.",
		        "price": 1350,
		        "image": "/uploads/oppo_reno.png",
		        "created_at": "2019-10-11 01:36:44",
		        "updated_at": "2019-10-11 01:36:44"
		    }
		]	

	###### Test response Api con curl:
		curl -i -H "Accept:application/json" \
		 	-H "Content-Type:application/json" \ 
		 	"http://0.0.0.0:8000/api/product"

## Exercise 2: Create endpoints to check and create an order.	(Para pruebas, las rutas no estan autentificadas)	

	###### Request:
		Método: POST
		URL: http://0.0.0.0:8000/api/order
		Data:
			{
			   "name":"Cheila",
			   "surname":"Bautista",
			   "email":"cheilabautista@hotmail.com",
			   "phones":[
			      {
			         "id":2,
			         "quantity":2
			      },
			      {
			         "id":3,
			         "quantity":2
			      },
			      {
			         "id":5,
			         "quantity":1
			      },
			      {
			         "id":6,
			         "quantity":1
			      },
			      {
			         "id":8,
			         "quantity":1
			      },
			      {
			         "id":9,
			         "quantity":1
			      },
			      {
			         "id":10,
			         "quantity":1
			      }
			   ]
			}		
	
	###### Response: 
		{
		    "number_order": 23,
		    "customer_name": "Cheila Bautista",
		    "email": "cheilabautista@hotmail.com",
		    "total_order": 6085,
		    "units": 9,
		    "date_order": "2019-10-11T02:32:30.000000Z",
		    "details": [
		        {
		            "product_id": 2,
		            "name": "NOKIA 7 PLUS",
		            "description": "Lorem ipsum dolor sit amet consectetur adipisicing elit. Quasi praesentium quo, tempore sunt modi architecto natus deserunt veniam consequatur soluta molestias unde autem ad sapiente iure delectus asperiores exercitationem aliquid.",
		            "price": 155,
		            "total_item": 310
		        },
		        {
		            "product_id": 3,
		            "name": "SAMSUMG GALAXI S10E",
		            "description": "Lorem ipsum dolor sit amet consectetur adipisicing elit. Quasi praesentium quo, tempore sunt modi architecto natus deserunt veniam consequatur soluta molestias unde autem ad sapiente iure delectus asperiores exercitationem aliquid.",
		            "price": 100,
		            "total_item": 200
		        },
		        {
		            "product_id": 5,
		            "name": "XIAOMI MI MIX 25",
		            "description": "Lorem ipsum dolor sit amet consectetur adipisicing elit. Quasi praesentium quo, tempore sunt modi architecto natus deserunt veniam consequatur soluta molestias unde autem ad sapiente iure delectus asperiores exercitationem aliquid.",
		            "price": 985,
		            "total_item": 985
		        },
		        {
		            "product_id": 6,
		            "name": "APPLE IPHONE 11",
		            "description": "Lorem ipsum dolor sit amet consectetur adipisicing elit. Quasi praesentium quo, tempore sunt modi architecto natus deserunt veniam consequatur soluta molestias unde autem ad sapiente iure delectus asperiores exercitationem aliquid.",
		            "price": 1300,
		            "total_item": 1300
		        },
		        {
		            "product_id": 8,
		            "name": "MOTOROLA ONE MACRO",
		            "description": "Lorem ipsum dolor sit amet consectetur adipisicing elit. Quasi praesentium quo, tempore sunt modi architecto natus deserunt veniam consequatur soluta molestias unde autem ad sapiente iure delectus asperiores exercitationem aliquid.",
		            "price": 1115,
		            "total_item": 1115
		        },
		        {
		            "product_id": 9,
		            "name": "YEZZ MAX 1 PLUS",
		            "description": "Lorem ipsum dolor sit amet consectetur adipisicing elit. Quasi praesentium quo, tempore sunt modi architecto natus deserunt veniam consequatur soluta molestias unde autem ad sapiente iure delectus asperiores exercitationem aliquid.",
		            "price": 975,
		            "total_item": 975
		        },
		        {
		            "product_id": 10,
		            "name": "SAMSUMG GALAXI A70S",
		            "description": "Lorem ipsum dolor sit amet consectetur adipisicing elit. Quasi praesentium quo, tempore sunt modi architecto natus deserunt veniam consequatur soluta molestias unde autem ad sapiente iure delectus asperiores exercitationem aliquid.",
		            "price": 1200,
		            "total_item": 1200
		        }
		    ]
		}

	###### Test response Api con curl:
		curl -i -H "Accept:application/json" \ 
			-H "Content-Type:application/json" \
			-X POST http://0.0.0.0:8000/api/order \
			-d '{"name":"Cheila","surname":"Bautista","email":"cheilabautista@hotmail.com","phones":[{"id":2,"quantity":2},{"id":3,"quantity":2},{"id":5,"quantity":1},{"id":6,"quantity":1},{"id":8,"quantity":1},{"id":9,"quantity":1},{"id":10,"quantity":1}]}'	


## Pruebas del Api con postman:
	Importar:
		/postman/Phone_app.postman_collection.json


## It should have test.

	Suite de test con PHPUnit
		vendor/bin/phpunit
			Ejecutara:
				ProductTest.php
				OrderTest.php


## Microservice approach

	###### Request:
		{
		    "grant_type" : "client_credentials",
		    "client_id" : "2",
		    "client_secret" : "LChhP5eNpc8rHDs21QRA2v0KiPG27TgfGajx8BrP"
		}

	###### Response:
		{
		    "token_type": "Bearer",
		    "expires_in": 1296000,
		    "access_token": "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6ImRkNGYxZmYzODRiYjliNDZiNGFkMGYzMTc3OTk3ZmZmZjI5NWRlNGRkMDhhNzlhYTY4OGI3MTU4ZGNiYWY5YWZjZWQzOWRmMjQ0ODcxZThjIn0.eyJhdWQiOiIyIiwianRpIjoiZGQ0ZjFmZjM4NGJiOWI0NmI0YWQwZjMxNzc5OTdmZmZmMjk1ZGU0ZGQwOGE3OWFhNjg4YjcxNThkY2JhZjlhZmNlZDM5ZGYyNDQ4NzFlOGMiLCJpYXQiOjE1NzA3NjY5MzMsIm5iZiI6MTU3MDc2NjkzMywiZXhwIjoxNTcyMDYyOTMzLCJzdWIiOiIiLCJzY29wZXMiOltdfQ.vhOBRLXAUmOdW2EL1XX92OF22yilMxlu5Bsiv415LvjKldXcqlYU6DwlHsJ_eyuo2n-YrayUuXrDUkh7eaxsjvGVnnyVRpK5SDCNrM8uEMltam8inZQ1WTfBC8p_KFotbxOOOILVzlJWmk-RxHuwpc991X32BLntU8kRVpZhPa99byLmRl3FQ91uFmNECiGb4CI3D9B0JX4iy9xRlH2e14zFQblW-tYHDjBB9SH-jpRBUBraooaFBoN9Ldv3xDhjhWSozKuJApNY0mC_JkGzKKd109eZcHsDmWMFIfFujSnCzDydx6A2LA1z-V3dZScxzmINph4Bz-_mJwt3h9e7xrVmuKN4BPWYAn1OcPBo3lobBYWj0dT0mXcdv8fGIHNJIzzYLOwqiEhVtAFc7oCBweNfwrGlpg1ANtErv2f2GxpIuvTUrx4-6SvXq6Twbr7lRmTCt6Rzt4aVTcpERVyAbind4WH5LCwJ6WE8rj9STCNepqfiUkF4USAHMcO87bccY1_7vNIBBk_oUM0PeVPWkNxrowZSVN_eX8H-3uWWcmuFPMBK79lkzcLyBOmKccVAPOvv7Jk9SE7N6w4ncpWtAfeWX0gStAk9emkc59eucxnOX5nX0cdz00KusB4cY7Zus0pJHeSmftJvLJsruxtahV6K-DPB11utDS5yRLLe9HE"
		}

	###### Test response Api con curl:
		curl -i -H "Accept:application/json" -H "Content-Type:application/json" -X POST http://0.0.0.0:8000/oauth/token -d '{"grant_type" : "client_credentials","client_id" : "2","client_secret" : "LChhP5eNpc8rHDs21QRA2v0KiPG27TgfGajx8BrP"}'	

## How would you improve the system?
	Existen varias vias, dependiendo del punto de vista:

	###### Punto de vista de logica de negocios:
		Desde luego, ya que es solo se habla de una parte de la orden de venta de telefonos, falta desarrollar clientes, grupos de celulares, marcas, etc.

	###### Desde el punto de vista tecnico:
		Ejecutar colas de procesos asincronas, para distribuir las peticiones al api, esto tambien tiene conexion con el punto siguiente.

## How would you avoid your order API to be overflow?
	- Establecer un limite de conexiones por minuto por token autentificado.
	- Establecer un limite de conexiones por ventana de aplicacion, por ejemplo 20 solicitudes por token de acceso.
	  Siempre enviando un mensaje informativo oportuno antes que el usuario alcance el limite y al alcanzarlo.


			


# ansib_phone_app
