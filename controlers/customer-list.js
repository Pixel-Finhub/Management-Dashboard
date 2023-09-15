// Function to populate the table with JSON data
function populateTable(data) {
    const tableBody = document.getElementById('customer-table-items');

    data.forEach(customer => {
        const row = document.createElement('tr');
        row.innerHTML = `
            <td>${customer.id}</td>
            <td>${customer.firstName} ${customer.lastName}</td>
            <td>${customer.userName}</td>
            <td>${customer.email}</td>
            <td>${customer.phone}</td>
            <td>${customer.address}</td>
            <td>${customer.date_of_birth}</td>
            <td>${customer.gender}</td>
            <td>${customer.nidaId}</td>
        `;
        tableBody.appendChild(row);
    });
}

