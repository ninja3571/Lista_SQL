async function getData(){
    const data = await fetch("http://localhost:3000/gettodos")
    const json = await data.json()
    console.log(json)

    document.getElementById('lista').innerHTML=""

    for(var i=0;i<=json.length-1;i++){
        const div = document.createElement("div")
        div.classList.add("todo")
        document.getElementById("body").appendChild(div)

        const nazwa = document.createElement("h1")
        nazwa.innerHTML = json[i].task
        div.appendChild(nazwa)

        const termin = document.createElement("h2")
        termin.innerHTML = json[i].daystoend
        div.appendChild(termin)

        document.getElementById("lista").appendChild(div)
    }
}
getData()

async function sendData(){
    const nazwa = document.getElementById("nazwa_zad").value
    const termin = document.getElementById("termin").value
    const wykonane = document.getElementById("wykonane").value
    console.log(nazwa)
    console.log(termin)
    console.log(wykonane)

    const url = `http://localhost:3000/add/'${nazwa}'/'${wykonane}'/'${termin}'`

    const data = await fetch(url)
}