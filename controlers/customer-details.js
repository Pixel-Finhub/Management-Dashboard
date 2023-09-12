function populateBasicDetails(data) {
    document.getElementById('full_name').textContent = data.full_name;
    document.getElementById('username').textContent = `@${data.username}`;
    document.getElementById('phone_number').textContent = data.phone_number;
    document.getElementById('joined_on').textContent = data.joined_on;
    document.getElementById('email').textContent = data.email;
    document.getElementById('address').textContent = data.address;
}


function populatePolicies(data) {
    const tableBody = document.getElementById('insurancePolicies');
    tableBody.innerHTML = ''; // Clear existing rows

    data.forEach(policy => {
        const row = document.createElement('tr');
        row.innerHTML = `
            <td>~</td>
            <td>${policy.base_package}</td>
            <td>${policy.start_date}</td>
            <td>${policy.end_date}</td>
            <td>${policy.amount}</td>
        `;
        tableBody.appendChild(row);
    });
}



function populateAppActivity(data) {
    document.getElementById('total_in_app_time_spent').textContent = data.total_in_app_time_spent;
    document.getElementById('average_time_spent').textContent = data.average_time_spent;
}



function populateCargoTypes(data) {
    const tableBody = document.getElementById('cargoTypes');
    tableBody.innerHTML = ''; // Clear existing rows

    data.forEach(cargo => {
        const row = document.createElement('tr');
        row.innerHTML = `
            <td>~</td>
            <td>${cargo.cargo_name}</td>
            <td>${cargo.premium_rate}</td>
            <td>${cargo.frequency}</td>
            <td>${cargo.total_spent}</td>
        `;
        tableBody.appendChild(row);
    });
}



function populatePaymentHistory(data) {
    const tableBody = document.getElementById('payment_history');
    tableBody.innerHTML = ''; // Clear existing rows

    data.forEach(payment => {
        const row = document.createElement('tr');
        row.innerHTML = `
            <td>~</td>
            <td>${payment.invoice_id}</td>
            <td>${payment.package_id}</td>
            <td>${payment.amount_paid}</td>
            <td>${payment.date}</td>
        `;
        tableBody.appendChild(row);
    });
}



