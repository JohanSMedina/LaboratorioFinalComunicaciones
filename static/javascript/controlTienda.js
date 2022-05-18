class Product{
    constructor(chocolatina,galleta,helado,dona,pie,turron,){
        this.chocolatina = chocolatina;

        this.galleta = galleta;

        this.helado = helado;

        this.dona = dona;

        this.pie = pie;

        this.turron = turron;

    }
}

class UI{
    addProduct(){

    }

    deleteProduct(){
        
    }
    showMessage(){
        
    }

}

///DOM///
document.getElementById('agregar').addEventListener('click',function(){
    //alert('Si hace esta mondá')
    const cantic = document.getElementById('cc').value;
    const cantig = document.getElementById('cg').value;
    const cantih = document.getElementById('ch').value;
    const cantid = document.getElementById('cd').value;
    const cantip = document.getElementById('cp').value;
    const cantit = document.getElementById('ct').value;
    //console.log(cantic + " " + cantig+ " " + cantih+ " " + cantid+ " " + cantip+ " " + cantit);
    const product = new Product(cantic,cantig,cantih,cantid,cantip,cantit)
})











/*
johanmedina877@gmail.com
JMedR
Host: sql10.freesqldatabase.com
Database name: sql10493361
Database user: sql10493361
Database password: LRcna74KIU
Port number: 3306
*/