// Se realiza una solicitud HTTP para obtener el archivo JSON que contiene los datos de los archivos.
fetch("data/files.json")
  // Cuando se recibe la respuesta, se convierte en un objeto JavaScript usando .json()
  .then(res => res.json())
  // Con los datos convertidos (un arreglo de objetos), se procede a manipular el DOM
  .then(data => {
    // Se obtiene el elemento con id="archivos", que será el contenedor donde se mostrarán los archivos
    const contenedor = document.getElementById("archivos");

    // Se recorre cada objeto del arreglo 'data'
    data.forEach(item => {
      // Se crea un nuevo div para representar un archivo
      const div = document.createElement("div");
      // Se le asigna una clase CSS llamada "archivo" (útil para estilos)
      div.className = "archivo";
      // Se establece el contenido HTML del div usando template literals, mostrando nombre, tipo y un enlace de descarga
      div.innerHTML = `
        <p><strong>${item.filename}</strong></p>
        <p>Tipo: ${item.type}</p>
        <p><a href="${item.url}" target="_blank">Descargar</a></p>
      `;
      // Finalmente, se agrega el nuevo div al contenedor principal
      contenedor.appendChild(div);
    });
  });
