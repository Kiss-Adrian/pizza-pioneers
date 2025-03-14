# pizza_pioneers
kosar.ejs:
<!DOCTYPE html>
<html lang="hu">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Kosár</title>
    <link rel="stylesheet" href="/web_style.css">
    <link rel="stylesheet" href="/order_style.css">
    <link rel="icon" type="image/icon" href="images/pizza.ico">
    <script src="/kosarak.js"></script>

</head>
<body onload="Kosárfeltolt()">
    <div class="header">
        <h1>Rendelés</h1>
    </div>
    <div class="container">
        <div class="order-card">
            <h1>Kosár</h1>
            <table>
                <thead>
                    <tr>
                        <th>Termék neve</th>
                        <th>Ár</th>
                        <th>Mennyiség</th>
                        <th>Összeg</th>
                    </tr>
                </thead>
                <tbody id="cart-items">
                    <% if (cart && cart.length > 0) { %>
                        <% cart.forEach(item => { %>
                            <tr>
                                <td><%= item.name %></td>
                                <td><%= item.price %> Ft</td>
                                <td><%= item.quantity %></td>
                                <td><%= item.price * item.quantity %> Ft</td>
                            </tr>
                        <% }); %>
                    <% } else { %>
                        <tr><td colspan="4">A kosár üres.</td></tr>
                    <% } %>
                </tbody>
            </table>
            <h3 id="total-price">Teljes ár: <%= totalPrice %> Ft</h3>
            <br>


            <form id="order-form" method="POST" action="/rendel">                    
                <input type="hidden" name="cart" value="<%= JSON.stringify(cart) %>">
                <button id="order-button" type="submit">Rendelés leadása</button>                
            </form>
            
            <br>

            <form id="clear-cart-form" onsubmit="event.preventDefault(); clearCart();">
                <button type="submit">Kosár ürítése</button>
            </form>
        </div>
    </div>
</body>
</html>

order_style.css:
/* Alap beállítások */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: 'Arial', sans-serif;
    background-color: #fff3e0; /* Pizzás háttér, narancsos árnyalat */
    display: flex;
    flex-direction: column;
    align-items: center;
    min-height: 100vh;
    justify-content: center; /* Középre igazítás */
}

/* Fejléc */
.header {
    width: 100%;
    padding: 20px 0;
    text-align: center;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    margin-bottom: 20px;
}

.header h1 {
    background-color: rgba(0, 0, 0, 0.7); 
    color: orangered; 
    font-size: 2.5em;
    text-align: center; 
    padding: 20px; 
    position: fixed; 
    top: 0; 
    left: 1; 
    width: 100%; 
    z-index: 1000; 
    text-shadow: 1px 1px 2px black, 0 0 1em black, 0 0 0.2em white; 
}

/* Tartalom */
.container {
    width: 100%;
    max-width: 1200px;
    padding: 20px;
    display: flex;
    justify-content: center;
    align-items: center;
    flex-grow: 1;
}

/* Kosár kártya */
.order-card {
    background-color: #fff;
    border-radius: 15px;
    box-shadow: 0 10px 30px rgba(0, 0, 0, 0.5);
    padding: 30px;
    max-width: 600px; 
    width: 100%;
    border: 3px solid #ff5722; 
    text-align: center;
}

/* H1 és H3 színek */
h1, h3 {
    color: #ff5722;
}

#total-price {
    font-size: 1.5em;
    font-weight: bold;
    color: #d32f2f;
}

/* Táblázat dizájn */
table {
    width: 100%;
    margin: 20px 0;
    border-collapse: collapse;
    background: linear-gradient(135deg, #ff7043, #ff5722); /* Színátmenet a táblázatnak */
    border-radius: 10px;
    box-shadow: 0px 8px 15px rgba(0, 0, 0, 0.2); /* Árnyék */
}

/* Fejléc sor */
th, td {
    padding: 12px;
    text-align: center;
    border-bottom: 1px solid #fff; /* Fehér határ a cellák között */
    color: #fff; /* Fehér szín a szövegekhez */
}

/* Fejléc háttér */
th {
    background-color: #ff7043;
    color: white;
}

/* Sorok színei */
td {
    color: #000; /* Fekete szín a táblázat celláiban */
    background-color: rgba(255, 255, 255, 0.8); /* Fehér áttetsző háttér a cellákhoz */
}

/* Páros sorok színe */
tr:nth-child(even) {
    background-color: #ffccbc; 
}

/* Hover hatás */
tr:hover {
    background-color: #ffe0b2; /* Világos narancs a hover hatásra */
}

/* Gombok dizájnja */
#order-form button, #clear-cart-form button {
    padding: 12px 20px;
    background: linear-gradient(135deg, #ff6f00, #ff5722, #d32f2f); 
    color: white;
    border: none;
    border-radius: 8px;
    font-size: 1.2em;
    cursor: pointer;
    transition: background 0.3s ease, transform 0.2s ease;
}

#order-form button:hover, #clear-cart-form button:hover {
    background: linear-gradient(135deg, #ff5722, #ff6f00, #e64a19);
    transform: translateY(-2px);
}

#order-form button:active, #clear-cart-form button:active {
    transform: translateY(0);
}

/* Reszponzív beállítások */
@media (max-width: 600px) {
    .header h1 {
        font-size: 2.5em;
    }

    .order-card {
        padding: 20px;
        max-width: 100%;
    }

    #order-form select, #order-form input {
        padding: 10px;
        font-size: 0.9em;
    }

    #order-form button {
        padding: 10px 15px;
        font-size: 1em;
    }

    table {
        font-size: 0.9em;
    }
}
