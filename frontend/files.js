fetch("data/files.json")
  .then(res => res.json())
  .then(data => {
    const contenedor = document.getElementById("archivos");
    data.forEach(item => {
      const div = document.createElement("div");
      div.className = "archivo";
      div.innerHTML = `
        <p><strong>${item.filename}</strong></p>
        <p>Tipo: ${item.type}</p>
        <p><a href="${item.url}" target="_blank">Descargar</a></p>
      `;
      contenedor.appendChild(div);
    });
  });
