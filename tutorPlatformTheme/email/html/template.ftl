<#macro emailLayout>
    <!DOCTYPE html>
    <html>
<head>
    <meta charset="UTF-8">
    <style>
        body {
            font-family: 'Helvetica Neue', Arial, sans-serif;
            background-color: #f9f9f9;
            padding: 40px;
            color: #333;
        }
        .container {
            max-width: 600px;
            background: white;
            padding: 32px;
            border-radius: 10px;
            margin: auto;
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
        }
        .title {
            font-size: 22px;
            color: #3F51B5;
            font-weight: bold;
        }
        .btn {
            display: inline-block;
            margin-top: 20px;
            background-color: #3F51B5;
            color: #fff;
            text-decoration: none;
            padding: 14px 26px;
            border-radius: 8px;
            font-weight: 600;
        }
        .footer {
            margin-top: 40px;
            font-size: 13px;
            color: #999;
        }
    </style>
</head>
    <body>
    <div class="email-container">
        <#nested>
    </div>
    </body>
    </html>
</#macro>