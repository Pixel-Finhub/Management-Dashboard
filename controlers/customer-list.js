// Sample JSON data
const jsonData = [
    {
        "customer_id": 1,
        "full_name": "John Doe",
        "username": "johndoe",
        "email": "johndoe@example.com",
        "contact_number": "123-456-7890",
        "address": "123 Main St, City",
        "date_of_birth": "1990-01-15",
        "gender": "Male",
        "national_id": "ABC123456",
        "last_login": "2023-08-15 14:30:00"
    },
];

// Function to populate the table with JSON data
function populateTable(data) {
    const tableBody = document.getElementById('customer-table-items');

    data.forEach(customer => {
        const row = document.createElement('tr');
        row.innerHTML = `
            <td>${customer.customer_id}</td>
            <td>${customer.full_name}</td>
            <td>${customer.username}</td>
            <td>${customer.email}</td>
            <td>${customer.contact_number}</td>
            <td>${customer.address}</td>
            <td>${customer.date_of_birth}</td>
            <td>${customer.gender}</td>
            <td>${customer.national_id}</td>
            <td>${customer.last_login}</td>
        `;
        tableBody.appendChild(row);
    });
}

