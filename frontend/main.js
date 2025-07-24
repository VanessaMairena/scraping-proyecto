// Hace una solicitud HTTP GET al endpoint que devuelve los productos desde una API local
fetch("http://localhost:5000/api/productos")
  // Cuando se recibe la respuesta, se convierte a formato JSON
  .then(res => res.json())
  // Luego se procesa la data obtenida
  .then(data => {
    // Se obtiene el elemento HTML donde se van a mostrar los productos
    const contenedor = document.getElementById("productos");

    // Se recorre cada producto recibido en la respuesta
    data.forEach(item => {
      // Se crea un nuevo div para mostrar la información del producto
      const div = document.createElement("div");
      div.className = "producto"; // Se le asigna una clase para estilos CSS

      // Se define el contenido HTML del div, incluyendo título, precio, origen y fecha
      div.innerHTML = `
        <h3>${item.titulo}</h3>
        <p><span>${item.precio}</span></p>
        <p>Origen: ${item.origen}</p>
        <p>Fecha: ${item.fecha}</p>
      `;

      // Se agrega el div recién creado al contenedor principal en la página
      contenedor.appendChild(div);
    });
  })
  // Si ocurre un error durante la solicitud, se muestra en la consola
  .catch(err => {
    console.error("Error al cargar los productos:", err);
  });
