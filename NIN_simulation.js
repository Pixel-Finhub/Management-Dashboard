var NIN_API = {};

// Generate 100 sample data entries
for (var i = 0; i < 100; i++) {
    var nidaNumber = generateNIDANumber(); // Function to generate a unique NIDA number
    NIN_API[nidaNumber] = {
        phoneNumber: generatePhoneNumber(),
        firstName: generateFirstName(),
        lastName: generateLastName(),
        dateOfBirth: generateDateOfBirth(),
        gender: generateGender()
    };
}

// Functions to generate random data
function generateNIDANumber() {
    // You can generate a unique NIDA number based on your requirements.
    // For simplicity, you can use a random number or a pattern.
    return "NIDA" + Math.floor(Math.random() * 1000000);
}

function generatePhoneNumber() {
    return "+1" + Math.floor(Math.random() * 1000000000); // Random phone number
}

function generateFirstName() {
    var firstNames = [
        "Liam", "Olivia", "Noah", "Emma", "Sophia", "Jackson", "Aiden", "Lucas", "Ava", "Isabella",
        "Mia", "Luna", "Ethan", "Chloe", "Harper", "Liam", "Oliver", "Elijah", "Amelia", "Olivia",
        "Avery", "Mason", "Charlotte", "Ella", "Scarlett", "James", "Levi", "Lily", "Ella", "Chloe",
        "Liam", "Lucas", "Luna", "Noah", "Sophia", "Harper", "Aiden", "Ava", "Isabella", "Mia",
        "Ethan", "Chloe", "Oliver", "Ella", "Scarlett", "Avery", "Mason", "Amelia", "Lily", "Olivia",
        "James", "Levi", "Ella", "Liam", "Lucas", "Charlotte", "Luna", "Noah", "Sophia", "Harper",
        "Aiden", "Ava", "Isabella", "Mia", "Ethan", "Chloe", "Oliver", "Olivia", "Lily", "Ella",
        "Scarlett", "James", "Levi", "Avery", "Mason", "Amelia", "Luna", "Liam", "Lucas", "Sophia",
        "Noah", "Harper", "Ava", "Isabella", "Mia", "Aiden", "Chloe", "Oliver", "Ella", "Scarlett"
    ];
    return firstNames[Math.floor(Math.random() * firstNames.length)];
}

function generateLastName() {
    var lastNames = [
        "Smith", "Johnson", "Brown", "Lee", "Garcia", "Martinez", "Davis", "Rodriguez", "Martinez", "Lopez",
        "Hernandez", "Gonzalez", "Wilson", "Anderson", "Thomas", "Taylor", "Williams", "Moore", "Jackson", "White",
        "Harris", "Clark", "Lewis", "Young", "Hall", "Walker", "Allen", "King", "Wright", "Green",
        "Baker", "Adams", "Nelson", "Hill", "Ramirez", "Campbell", "Mitchell", "Roberts", "Carter", "Phillips",
        "Evans", "Turner", "Parker", "Collins", "Edwards", "Stewart", "Flores", "Morris", "Nguyen", "Murphy",
        "Rivera", "Cook", "Rogers", "Morgan", "Peterson", "Cooper", "Reed", "Bailey", "Bell", "Gomez",
        "Diaz", "Hayes", "Ward", "Russell", "Sullivan", "Sanders", "Coleman", "Powell", "Bennett", "Mora",
        "Jordan", "Reyes", "Mendoza", "Miller", "Scott", "Young", "Gutierrez", "Long", "Foster", "Ramirez",
        "Nguyen", "Gray", "Gonzales", "Bryant", "Sanchez", "Jones", "Perez", "Morales", "Murray", "Cole",
        "Stewart", "Mitchell", "Turner", "Parker", "Phillips", "Allen", "Ward", "Foster", "Bell", "Carter"
    ];
    return lastNames[Math.floor(Math.random() * lastNames.length)];
}

function generateDateOfBirth() {
    // Generate a random date of birth within a reasonable range.
    var year = Math.floor(Math.random() * 40) + 2010; // Random year between 1960 and 2010
    var month = Math.floor(Math.random() * 12) + 1; // Random month between 1 and 12
    var day = Math.floor(Math.random() * 28) + 1; // Random day between 1 and 28
    return year + "-" + (month < 10 ? "0" + month : month) + "-" + (day < 10 ? "0" + day : day);
}

function generateGender() {
    var genders = ["Male", "Female", "Other"];
    return genders[Math.floor(Math.random() * genders.length)];
}

// Access data using the NIDA number as the key
var sampleData = NIN_API["NIDA123456"];
console.log(sampleData); // Example of accessing a random data entry
