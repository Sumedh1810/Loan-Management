<%@page import="entity.createAccount"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <title>Home Loan Application</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 20px;
    }
    
    h1 {
      text-align: center;
    }
    
    .container {
      max-width: 800px;
      margin: 0 auto;
    }
    
    .form-group {
      margin-bottom: 20px;
    }
    
    label {
      display: block;
      font-weight: bold;
      margin-bottom: 5px;
    }
    
    input[type="text"],
    input[type="email"],
    input[type="tel"] {
      width: 100%;
      padding: 10px;
      border: 1px solid #ccc;
      border-radius: 4px;
      box-sizing: border-box;
    }
    
    input[type="submit"] {
      padding: 10px 20px;
      background-color: #4CAF50;
      color: #fff;
      border: none;
      border-radius: 4px;
      cursor: pointer;
      font-size: 16px;
    }
    
    input[type="submit"]:hover {
      background-color: #45a049;
    }
  </style>
</head>
<body>
  <div class="container">
    <h1>Home Loan Application</h1>
    <form id="loanApplicationForm" method="post" action="loanForm">
      <div class="form-group">
        <h5>FORM A :  PERSONAL DETAILS</h5>
        <label for="existingCustomer">Existing Customer:</label>
        <select id="existingCustomer" name="existingCustomer" class="form-control">
          <option value="yes">Yes</option>
          <option value="no">No</option>
        </select>
      </div>
      <div class="form-group">
        <label for="cifAccountNo">CIF No/ Account No (If Yes):</label>
        <input type="text" id="cifAccountNo" name="cifAccountNo" class="form-control">
      </div>
      <div class="form-group">
        <label for="firstName">First Name:</label>
        <input type="text" id="firstName" name="firstName" class="form-control" required>
      </div>
      <div class="form-group">
        <label for="middleName">Middle Name:</label>
        <input type="text" id="middleName" name="middleName" class="form-control">
      </div>
      <div class="form-group">
        <label for="lastName">Last Name:</label>
        <input type="text" id="lastName" name="lastName" class="form-control" required>
      </div>
      <div class="form-group">
        <label for="dob">Date of Birth:</label>
        <input type="date" id="dob" name="dob" class="form-control" required>
      </div>
      <div class="form-group">
        <label for="pan">PAN:</label>
        <input type="text" id="pan" name="pan" class="form-control" required>
      </div>
      <div class="form-group">
        <label for="mobile">Mobile:</label>
        <input type="tel" id="mobile" name="mobile" class="form-control" required>
      </div>
      <div class="form-group">
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" class="form-control" required>
      </div>
      <div class="form-group">
        <label for="spouseName">Name of Spouse:</label>
        <input type="text" id="spouseName" name="spouseName" class="form-control">
      </div>
      <div class="form-group">
        <label for="fatherName">Name of Father:</label>
        <input type="text" id="fatherName" name="fatherName" class="form-control" required>
      </div>
      <div class="form-group">
        <label for="gender">Gender:</label>
        <select id="gender" name="gender" class="form-control">
          <option value="male">Male</option>
          <option value="female">Female</option>
          <option value="other">Third Gender</option>
        </select>
      </div>
      <div class="form-group">
        <label for="maritalStatus">Marital Status:</label>
        <select id="maritalStatus" name="maritalStatus" class="form-control">
          <option value="single">Single</option>
          <option value="married">Married</option>
          <option value="divorced">Divorced</option>
          <option value="widowed">Widowed</option>
        </select>
      </div>
      <div class="form-group">
        <label for="kycDetails">Details of KYC (Minimum one to be filled):</label>
        <input type="text" id="aadhaar" name="aadhaar" class="form-control" placeholder="Aadhaar / UID No.">
        <input type="text" id="voterId" name="voterId" class="form-control" placeholder="Voter ID No.">
        <input type="text" id="passport" name="passport" class="form-control" placeholder="Passport No.">
        <input type="text" id="drivingLicense" name="drivingLicense" class="form-control" placeholder="Driving License No.">
        <input type="text" id="mgnregaJobCard" name="mgnregaJobCard" class="form-control" placeholder="MGNREGA Job card No.">
        <input type="text" id="nprLetter" name="nprLetter" class="form-control" placeholder="Letter issued by National Population Register Containing Name and Address">
      </div>
      <div class="form-group">
        <label for="residentialStatus">Residential Status:</label>
        <select id="residentialStatus" name="residentialStatus" class="form-control">
          <option value="ri">Resident Indian (RI)</option>
          <option value="nri">Non-Resident Indian (NRI)</option>
          <option value="pio">Person Of Indian Origin (PIO)</option>
          <option value="foreign">Foreign Citizen</option>
        </select>
      </div>
      <div class="form-group">
        <label for="serviceType">For Defence Personnel:</label>
        <div>
          <label><input type="checkbox" name="serviceType" value="army"> Indian Army</label>
          <label><input type="checkbox" name="serviceType" value="navy"> Indian Navy</label>
          <label><input type="checkbox" name="serviceType" value="airForce"> Indian Air force</label>
        </div>
      </div>
      <div class="form-group">
        <label for="serviceUnder">IS YOUR SERVICE UNDER:</label>
        <div>
          <label><input type="checkbox" name="serviceUnder" value="definedBenefitPension"> Defined Benefit Pension</label>
          <label><input type="checkbox" name="serviceUnder" value="newPensionScheme"> New Pension Scheme</label>
        </div>
      </div>
      <div class="form-group">
        <h5>RESIDENTIAL ADDRESS:</h5>
        <h5>PERMANENT ADDRESS:</h5>
        <label for="residentialAddress">Residential Address:</label>
        <textarea id="residentialAddress" name="residentialAddress" class="form-control" rows="3"></textarea>
      </div>
      <div class="form-group">
        <label for="permanentAddress">Permanent Address:</label>
        <textarea id="permanentAddress" name="permanentAddress" class="form-control" rows="3"></textarea>
      </div>
      <div class="form-group">
        <label for="currentAddressSame">Current address same as the permanent address:</label>
        <div>
          <label><input type="radio" name="currentAddressSame" value="yes"> Yes</label>
          <label><input type="radio" name="currentAddressSame" value="no"> No</label>
        </div>
      </div>
      <div class="form-group">
        <h5>CURRENT ADDRESS:</h5>
        <label for="currentAddress">Current Address:</label>
        <textarea id="currentAddress" name="currentAddress" class="form-control" rows="3"></textarea>
      </div>
      <div class="form-group">
        <label for="addressType">Address type for communication:</label>
        <select id="addressType" name="addressType" class="form-control">
          <option value="permanent">Permanent</option>
          <option value="current">Current</option>
        </select>
      </div>
      <div class="form-group">
        <label for="residentialType">Residential type:</label>
        <select id="residentialType" name="residentialType" class="form-control">
          <option value="rented">Rented</option>
          <option value="companyLease">Company lease</option>
          <option value="owned">Owned</option>
        </select>
      </div>
      <div class="form-group">
        <label for="yearsInCurrentAddress">Years residing in current address:</label>
        <input type="number" id="yearsInCurrentAddress" name="yearsInCurrentAddress" class="form-control" min="0">
      </div>
      <div class="form-group">
        <label for="monthsInCurrentAddress">Months residing in current address:</label>
        <input type="number" id="monthsInCurrentAddress" name="monthsInCurrentAddress" class="form-control" min="0">
      </div>
      <div class="form-group">
        <label for="relationship">Relationship with Primary Applicant:</label>
        <select id="relationship" name="relationship" class="form-control">
          <option value="spouse">Spouse</option>
          <option value="father">Father</option>
          <option value="mother">Mother</option>
          <option value="brother">Brother</option>
          <option value="sister">Sister</option>
          <option value="son">Son</option>
          <option value="daughter">Daughter</option>
          <option value="daughterInLaw">Daughter-in-law</option>
          <option value="others">Others</option>
        </select>
        <input type="text" id="relationshipOther" name="relationshipOther" class="form-control" placeholder="Specify relationship" style="display: none;">
      </div>
      <div class="form-group">
        <label for="existingHousePlot">No. of existing house/plot owned individually or jointly by the customer:</label>
        <input type="number" id="existingHousePlot" name="existingHousePlot" class="form-control" min="0">
      </div>
      <div class="form-group">
        <label for="residentialUnits">No. of units acquired in single residential housing project/co-operative residential complex:</label>
        <input type="number" id="residentialUnits" name="residentialUnits" class="form-control" min="0">
      </div>
      <div class="form-group">
        <label for="builderOwnerAcquiring">Is the customer, who is Builder/ Partner/Director/Owner/Promoter acquiring a house/unit/plot in the project developed by them/their Company?</label>
        <div>
          <label><input type="radio" name="builderOwnerAcquiring" value="yes"> Yes</label>
          <label><input type="radio" name="builderOwnerAcquiring" value="no"> No</label>
        </div>
      </div>
      <div class="form-group">
        <label for="powerOfAttorney">Power of attorney provided:</label>
        <div>
          <label><input type="radio" name="powerOfAttorney" value="yes"> Yes</label>
          <label><input type="radio" name="powerOfAttorney" value="no"> No</label>
        </div>
      </div>
      <div class="form-group">
        <label for="poaHolderName">Name of the POA Holder:</label>
        <input type="text" id="poaHolderName" name="poaHolderName" class="form-control">
      </div>
      <div class="form-group">
        <label for="poaHolderContact">Contact no. of POA Holder:</label>
        <input type="tel" id="poaHolderContact" name="poaHolderContact" class="form-control">
      </div>
      <div class="form-group">
        <label for="directorRelative">Is Applicant / co-Applicant / Guarantor a director or a specified near relative of any director (including Chairman and Managing Director) in another bank or specified financial institution?</label>
        <div>
          <label><input type="radio" name="directorRelative" value="yes"> Yes</label>
          <label><input type="radio" name="directorRelative" value="no"> No</label>
        </div>
      </div>
      <div class="form-group">
        <label for="directorRelativeBank">Name of the Chairman/MD or other director:</label>
        <input type="text" id="directorRelativeBank" name="directorRelativeBank" class="form-control">
      </div>
      <div class="form-group">
        <label for="otherBank">Indicate Name of Bank/ Subsidiary/ Schedule co-operative Banks/ Trustees of Mutual Fund/ Venture Capital Fund:</label>
        <input type="text" id="otherBank" name="otherBank" class="form-control">
      </div>
      <div class="form-group">
        <h5>EMPLOYMENT DETAILS:</h5>
        <label for="incomeConsidered">Is income considered for loan eligibility?</label>
        <div>
          <label><input type="radio" name="incomeConsidered" value="yes"> Yes</label>
          <label><input type="radio" name="incomeConsidered" value="no"> No</label>
        </div>
      </div>
      <div class="form-group">
        <label for="occupation">OCCUPATION:</label>
        <div>
          <label><input type="radio" name="occupation" value="salaried"> Salaried</label>
          <label><input type="radio" name="occupation" value="selfEmployedProfessional"> Self-Employed Professional (Doctor/Engr/Architect/CA)</label>
          <label><input type="radio" name="occupation" value="selfEmployedOther"> Self-Employed Professional other than Doctor/Engr/Architect/CA</label>
          <label><input type="radio" name="occupation" value="business"> Business</label>
          <label><input type="radio" name="occupation" value="agriculturist"> Agriculturist</label>
          <label><input type="radio" name="occupation" value="retired"> Retired</label>
          <label><input type="radio" name="occupation" value="pensioner"> Pensioner</label>
          <label><input type="radio" name="occupation" value="student"> Student</label>
          <label><input type="radio" name="occupation" value="homeMaker"> Home Maker</label>
          <label><input type="radio" name="occupation" value="unemployed"> Unemployed</label>
        </div>
      </div>
      <div class="form-group">
        <h5>SALARIED:</h5>
        <label for="organizationType">Organization Type:</label>
        <select id="organizationType" name="organizationType" class="form-control">
          <option value="centralGovt">Central Govt</option>
          <option value="stateGovt">State Govt</option>
          <option value="quasiGovt">Quasi Govt</option>
          <option value="publicSectorUnits">Public Sector Units</option>
          <option value="defence">Defence</option>
          <option value="corporates">Corporates</option>
          <option value="otherInstitutions">Other Institutions</option>
        </select>
      </div>
      <div class="form-group">
        <label for="employmentStatus">Employment Status:</label>
        <select id="employmentStatus" name="employmentStatus" class="form-control">
          <option value="permanent">Permanent</option>
          <option value="contractual">Contractual</option>
          <option value="retainership">Retainership</option>
          <option value="partTime">Part Time</option>
        </select>
      </div>
      <div class="form-group">
        <label for="workExperience">Total work experience:</label>
        <div>
          <input type="number" id="workExperienceYears" name="workExperienceYears" class="form-control" min="0" placeholder="Years">
          <input type="number" id="workExperienceMonths" name="workExperienceMonths" class="form-control" min="0" placeholder="Months">
        </div>
      </div>
      <div class="form-group">
        <label for="dateOfRetirement">Date Of Retirement:</label>
        <input type="date" id="dateOfRetirement" name="dateOfRetirement" class="form-control">
      </div>
      <div class="form-group">
        <label for="employerName">Employer's Name:</label>
        <input type="text" id="employerName" name="employerName" class="form-control">
      </div>
      <div class="form-group">
        <label for="industry">Industry:</label>
        <input type="text" id="industry" name="industry" class="form-control">
      </div>
      <div class="form-group">
        <label for="grossMonthlyIncome">Gross Monthly income:</label>
        <input type="number" id="grossMonthlyIncome" name="grossMonthlyIncome" class="form-control" min="0">
      </div>
      <div class="form-group">
        <label for="netMonthlyIncome">Net Monthly Income:</label>
        <input type="number" id="netMonthlyIncome" name="netMonthlyIncome" class="form-control" min="0">
      </div>
      <div class="form-group">
        <label for="checkoffFacility">Does Employer have check-off facility?</label>
        <div>
          <label><input type="radio" name="checkoffFacility" value="yes"> Yes</label>
          <label><input type="radio" name="checkoffFacility" value="no"> No</label>
        </div>
      </div>
      <div class="form-group">
        <label for="previousEmployerName">Previous Employer's Name:</label>
        <input type="text" id="previousEmployerName" name="previousEmployerName" class="form-control">
      </div>
      <div class="form-group">
        <label for="previousEmploymentDuration">Duration of Previous Employment:</label>
        <div>
          <input type="number" id="previousEmploymentYears" name="previousEmploymentYears" class="form-control" min="0" placeholder="Years">
          <input type="number" id="previousEmploymentMonths" name="previousEmploymentMonths" class="form-control" min="0" placeholder="Months">
        </div>
      </div>
      <div class="form-group">
        <label for="professionalQualification">Professional Qualification:</label>
        <input type="text" id="professionalQualification" name="professionalQualification" class="form-control">
      </div>
      <div class="form-group">
        <h5>SELF-EMPLOYED PROFESSIONAL:</h5>
        <label for="natureOfBusiness">Nature of Business:</label>
        <input type="text" id="natureOfBusiness" name="natureOfBusiness" class="form-control">
      </div>
      <div class="form-group">
        <label for="professionalExperience">Total Professional Experience:</label>
        <div>
          <input type="number" id="professionalExperienceYears" name="professionalExperienceYears" class="form-control" min="0" placeholder="Years">
          <input type="number" id="professionalExperienceMonths" name="professionalExperienceMonths" class="form-control" min="0" placeholder="Months">
        </div>
      </div>
      <div class="form-group">
        <label for="grossAnnualReceipts">Gross Annual Receipts:</label>
        <input type="number" id="grossAnnualReceipts" name="grossAnnualReceipts" class="form-control" min="0">
      </div>
      <div class="form-group">
        <label for="netAnnualReceipts">Net Annual Receipts:</label>
        <input type="number" id="netAnnualReceipts" name="netAnnualReceipts" class="form-control" min="0">
      </div>
      <div class="form-group">
        <label for="lastFinancialYearIncome">Income for last Financial Year:</label>
        <input type="number" id="lastFinancialYearIncome" name="lastFinancialYearIncome" class="form-control" min="0">
      </div>
      <div class="form-group">
        <label for="turnover">Turnover:</label>
        <input type="number" id="turnover" name="turnover" class="form-control" min="0">
      </div>
      <div class="form-group">
        <h5>SELF-EMPLOYED OTHER THAN DOCTOR/ENG/ARCH/CA:</h5>
        <label for="otherBusinessType">Other Business Type:</label>
        <input type="text" id="otherBusinessType" name="otherBusinessType" class="form-control">
      </div>
      <div class="form-group">
        <label for="businessExperience">Total Business Experience:</label>
        <div>
          <input type="number" id="businessExperienceYears" name="businessExperienceYears" class="form-control" min="0" placeholder="Years">
          <input type="number" id="businessExperienceMonths" name="businessExperienceMonths" class="form-control" min="0" placeholder="Months">
        </div>
      </div>
      <div class="form-group">
        <label for="incomeSource">Source of Income:</label>
        <textarea id="incomeSource" name="incomeSource" class="form-control" rows="3"></textarea>
      </div>
      <div class="form-group">
        <h5>BUSINESS:</h5>
        <label for="businessType">Type of Business:</label>
        <input type="text" id="businessType" name="businessType" class="form-control">
      </div>
      <div class="form-group">
        <label for="businessDuration">Duration of Business:</label>
        <div>
          <input type="number" id="businessYears" name="businessYears" class="form-control" min="0" placeholder="Years">
          <input type="number" id="businessMonths" name="businessMonths" class="form-control" min="0" placeholder="Months">
        </div>
      </div>
      <div class="form-group">
        <label for="retirementAge">Expected Retirement Age:</label>
        <input type="number" id="retirementAge" name="retirementAge" class="form-control" min="0">
      </div>
      <div class="form-group">
        <label for="monthlyPensionIncome">Monthly Pension Income:</label>
        <input type="number" id="monthlyPensionIncome" name="monthlyPensionIncome" class="form-control" min="0">
      </div>
      <div class="form-group">
        <label for="pensionAccount">Pension Account No:</label>
        <input type="text" id="pensionAccount" name="pensionAccount" class="form-control">
      </div>
      <div class="form-group">
        <label for="incomeProofAvailable">Income Proof Available:</label>
        <div>
          <label><input type="checkbox" name="incomeProofAvailable" value="salarySlip"> Salary Slip</label>
          <label><input type="checkbox" name="incomeProofAvailable" value="bankStatement"> Bank Statement</label>
          <label><input type="checkbox" name="incomeProofAvailable" value="itr"> ITR</label>
        </div>
      </div>
      <h5>NON-SALARIED:</h5>
      <div class="form-group">
        <label for="workExperience">Work Experience In Business / Profession:</label>
        <div>
          <input type="number" id="workExperienceYears" name="workExperienceYears" class="form-control" min="0" placeholder="Years">
          <input type="number" id="workExperienceMonths" name="workExperienceMonths" class="form-control" min="0" placeholder="Months">
        </div>
      </div>
      <div class="form-group">
        <label for="netProfitLastTwoYears">Net Profit Earned In Last Two Years:</label>
        <div>
          <label><input type="radio" name="netProfitLastTwoYears" value="yes"> Yes</label>
          <label><input type="radio" name="netProfitLastTwoYears" value="no"> No</label>
        </div>
      </div>
      <div class="form-group">
        <label for="grossMonthlyIncome">Gross Monthly Income: Rs</label>
        <input type="number" id="grossMonthlyIncome" name="grossMonthlyIncome" class="form-control" min="0">
      </div>
      <div class="form-group">
        <label for="netMonthlyIncome">Net Monthly Income: Rs</label>
        <input type="number" id="netMonthlyIncome" name="netMonthlyIncome" class="form-control" min="0">
      </div>
      <div class="form-group">
        <label for="businessName">Business Name:</label>
        <input type="text" id="businessName" name="businessName" class="form-control">
      </div>
      <div class="form-group">
        <label for="industryName">Industry Name:</label>
        <input type="text" id="industryName" name="industryName" class="form-control">
      </div>
      <div class="form-group">
        <h5>OFFICE / BUSINESS ADDRESS:</h5>
        <label for="businessAddress1">Address 1:</label>
        <input type="text" id="businessAddress1" name="businessAddress1" class="form-control">
      </div>
      <div class="form-group">
        <label for="businessAddress2">Address 2:</label>
        <input type="text" id="businessAddress2" name="businessAddress2" class="form-control">
      </div>
      <div class="form-group">
        <label for="businessAddress3">Address 3:</label>
        <input type="text" id="businessAddress3" name="businessAddress3" class="form-control">
      </div>
      <div class="form-group">
        <label for="businessVillage">Village:</label>
        <input type="text" id="businessVillage" name="businessVillage" class="form-control">
      </div>
      <div class="form-group">
        <label for="businessCity">City:</label>
        <input type="text" id="businessCity" name="businessCity" class="form-control">
      </div>
      <div class="form-group">
        <label for="businessDistrict">District:</label>
        <input type="text" id="businessDistrict" name="businessDistrict" class="form-control">
      </div>
      <div class="form-group">
        <label for="businessState">State:</label>
        <input type="text" id="businessState" name="businessState" class="form-control">
      </div>
      <div class="form-group">
        <label for="businessCountry">Country:</label>
        <input type="text" id="businessCountry" name="businessCountry" class="form-control">
      </div>
      <div class="form-group">
        <label for="businessPinCode">Pin Code:</label>
        <input type="text" id="businessPinCode" name="businessPinCode" class="form-control">
      </div>
      <div class="form-group">
        <label for="businessTelephone">Telephone (Landline):</label>
        <input type="text" id="businessTelephone" name="businessTelephone" class="form-control">
      </div>
      <div class="form-group">
        <label for="businessMobile">Mobile:</label>
        <input type="text" id="businessMobile" name="businessMobile" class="form-control">
      </div>

      <h5>SALARY / BUSINESS ACCOUNTS DETAILS:</h5>
      <table class="table">
        <thead>
          <tr>
            <th>Account Type</th>
            <th>IFSC Code</th>
            <th>Bank Name</th>
            <th>Branch Name</th>
            <th>Account Number</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td><input type="text" name="accountType1" class="form-control"></td>
            <td><input type="text" name="ifscCode1" class="form-control"></td>
            <td><input type="text" name="bankName1" class="form-control"></td>
            <td><input type="text" name="branchName1" class="form-control"></td>
            <td><input type="text" name="accountNumber1" class="form-control"></td>
          </tr>
          <tr>
            <td><input type="text" name="accountType2" class="form-control"></td>
            <td><input type="text" name="ifscCode2" class="form-control"></td>
            <td><input type="text" name="bankName2" class="form-control"></td>
            <td><input type="text" name="branchName2" class="form-control"></td>
            <td><input type="text" name="accountNumber2" class="form-control"></td>
          </tr>
        </tbody>
      </table>

      <h5>EXISTING LOANS (IF ANY):</h5>
      <table class="table">
        <thead>
          <tr>
            <th>Loan Account No.</th>
            <th>Bank / FI</th>
            <th>Product Name</th>
            <th>Sanctioned Amount</th>
            <th>Present Outstanding</th>
            <th>EMI</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td><input type="text" name="loanAccountNo1" class="form-control"></td>
            <td><input type="text" name="loanBank1" class="form-control"></td>
            <td><input type="text" name="loanProductName1" class="form-control"></td>
            <td><input type="number" name="loanSanctionedAmount1" class="form-control" min="0"></td>
            <td><input type="number" name="loanOutstandingAmount1" class="form-control" min="0"></td>
            <td><input type="number" name="loanEMI1" class="form-control" min="0"></td>
          </tr>
          <tr>
            <td><input type="text" name="loanAccountNo2" class="form-control"></td>
            <td><input type="text" name="loanBank2" class="form-control"></td>
            <td><input type="text" name="loanProductName2" class="form-control"></td>
            <td><input type="number" name="loanSanctionedAmount2" class="form-control" min="0"></td>
            <td><input type="number" name="loanOutstandingAmount2" class="form-control" min="0"></td>
            <td><input type="number" name="loanEMI2" class="form-control" min="0"></td>
          </tr>
        </tbody>
      </table>

      <h5>FORM C: LOAN DETAILS</h5>
      <div class="form-group">
        <label for="loanPurpose">Purpose:</label>
        <div>
          <label><input type="checkbox" name="loanPurpose" value="plotPurchase"> Purchase of Plot for construction of a House</label><br>
          <label><input type="checkbox" name="loanPurpose" value="newHousePurchase"> Purchase of a new House / Flat</label><br>
          <label><input type="checkbox" name="loanPurpose" value="oldHousePurchase"> Purchase of old House / Flat</label><br>
          <label><input type="checkbox" name="loanPurpose" value="newHouseConstruction"> Construction of a new House / Flat</label><br>
          <label><input type="checkbox" name="loanPurpose" value="extension"> Extension of existing old House / Flat</label><br>
          <label><input type="checkbox" name="loanPurpose" value="repairRenovation"> Repair or Renovation of an existing old House / Flat</label><br>
          <label><input type="checkbox" name="loanPurpose" value="takeover"> Takeover of Home Loans from other Banks / HFCs / FIs</label><br>
          <label><input type="checkbox" name="loanPurpose" value="reimbursement"> Reimbursement of investment made for House / Flat / Construction of house / Repair and Extension of house</label>
        </div>
      </div>
      <div class="form-group">
        <label for="requestedLoanAmount">Requested Loan Amount: Rs</label>
        <input type="number" id="requestedLoanAmount" name="requestedLoanAmount" class="form-control" min="0">
      </div>
      <div class="form-group">
        <label for="repaymentMode">Repayment Mode:</label>
        <div>
          <label><input type="radio" name="repaymentMode" value="salaryAccount"> Standing instruction linked to salary accounts</label><br>
          <label><input type="radio" name="repaymentMode" value="otherAccount"> Standing instruction linked to other accounts</label><br>
          <label><input type="radio" name="repaymentMode" value="echSalary"> ECH / NACH linked to salary account</label><br>
          <label><input type="radio" name="repaymentMode" value="echOtherAccount"> ECH / NACH linked to other accounts</label><br>
          <label><input type="radio" name="repaymentMode" value="checkoff"> Checkoff</label>
        </div>
      </div>
      <div class="form-group">
        <label for="loanTenure">Tenure: Months</label>
        <input type="number" id="loanTenure" name="loanTenure" class="form-control" min="0">
      </div>
      <div class="form-group">
        <label for="existingEMI">Existing EMI (if any): Rs</label>
        <input type="number" id="existingEMI" name="existingEMI" class="form-control" min="0">
      </div>
<%!createAccount c; %>
<%
if(!session.isNew()) {
	c=(createAccount)session.getAttribute("c");
	request.setAttribute("c", c);
}
%>
      <button type="submit" class="btn btn-primary">Submit</button>     

    </form>
  </div>
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script>
    $(document).ready(function() {
      $("#relationship").change(function() {
        if ($(this).val() === "others") {
          $("#relationshipOther").show();
        } else {
          $("#relationshipOther").hide();
        }
      });
    });
  </script>
</body>
</html>