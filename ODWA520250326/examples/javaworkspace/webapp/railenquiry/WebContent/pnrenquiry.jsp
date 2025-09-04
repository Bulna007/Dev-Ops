<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PNR Enquiry</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(to bottom, #0077b6, #00b4d8);
            color: #fff;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background: #023e8a;
            padding: 20px 30px;
            border-radius: 15px;
            box-shadow: 0 8px 15px rgba(0, 0, 0, 0.2);
            width: 100%;
            max-width: 400px;
            text-align: center;
        }

        h1 {
            color: #90e0ef;
            margin-bottom: 20px;
            font-size: 2rem;
        }

        input[type="text"] {
            width: 100%;
            padding: 10px;
            margin: 15px 0;
            border: none;
            border-radius: 5px;
            font-size: 1rem;
        }

        input[type="text"]:focus {
            outline: none;
            border: 2px solid #00b4d8;
        }

        button {
            background: #90e0ef;
            color: #023e8a;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            font-size: 1rem;
            cursor: pointer;
            margin-top: 10px;
            transition: background 0.3s ease-in-out;
        }

        button:hover {
            background: #00b4d8;
            color: white;
        }

        .footer {
            margin-top: 15px;
            font-size: 0.85rem;
            color: #bbdefb;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>PNR Enquiry</h1>
        <form action="${pageContext.request.contextPath}/enquiry" method="POST">
            <input type="text" name="pnr" id="pnr" placeholder="Enter your PNR Number" required>
            <button type="submit">Enquiry</button>
        </form>
    </div>
</body>
</html>
