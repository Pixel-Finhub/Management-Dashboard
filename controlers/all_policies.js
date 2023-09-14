// Sample policy data (replace with your actual data)
const policyData = [
    {
        PolicyID: 1,
        UserName: "John Doe",
        PackageName: "Gold Package",
        StartDate: "2023-09-01",
        EndDate: "2023-09-30",
        PremiumAmount: 100.00,
        PolicyStatus: "Active",
        PolicyCoverage: "Comprehensive",
        DeductibleAmount: 500.00,
        Claimed: "Yes",
        ContactInformation: "Contact details",
        PaymentDate: "2023-09-01",
        RenewalDate: "2024-09-01",
        CoverageLimit: "$1,000,000",
        ItemsCovered: 5
    },
    {
        PolicyID: 2,
        UserName: "Jane Smith",
        PackageName: "Silver Package",
        StartDate: "2023-09-05",
        EndDate: "2023-09-25",
        PremiumAmount: 80.50,
        PolicyStatus: "Expired",
        PolicyCoverage: "Basic",
        DeductibleAmount: 250.00,
        Claimed: "No",
        ContactInformation: "Contact details",
        PaymentDate: "2023-09-05",
        RenewalDate: "2024-09-05",
        CoverageLimit: "$500,000",
        ItemsCovered: 2
    },
    // Add more policy data as needed
];

// Function to populate the table with policy data
function populatePolicyTable() {
    const tableBody = document.querySelector("#policyData");

    policyData.forEach(policy => {
        const row = document.createElement("tr");
        row.innerHTML = `
            <td>${policy.PolicyID}</td>
            <td>${policy.UserName}</td>
            <td>${policy.PackageName}</td>
            <td>${policy.StartDate}</td>
            <td>${policy.EndDate}</td>
            <td>${policy.PremiumAmount}</td>
            <td>${policy.PolicyStatus}</td>
            <td>${policy.PolicyCoverage}</td>
            <td>${policy.DeductibleAmount}</td>
            <td>${policy.Claimed}</td>
            <td>${policy.ContactInformation}</td>
            <td>${policy.PaymentDate}</td>
            <td>${policy.RenewalDate}</td>
            <td>${policy.CoverageLimit}</td>
            <td>${policy.ItemsCovered}</td>
        `;
        tableBody.appendChild(row);
    });
}

