import smtplib, ssl
port = 465  
smtp_server = "smtp.gmail.com"
sender_email = "mandal.a.2607@gmail.com"  
receiver_email = "password@123"  
password =""
message = "Due to some reason , container FAILED"
context = ssl.create_default_context()
with smtplib.SMTP_SSL(smtp_server, port, context=context) as server:
    server.login(sender_email, password)
    server.sendmail(sender_email, receiver_email, message)
