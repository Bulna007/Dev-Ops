<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PNR Status</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(to right, #4facfe, #00f2fe);
            color: #333;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background: #fff;
            padding: 20px 30px;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
            width: 100%;
            max-width: 500px;
            text-align: center;
        }

        h1 {
            color: #0077b6;
            margin-bottom: 15px;
        }

        .status {
            margin-top: 20px;
            font-size: 1.2rem;
            color: #555;
            text-align: left;
            background: #f1faff;
            padding: 15px;
            border-radius: 8px;
        }

        .pnr-details {
            margin-bottom: 10px;
            font-size: 1rem;
            text-align: left;
        }

        .button {
            margin-top: 20px;
        }

        button {
            background: #00b4d8;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            font-size: 1rem;
            cursor: pointer;
            transition: background 0.3s ease-in-out;
        }

        button:hover {
            background: #0077b6;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>PNR Status</h1>
        <div class="pnr-details">
            <p><strong>PNR Number:</strong> ${pnrNumber}</p>
            <p><strong>Train Name:</strong> ${trainName}</p>
            <p><strong>Boarding Station:</strong> ${source}</p>
            <p><strong>Destination:</strong> ${destination}</p>
        </div>
        <div class="status">
            <p><strong>Status:</strong> ${status}</p>
            <p><strong>Coach & Seat:</strong> ${seatInfo}</p>
            <p><strong>Travel Date:</strong> ${travelDate}</p>
        </div>
        <div class="button">
            <button onclick="window.location.href='/'">Back</button>
        </div>
    </div>
</body>
</html>
