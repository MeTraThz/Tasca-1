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
  Write-Host " ■ 3. Ejecutar el Script                          "
  Write-Host " ■ 4. Salir del programa                          "
  Write-Host "                                                  "
  Write-Host "                                                  " 
  $opction = Read-Host -Prompt " Selecciona la opción a realizar"
  Write-Host "                                                  "

  switch ($opction){
    1 {
      $file = Read-Host -Prompt "¿Qué fichero / directorio quieres buscar? (ENTER = Cancelar)"
      if ($file -eq ""){
        Write-Host "Cancelando la operación..."
      }
      else{
        Write-Host ""
        Start-Sleep -Seconds 1
        Write-Host "Fichero guardado con éxito!"
        Start-Sleep -Seconds 2
        Write-Host "Volviendo al menú principal..."
        Start-Sleep -Seconds 2
        cls
      }
    }
    2 {
      $path = Read-Host -Prompt "¿En que directorio quieres buscar el fichero / directorio?"
      if ($path -eq ""){
        Write-Host "Cancelando la operación..."
      }
      else{
        Write-Host ""
        Start-Sleep -Seconds 1
        Write-Host "Ruta guardada con éxito!"
        Start-Sleep -Seconds 2
        Write-Host "Volviendo al menú principal..."
        Start-Sleep -Seconds 2
        cls
      }
    }
    3 {
      if($null -eq $file -or $null -eq $path -or $null -eq $dir){
        Write-Host "Error al ejecutar el script. Faltan argumentos."
        Write-Host "Por favor, introduce por orden todos los argumentos."
        Write-Host "Volviendo al menú principal..."
        Start-Sleep -Seconds 2
      } 
      else{
        $gci = gci -Recurse -Filter $file"*" -ErrorAction SilentlyContinue -Path $path"*"
        if ($null -ne $gci){
          Write-Host "Buscando el fichero..."
          Start-Sleep -Seconds 3
          $gci
          $continue = "False"
        } 
        else{
          Write-Host "Ningún fichero / directorio coincide con su búsqueda."
        }
      }
    }
    4 {
      Write-Host "Saliendo del programa..."
      Write-Host "Por favor, espere."
      Start-Sleep -Seconds 2
      $continue = "False"
    }
    default{
      Write-Host "La opción seleccionada no es correcta, por favor, escoja una de las 4 mencionadas anteriormente."
      Start-Sleep -Seconds 2
      cls
    }
  }
}