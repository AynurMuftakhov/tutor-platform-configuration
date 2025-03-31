<#macro emailLayout>
    <!DOCTYPE html>
    <html>
    <head>
        <meta charset="utf-8">
        <style>
            body {
                font-family: "Helvetica", "Arial", sans-serif;
                background-color: #f9f9f9;
                color: #333;
                padding: 30px;
            }
            .email-container {
                max-width: 600px;
                margin: auto;
                background: #ffffff;
                padding: 30px;
                border-radius: 10px;
                box-shadow: 0 4px 12px rgba(0,0,0,0.05);
            }
            h3 {
                color: #3f51b5;
                margin-top: 0;
            }
        </style>
    </head>
    <body>
    <div class="email-container">
        <@body/>
    </div>
    </body>
    </html>
</#macro>