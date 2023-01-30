// const formValidatorWebWorker = new Worker("./formValidator.js");
// formValidatorWebWorker.postMessage("start");

let tableBody = document.getElementById("tbody");
let rowIndex = 0;

//on successful submit event:
self.addEventListener("message", (ev)=>{
    //retrieving submitted data
    const fieldsJson = ev.data;
    const formFields = JSON.parse(fieldsJson);
    const username = formFields.username;
    const password = formFields.password;

    //storing data to local storage
    localStorage.setItem(username, fieldsJson);

    //adding to the list
    updateTable()

})

function updateTable(){

    for (let i = 0; i < localStorage.length; i++){
        writeEntryToTable(localStorage.getItem(localStorage.key(i)));
    }
}

function writeEntryToTable(localStorageKey){
    console.log(localStorageKey)
    const formFields = JSON.parse(localStorageKey)
    let newRow = tableBody.insertRow(-1);
    newRow.insertCell(0).innerText = rowIndex.toString();
    rowIndex++;
    newRow.insertCell(1).innerText = formFields.title;
    newRow.insertCell(2).innerText = formFields.age;

    let newEditButton = document.createElement('button');
    newEditButton.onclick = () => console.log("edit click!")
    newEditButton.innerText = "edit";

    newRow.insertCell(3).insertAdjacentElement('beforeend', newEditButton);

    let newDeleteButton = document.createElement('button');
    newDeleteButton.innerText = "delete";
    newDeleteButton.onclick = () => {
        let deleteStorageKey = newDeleteButton.parentElement.parentElement.children[1].textContent;
        let deleteRowKey = newDeleteButton.parentElement.parentElement.firstChild.textContent;
        console.log(deleteStorageKey)
        console.log(deleteRowKey)
        console.log("delete click!")
        localStorage.removeItem(deleteStorageKey)
        tableBody.deleteRow(deleteRowKey)
        location.reload();
    }


    newRow.insertCell(4).insertAdjacentElement('beforeend', newDeleteButton);
}

updateTable();
