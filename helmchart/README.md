# express-openshift

Express - Openshift Demo App

## Valores requeridos

El despliegue requiere que los siguientes valores sean definidos correctamente:

- `image.tag`: versión de la imagen docker a desplegar.
- `route.domain`: dominio donde se desplegará el route.
- `route.name`: nombre de la aplicación donde se desplegará el route.


Para generar el fichero de valores para una implantación concreta se recomienda crearlo
a partir del fichero de valores por omisión:

```
$ helm show values <chart> >values.yaml
$ vi values.yaml
...
$ helm in