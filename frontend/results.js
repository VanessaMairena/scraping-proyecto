fetch("data/results.json")
  .then(res => res.json())
  .then(data => {
    const contenedor = document.getElementById("productos");

    data.forEach(item => {
      const div = document.createElement("div");
      div.className = "producto";

      div.innerHTML = `
        <blockquote>"${item.quote}"</blockquote>
        <p>- ${item.author}</p>
      `;

      contenedor.appendChild(div);
    });
  });
