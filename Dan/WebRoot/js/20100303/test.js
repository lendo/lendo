function test(){
	var row = $("table").insertRow(2);
	var cell = row.insertCell(0);
	cell.innerHTML = "<input type='text' value=''/>";
}