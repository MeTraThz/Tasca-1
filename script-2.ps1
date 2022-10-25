cls
$continue = "True"
while($continue -eq "True"){
  Write-Host "┌────────────────────────────────────────────────┐"
  Write-Host "│                                                │"
  Write-Host "│                                                │"
  Write-Host "│                 Menú de Gestión                │"
  Write-Host "│                                                │"
  Write-Host "│                                                │"
  Write-Host "└────────────────────────────────────────────────┘"
  Write-Host "                                                  "
  Write-Host "                                                  "
  Write-Host " ■ 1. Introducir el fichero o directorio a buscar "
  Write-Host " ■ 2. Indicar la ruta en la que buscar el fichero "
  Write-Host " ■ 3. Indicar la ruta en la que hacer el backup   "
  Write-Host " ■ 4. Ejecutar el Script                          "
  Write-Host " ■ 5. Salir del programa                          "
  Write-Host "                                                  "
  Write-Host "                                                  " 
  $opction = Read-Host -Prompt " Selecciona la opción a realizar"
  Write-Host "                                                  "
  
  switch ($opction){
    1 {
      $file = Read-Host -Prompt "Introduce el nombre de fichero o directorio (ENTER = Cancelar)"
      Write-Host ""
      if ($file -eq ""){
        Write-Host "Cancelando la operación..."
      }
      else{
      Write-Host "Nombre guardado correctamente!"
      }
      Write-Host "Volviendo al menú principal..."
      Start-Sleep -Seconds 3
      cls
    }
  
    2 {
      $temp_path = Read-Host -Prompt "Introduce la ruta donde se encuentra el fichero/directorio (ENTER = Cancelar)"
      Write-Host ""
      if ($temp_path -eq ""){
        Write-Host "Cancelando la operación..."
      } 
      else{
        Start-Sleep -Seconds 3
        Write-Host "Ruta guardada correctamente!"
        Write-Host "Buscando todos los resultados compatibles con '"$file "'"
        Write-Host ""
      
        $temp_gci = gci -Recurse -Filter $file"*" -ErrorAction SilentlyContinue -Path $temp_path"*"  
        if ($null -eq $temp_gci){
            Start-Sleep -Seconds 1
            Write-Host "Ningún fichero / directorio coincide con su búsqueda."
        } 
        else{
            Write-Host "Mostrando todos los ficheros coincidentes con el fichero o directorio..."
            $temp_gci
            Write-Host ""
            $path = Read-Host -Prompt "Para continuar introduzca la ruta absoluta del fichero o directorio a copiar"
            $path = $path + "\"
            Write-Host ""
            Start-Sleep -Seconds 1.5
            Write-Host "Ruta absoluta obtenida con éxito!"
        }
      }
      Write-Host "Volviendo al menú principal..."
      Start-Sleep -Seconds 3
      cls
    }
  
    3 {
      $dir = Read-Host -Prompt "Introduzca la ruta donde desea copiar el fichero/directorio"
      $dir = $dir + "\"
      Write-Host ""
      Start-Sleep -Seconds 1.5
      Write-Host "Ruta a la que copiar el fichero o directorio guardada correctamente!"
      Write-Host "Volviendo al menú principal..."
      Start-Sleep -Seconds 3
      cls
    }
  
    4 {
      if($null -eq $file -or $null -eq $path -or $null -eq $dir){
        Write-Host "Error al ejecutar el script. Faltan argumentos."
        Write-Host "Por favor, introduce por orden todos los argumentos."
        Write-Host "Volviendo al menú principal..."
        Start-Sleep -Seconds 2
      } 
      else{
        Write-Host "Copiando el fichero o directorio, por favor espere."
        Start-Sleep -Seconds 1.5
        Copy-Item -Force -Recurse -Path $path$file"*" -Destination $dir"$file.backup"
        Write-Host "Fichero o directorio copiado con éxito!"
        gci $dir
      }
      Start-Sleep -Seconds 3
      $continue = "False"
    }
    5 {
      Write-Host "Saliendo del programa..."
      $continue = "False"
    }
    default{
      Write-Host "La opción seleccionada no es correcta, por favor, escoja una de las 5 mencionadas anteriormente."
      Start-Sleep -Seconds 2
      cls
    }
  }
}