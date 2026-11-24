
# MLOps Task 2

## 1. Port Forwarding


<img width="1689" height="284" alt="Port forwarding" src="https://github.com/user-attachments/assets/83e003f3-8c8f-47d9-813d-a88a8c7f899f" />
Port-forwarding the NGINX Ingress Controller to access the application locally.

## 2. Application Running in the Browser


<img width="1206" height="905" alt="Application running in browser" src="https://github.com/user-attachments/assets/e466ce3d-aaf1-4b36-903a-c9cf1ca8a30b" />
The application running in the browser, displaying messages stored in the database.


## 3. Testing Database Persistence


<img width="1422" height="394" alt="Stopping SQL Pod" src="https://github.com/user-attachments/assets/f8e2ad31-fa5c-40c2-acb2-4c060bb07489" />
Stopping the SQL Pod to test database persistence.


<img width="1206" height="905" alt="Database unavailable" src="https://github.com/user-attachments/assets/e020c843-1a8b-4b7d-ad83-970bc30d77c0" />
The database is temporarily unavailable while the SQL Pod is down.


<img width="1275" height="363" alt="Restarting SQL Pod" src="https://github.com/user-attachments/assets/2651e963-9bdf-45ba-a440-5c40ebfe4ca0" />
Restarting the SQL Pod.


<img width="1226" height="873" alt="image" src="https://github.com/user-attachments/assets/41a63a82-141f-412b-9ce0-1f01fc249654" />
The previously stored data is still intact after the SQL Pod restarts, confirming that database persistence is working

## 4. API Endpoints

### `/api/info`

The API information endpoint, displaying details about the running application and its database connection

<img width="1920" height="285" alt="API info" src="https://github.com/user-attachments/assets/9fc920ad-23bd-4f08-b74d-5772a2931a64" />

### `/api/messages`

The messages endpoint, displaying the messages retrieved from the database

<img width="1920" height="285" alt="API messages" src="https://github.com/user-attachments/assets/dfe742f3-d4e9-4511-a81b-72e6ad38f383" />

## 5. Persistent Volume and Persistent Volume Claim

PV and PVC information, showing their status and binding

<img width="1920" height="188" alt="PV and PVC information" src="https://github.com/user-attachments/assets/c0127d8f-a562-4282-b714-9d7f712aa268" />
