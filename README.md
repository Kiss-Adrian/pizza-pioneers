# pizza_pioneers

order.ejs:

<!DOCTYPE html>
<html lang="hu">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Rendelés</title>
    <link rel="stylesheet" href="/web_style.css">
    <link rel="stylesheet" href="order_style.css">
    <link rel="icon" type="image/icon" href="images/pizza.ico">
</head>
<body>
    <div class="header">
        <h1>Rendelés</h1>
    </div>
    <div class="container">
        <div class="order-card">
            <form id="order-form">
                </select>
                <label for="quantity">Mennyiség:</label>
                <input type="number" id="quantity" name="quantity" min="1" required>
                <button type="submit">Megrendelés</button>
            </form>
        </div>
    </div>
</body>
</html>
