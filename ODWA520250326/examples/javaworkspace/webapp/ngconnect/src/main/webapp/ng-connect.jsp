<!DOCTYPE html>
<html>
<head>
    <title>Enquiry Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #4facfe, #00f2fe);
            color: #333;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 600px;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        h1 {
            text-align: center;
            color: #4facfe;
            margin-bottom: 20px;
        }

        label {
            font-weight: bold;
            margin-bottom: 10px;
            display: block;
            color: #555;
        }

        input, textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }

        input:focus, textarea:focus {
            border-color: #4facfe;
            outline: none;
            box-shadow: 0 0 5px rgba(79, 172, 254, 0.6);
        }

        button {
            width: 100%;
            padding: 12px;
            background: #4facfe;
            border: none;
            color: #fff;
            font-size: 18px;
            border-radius: 5px;
            cursor: pointer;
        }

        button:hover {
            background: #00f2fe;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Enquiry Form</h1>
        <form action="${pageContext.request.contextPath}/enquiry" method="post">
            <label for="fullname">Full Name:</label>
            <input type="text" id="fullname" name="fullname" placeholder="Enter your full name" required>
            
            <label for="mobileNo">Mobile Number:</label>
            <input type="tel" id="mobileNo" name="mobileNo" placeholder="Enter your mobile number" required>
            
            <label for="emailAddress">Email Address:</label>
            <input type="email" id="emailAddress" name="emailAddress" placeholder="Enter your email address" required>
            
            <label for="subject">Subject:</label>
            <input type="text" id="subject" name="subject" placeholder="Enter the subject" required>
            
            <label for="message">Message:</label>
            <textarea id="message" name="message" rows="5" placeholder="Type your message here" required></textarea>
            
            <button type="submit">Submit</button>
        </form>
    </div>
</body>
</html>
