class Product {
    constructor(chocolatina, galleta, helado, dona, pie, turron,) {
        this.chocolatina = chocolatina;

        this.galleta = galleta;

        this.helado = helado;

        this.dona = dona;

        this.pie = pie;

        this.turron = turron;

    }
}

class UI {
    addProduct(product) {
        const productList = document.getElementById('UIcarrito');
        const element = document.createElement('div')
        element.innerHTML = `
            <div class="card mb-4">
                <div class="card-body">
                    <strong>Chocolatinas</strong>: ${product.chocolatina}
                    <strong>Galletas</strong>: ${product.galleta}
                    <strong>Helados</strong>: ${product.helado}
                    <strong>Donas</strong>: ${product.dona}
                    <strong>Pies</strong>: ${product.pie}
                    <strong>Turrones</strong>: ${product.turron}
                    <a href="#" class= "btn btn-danger" name="delete">Eliminar</a>
                </div>
            </div>
        `;
        productList.appendChild(element)
    }

    deleteProduct(element) {
        if (element.name === 'delete') {
            element.parentElement.parentElement.parentElement.remove()
            this.showMessage("Pruducto eliminado", "danger")
        }
    }

    showMessage(message, cssClass) {
        const div = document.createElement("div");
        div.className = `alert alert-${cssClass} mt-2`;
        div.appendChild(document.createTextNode(message));

        // Show in The DOM
        const container = document.querySelector(".container");
        const app = document.querySelector("#carrito");

        // Insert Message in the UI
        container.insertBefore(div, app);

        // Remove the Message after 3 seconds
        setTimeout(function () {
            document.querySelector(".alert").remove();
        }, 3000);
    }

}

///DOM///
document.getElementById('agregar').addEventListener('click', function () {
    //alert('Si hace esta mondá')
    const cantic = document.getElementById('cc').value;
    const cantig = document.getElementById('cg').value;
    const cantih = document.getElementById('ch').value;
    const cantid = document.getElementById('cd').value;
    const cantip = document.getElementById('cp').value;
    const cantit = document.getElementById('ct').value;
    //console.log(cantic + " " + cantig+ " " + cantih+ " " + cantid+ " " + cantip+ " " + cantit);

    const product = new Product(cantic, cantig, cantih, cantid, cantip, cantit)
    const ui = new UI();
    ui.addProduct(product);
    ui.showMessage('Pruducto agregado', 'info');

    document.getElementById('carrito').addEventListener('click', function (e) {
        const ui = new UI();
        ui.deleteProduct(e.target)
    })
})