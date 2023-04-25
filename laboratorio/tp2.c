#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void main()
{
    int opcion;
    long codigoDeBarras[100] = {},cantidadStock[100] = {};
    char nombreProducto[100][30] = {};
    char descripcion[100][100] = {};
    int controlProductos = 0, inexistente = 0;
    char respuesta;
    long buscadorCodigo =0, i=1;

    do
    {
        printf("Ingrese la opcion deseada: \n");
        printf("1. Cargar productos. \n");
        printf("2. Modificar stock. \n");
        printf("3. Mostrar productos sin stock. \n");
        printf("4. Listar productos. \n");
        printf("5. Salir. \n");
        scanf("%i", &opcion);
    
        switch (opcion)
        {
            case 1:
                    do
                    {   
                        i = 1;
                        fflush(stdin);
                        printf("Cargue el producto deseado: \n");
                        scanf("%[^\n]", &nombreProducto[controlProductos]);

                        printf("Ingrese su codigo de barras: \n");
                        scanf("%i", &codigoDeBarras[controlProductos]);

                        printf("Ingrese la cantidad en stock de este producto: \n");
                        scanf("%i", &cantidadStock[controlProductos]);
                        
                        fflush(stdin);
                        printf("Ingrese una breve descripcion: \n");
                        scanf("%[^\n]", &descripcion[controlProductos]);

                        fflush(stdin);
                        printf("Quiere ingresar otro producto? presione 'y' para seguir, sino presione 'n' para volver al menu.\n");
                        scanf("%c", &respuesta);

                        while (respuesta != 'y' && respuesta != 'Y' && respuesta != 'n' && respuesta != 'N')
                        {
                            printf("Ingrese una opcion correcta. presione 'y' para seguir, sino presione 'n' para volver al menu. \n");
                            scanf("%c", &respuesta);
                        }
                        
                        if (respuesta == 'n' || respuesta == 'N')
                        {
                            i = 0;
                        }
                        controlProductos++;
                    } 
                    while (controlProductos < 100 && i == 1);
     
            break;

            case 2:
                printf("Ingrese el codigo de barras del producto para modificar su stock disponible: \n");
                scanf("%i", &buscadorCodigo);
            
                for (int x = 0; x < controlProductos; x++)
                {
                    if (buscadorCodigo == codigoDeBarras[x])
                    {
                        printf("Stock: %i\n", cantidadStock[x]);
                        printf("Ingrese la nueva cantidad de stock: \n");
                        scanf("%i", &cantidadStock[x]);
                        x = controlProductos;
                        inexistente = 0;
                    }
                    else
                    {
                        inexistente = 1;
                    }
                };
                if (inexistente == 1)
                {
                    printf("Electrodomestico inexistente.\n");                  
                }
                  
            break;    

            case 3:

                for (int x = 0; x < controlProductos; x++)
                {
                    if (cantidadStock[x] == 0)
                    {
                        printf("%s se encuentra sin stock.\n", &nombreProducto[x]);
                    }
                    
                }
                break;

            case 4:
                for (int x = 0; x < controlProductos; x++)
                {
                    printf("Nombre producto: %s\t  Codigo de barras: %i \t Descripcion: %s \t Cantidad de stock: %i\n", nombreProducto[x],codigoDeBarras[x],descripcion[x],cantidadStock[x]);
                }
                  
            break;
        }
    }
    while(opcion != 5);
    
    system ("pause");  
}