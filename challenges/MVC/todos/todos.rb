# Que clases necesitas?

# Recuerda, hay 4 responsabilidades, cada una con sus propias responsabilidades:
# 1. Recolectar el input del usuario y mostrarle la interfaz (View)
* Ver lista de tareas
# 2. Decidir la accion necesaria a ejecutar en base al input del usuario (Controller)
* AVG (add), (complete, name), (delete, name) (list)
*case when
# 3. Escribir y leer del archivo (Model)
*CSV.foreach
# 4. Manipular los objetos en memoria que modela la lista de tareas (domain-specific model)
*CSV << to_do
*CSV delete
* AVG change status
# El punto 4 es donde vive la escencia de tu aplicacion.
# Casi todas las aplicaciones en el universo tienen alguna version de las responsabilidades (1), (2), y (3).w
