<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Bank Account Creation</title>
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <style>
    body {
      background-color: #f8f9fa;
    }
    .card {
      border: none;
      border-radius: 10px;
      box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
    }
    .card-header {
      background-color: #007bff;
      color: #fff;
      border-radius: 10px 10px 0 0;
      text-align: center;
      font-weight: bold;
    }
    .card-body {
      padding: 20px;
    }
    .form-group label {
      font-weight: bold;
    }
    .btn-primary {
      background-color: #007bff;
      border-color: #007bff;
    }
    .btn-primary:hover {
      background-color: #0056b3;
      border-color: #0056b3;
    }
  </style>
</head>
<body>

<div class="container mt-5">
  <div class="row justify-content-center">
    <div class="col-md-8">
      <div class="card">
        <div class="card-header">
          <h3>Create a Bank Account</h3>
        </div>
        <div class="card-body">
          <form id="accountCreationForm" method="post" action="createAccount" enctype="multipart/form-data">
            <div class="form-group">
              <label for="fullName">Full Name</label>
              <input type="text" class="form-control" id="fullName" required name="fullName">
            </div>
            <div class="form-group">
              <label for="DOB">Date of Birth</label>
              <input type="date" class="form-control" id="dob" required name="dob">
            </div>
            <div class="form-group">
              <label for="email">Email Address</label>
              <input type="email" class="form-control" id="email" required name="email">
            </div>
            <div class="form-group">
              <label for="phoneNumber">Phone Number</label>
              <input type="tel" class="form-control" id="phoneNumber" required name="phoneNumber">
            </div>
            <div class="form-group">
              <label for="panNumber">PAN Card Number</label>
              <input type="text" class="form-control" id="panNumber" required name="panNumber">
            </div>
            <div class="form-group">
              <label for="aadharNumber">Aadhar Card Number</label>
              <input type="text" class="form-control" id="aadharNumber" required name="aadharNumber">
            </div>
            <div class="form-group">
              <label for="panFile">Upload PAN Card (PDF)</label>
              <input type="file" class="form-control-file" id="panFile" name="panPdf" required accept=".pdf">
            </div>
            <div class="form-group">
              <label for="aadharFile">Upload Aadhar Card (PDF)</label>
              <input type="file" class="form-control-file" id="aadharFile" name="aadharPdf" required accept=".pdf">
            </div>
            <div class="form-group">
              <label for="address">Address</label>
              <textarea class="form-control" id="address" required name="address"></textarea>
            </div>
            <div class="form-group">
              <label for="initialDeposit">Initial Deposit</label>
              <input type="number" class="form-control" id="initialDeposit" required name="initialDeposit">
            </div>
            <div class="form-group">
              <label for="accountPassword">Password</label>
              <input type="password" class="form-control" id="accountPassword" required name="accountPassword">
            </div>
            <button type="submit" class="btn btn-primary btn-block">Create Account</button>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>

<!-- Bootstrap JS and jQuery -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<script>
  // JavaScript code for form submission and validation
  document.getElementById('accountCreationForm').addEventListener('submit', function(event) {
    event.preventDefault();
    
    const fullName = document.getElementById('fullName').value;
    const email = document.getElementById('email').value;
    const phoneNumber = document.getElementById('phoneNumber').value;
    const panNumber = document.getElementById('panNumber').value;
    const aadharNumber = document.getElementById('aadharNumber').value;
    const address = document.getElementById('address').value;
    const initialDeposit = parseFloat(document.getElementById('initialDeposit').value);
    
    // You can add more validation here as per your requirements
    // Validation for Full Name
    if (!fullName) {
      alert('Please enter your Full Name.');
      return;
    }

    // Validation for Email Address
    if (!email) {
      alert('Please enter your Email Address.');
      return;
    } else if (!validateEmail(email)) {
      alert('Please enter a valid Email Address.');
      return;
    }

    // Validation for Phone Number
    if (!phoneNumber) {
      alert('Please enter your Phone Number.');
      return;
    }

    // Validation for PAN Card Number
    if (!panNumber) {
      alert('Please enter your PAN Card Number.');
      return;
    }

    // Validation for Aadhar Card Number
    if (!aadharNumber) {
      alert('Please enter your Aadhar Card Number.');
      return;
    }

    // Validation for PAN Card PDF File
    const panFile = document.getElementById('panFile');
    if (panFile.files.length === 0) {
      alert('Please upload your PAN Card PDF file.');
      return;
    }

    // Validation for Aadhar Card PDF File
    const aadharFile = document.getElementById('aadharFile');
    if (aadharFile.files.length === 0) {
      alert('Please upload your Aadhar Card PDF file.');
      return;
    }

    // Validation for Address
    if (!address) {
      alert('Please enter your Address.');
      return;
    }

    // Validation for Initial Deposit
    if (isNaN(initialDeposit) || initialDeposit <= 0) {
      alert('Please enter a valid Initial Deposit.');
      return;
    }

    // If all validations pass, simulate account creation
    alert(`Account created successfully!\n\nName: ${fullName}\nEmail: ${email}\nPhone Number: ${phoneNumber}\n
      PAN Card Number: ${panNumber}\nAadhar Card Number: ${aadharNumber}\nAddress: ${address}\nInitial Deposit: ${initialDeposit}`);

    // Reset the form after successful submission
    document.getElementById('accountCreationForm').reset();
  });

  // Helper function to validate email format
  function validateEmail(email) {
    const emailRegex = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
    return emailRegex.test(email);
  }
    // Sample validation (checking if the initial deposit is not negative)
    if (initialDeposit < 0) {
      alert('Initial deposit cannot be negative.');
      return;
    }
    
    // Simulate account creation process
    // You can replace this with the actual server-side code to create an account
    alert(`Account created successfully!\n\nName: ${fullName}\nEmail: ${email}\nPhone Number: ${phoneNumber}\n
      PAN Card Number: ${panNumber}\nAadhar Card Number: ${aadharNumber}\nAddress: ${address}\nInitial Deposit: ${initialDeposit}`);
    
    // Reset the form after successful submission
    document.getElementById('accountCreationForm').reset();
  });
</script>

</body>
</html>
