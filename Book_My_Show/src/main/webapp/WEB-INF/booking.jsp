
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Booking</title>
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<style>
/* Custom CSS for Booking Form Page */
/* Custom CSS for Booking Form Page */
body {
	background-color: Light beige; /* Light gray background */
	font-family: Arial, sans-serif; /* Default font */
	background:
		url("https://www.salthillhotel.com/wp-content/uploads/2021/09/omniplex.jpeg")
		no-repeat fixed center;
	background-size: cover;
}

.container {
	max-width: 800px; /* Set maximum width for the container */
	margin: 0 auto; /* Center the container horizontally */
}

.mt-5 {
	margin-top: 3rem; /* Add margin space from the top */
}

h1 {
	color: white; /* brown heading color */
}

.form-group {
	margin-bottom: 1.5rem; /* Add margin between form groups */
}

.checkbox-inline {
	margin-right: 5rem; /* Add margin between checkboxes */
	color: white;
}

.btn-primary {
	background-color: red; /* Blue button background color */
	border-color: red; /* Blue button border color */
}

.btn-primary:hover {
	background-color: brown; /* Darker blue on hover */
	border-color: brown; /* Darker blue border on hover */
	color: white; /* White text on hover */
}

.btn-primary:active {
	background-color: brown; /* Brown background color when clicked */
	border-color: brown; /* Brown border color when clicked */
	color: white; /* White text color when clicked */
}

/* Background color for booked seats */
input[type="checkbox"][name="seats"]:disabled {
	background-color: red; /* Yellow background for booked seats */
}

/* Background color for selected meal coupons */
input[type="checkbox"][name="mealCoupons"]:checked+label {
	background-color: #28a745;
	/* Green background for selected meal coupons */
	color: #fff; /* White text for selected meal coupons */
}
</style>

</head>
<body>
	<h1><center><img src="https://imagetolink.com/ib/zjnYGx9Dti.png" style="text-align: center;height:80px;width:200px;margin-top:30px;"></center></h1>
	<!--  <h1 style="text-align: center;" >Booking</h1> 
	 -->
	<div class="container mt-5">

		<form id="bookingForm" action="add-confirm-booking" method="post">
			<div class="form-group">
				<label for="seat" style="color: white;">Select Seat:</label><br>
				<label class="checkbox-inline"> <input type="checkbox"
					name="seats" value="A1"> A1
				</label> <label class="checkbox-inline"> <input type="checkbox"
					name="seats" value="A2"> A2
				</label> <label class="checkbox-inline"> <input type="checkbox"
					name="seats" value="A3"> A3
				</label> <label class="checkbox-inline"> <input type="checkbox"
					name="seats" value="A4"> A4
				</label> <label class="checkbox-inline"> <input type="checkbox"
					name="seats" value="A5"> A5
				</label> <label class="checkbox-inline"> <input type="checkbox"
					name="seats" value="A6"> A6
				</label> <label class="checkbox-inline"> <input type="checkbox"
					name="seats" value="A7"> A7
				</label> <label class="checkbox-inline"> <input type="checkbox"
					name="seats" value="A8"> A8
				</label> <label class="checkbox-inline"> <input type="checkbox"
					name="seats" value="A9"> A9
				</label> <label class="checkbox-inline"> <input type="checkbox"
					name="seats" value="B1"> B1
				</label> <label class="checkbox-inline"> <input type="checkbox"
					name="seats" value="B2"> B2
				</label> <label class="checkbox-inline"> <input type="checkbox"
					name="seats" value="B3"> B3
				</label> <label class="checkbox-inline"> <input type="checkbox"
					name="seats" value="B4"> B4
				</label> <label class="checkbox-inline"> <input type="checkbox"
					name="seats" value="B5"> B5
				</label> <label class="checkbox-inline"> <input type="checkbox"
					name="seats" value="B6"> B6
				</label> <label class="checkbox-inline"> <input type="checkbox"
					name="seats" value="B7"> B7
				</label> <label class="checkbox-inline"> <input type="checkbox"
					name="seats" value="B8"> B8
				</label> <label class="checkbox-inline"> <input type="checkbox"
					name="seats" value="B9"> B9
				</label>
			</div>
			<div class="form-group">
				<label for="mealCoupon" style="color: white;"><strong>Select
						Meal Coupon/Item:</strong></label><br> <label class="checkbox-inline"><input
					type="checkbox" name="mealCoupons" value="Food"> Food</label> <label
					class="checkbox-inline"><input type="checkbox"
					name="mealCoupons" value="Popcorn">&nbsp;Popcorn</label> <label
					class="checkbox-inline"><input type="checkbox"
					name="mealCoupons" value="Soft Drinks">&nbsp;Soft Drinks</label> <label
					class="checkbox-inline"><input type="checkbox"
					name="mealCoupons" value="Ice-Cream">&nbsp;Ice-Cream</label>
			</div>
			<div class="form-group">
				<label for="date" style="color: white;"><strong>Select
						Date:</strong></label> <input type="date" class="form-control" id="date"
					name="date">
			</div>
			<div class="form-group">

				<label for="timeSlot" style="color: white;"><strong>Select
						Time Slot:</strong></label> <select class="form-control" id="timeSlot"
					name="timeSlot">
					<option value="9:30 AM - 12:30 PM">Morning (9:30 AM -
						12:30 PM)</option>
					<option value="1:00 PM - 3:30 PM">Afternoon (1:00 PM -
						3:30 PM)</option>
					<option value="6:00 PM - 9:00 PM">Evening (6:00 PM - 9:00
						PM)</option>
					<option value="10:00 PM - 12:45 AM">Night (10:00 PM -
						12:45 AM)</option>
				</select>
			</div>
			<div class="form-group">
				<label for="amount" style="color: white;"> ₹ Amount to be
					Paid:</label> <input type="text" id="amount" name="amount"
					class="form-control" readonly>
			</div>
			<!-- Hidden input fields to store selected seats and meal coupons -->
			<input type="hidden" id="selectedSeatsInput" name="selectedSeats">
			<input type="hidden" id="selectedMealCouponsInput"
				name="selectedMealCoupons">

			<button type="submit" class="btn btn-danger">Book Tickets</button>
		</form>
		<!-- Hidden input field to store selected seats -->
		<!--  <input type="hidden" id="selectedSeats" name="selectedSeats"> -->
	</div>
	<script>
        document.addEventListener("DOMContentLoaded", function () {
            let seatCheckboxes = document.querySelectorAll('input[name="seats"]');
            const mealCouponCheckboxes = document.querySelectorAll('input[name="mealCoupons"]');
            const amountInput = document.getElementById("amount");
            const selectedSeatsInput = document.getElementById("selectedSeatsInput");

            function calculateAmount() {
                const seatPrice = 50;
                const mealCouponPrice = 20;
                let totalAmount = 0;

                const selectedSeats = [];

                seatCheckboxes.forEach(checkbox => {
                    if (checkbox.checked) {
                        totalAmount += seatPrice;
                        selectedSeats.push(checkbox.value);
                    }
                });

                selectedSeatsInput.value = selectedSeats.join(', ');

                mealCouponCheckboxes.forEach(checkbox => {
                    if (checkbox.checked) {
                        totalAmount += mealCouponPrice;
                    }
                });

                amountInput.value = totalAmount;
            }

            seatCheckboxes.forEach(checkbox => {
                checkbox.addEventListener("change", calculateAmount);
            });

            mealCouponCheckboxes.forEach(checkbox => {
                checkbox.addEventListener("change", calculateAmount);
            });

            calculateAmount();
        });
    </script>
</body>
</html>