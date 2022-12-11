const form = document.getElementById('form');
const fname = document.getElementById('fname');
const lname = document.getElementById('lname');
const num = document.getElementById('tel');
const email = document.getElementById('email');
const address = document.getElementById('field');

form.addEventListener('submit',e => {
	e.preventDefault();

	validateInputs();
});

const setError = (element, message) => {
	const inputControl = element.parentElement;
	const errorDisplay = inputControl.querySelector('.error');

	errorDisplay.innerText = message;
	inputControl.classList.add('error');
	inputControl.classList.remove('success')
}

const setSuccess = element => {
	const inputControl = element.parentElement;
	const errorDisplay = inputControl.querySelector('.error');

	errorDisplay.innerText = '';
	inputControl.classList.add('success');
	inputControl.classList.remove('error');
};

const isValidNum = num => {
	var re = /^\d{10}$/;
	return re.test(num);
}



const isValidEmail = email => {
	const re = /^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
	return re.test(String(email).toLowerCase());
}

const validateInputs = () => {
	const fnameValue = fname.value.trim();
	const lnameValue = lname.value.trim();
	const emailValue = email.value.trim();
	const numValue = num.value.trim();
	const addressValues = address.value.trim();
	var yes = document.getElementById("yes");
	var no = document.getElementById("no");
	if (fnameValue === '') {
		setError(fname, 'First Name is required');
	} else {
		setSuccess(fname);
	}

	if (lnameValue === '') {
		setError(lname, 'Second Name is required');
	} else {
		setSuccess(lname);
	}

	if (emailValue === '') {
		setError(email, 'Email is required');
	} else if (!isValidEmail(emailValue)) {
		setError(email, 'Provide a valid email address');
	} else {
		setSuccess(email);
	}
	if (addressValues == '') {
		setError(address, 'address is required');
	} else {
		setSuccess(address);
	}
	if (numValue === '') {
		setError(num, 'Please enter your phone number');
	} else if (!isValidNum(numValue)) {
		setError(num, "Provide a valid phone number");
	} else {
		setSuccess(num);
	}

};