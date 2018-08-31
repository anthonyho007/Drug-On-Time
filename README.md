# Drug on Time

A software solution that connects doctors with their patient through web app and mobile apps and facilitate the communications between doctors and patients. 

### Installations

1. Clone or download the project

2. Execute the following command to start the server
    $cd API_SERVER
    $/bin/rail server

3. Open a browser window and navigate to http://localhost:3000

### API Docs / Usage

* post request for client to sign up

    curl -X POST http://localhost:3000/api/v1/client_infos.json -d '{"name":"anthony","email":"anthony@gmail.com","number_id":"123","password":"123"}' -H "Content-Type: application/json"

* get request for client to log in

    curl -X GET http://localhost:3000/api/v1/client_infos.json -d '{"email":"anthony@gmail.com"}'

* post request for giftpoint 

    TBD

* post request to create doctor

    curl -X POST http://localhost:3000/api/v1/doctor_data.json -d '{"name":"may","doctor_u_id":1212,"email":"may@gmail.com","password":"12342"}' -H "Content-Type: application/json"

* get request for doctor signin

    curl -X GET http://localhost:3000/api/v1/doctor_data.json -d '{"email":"may@gmail.com"}'

* get request for get patient medicine list <require number_id >

    curl -X GET http://localhost:3000/api/v1/prescription_data/123.json

* post request for set patient medicine list

    curl -X POST http://localhost:3000/api/v1/prescription_data.json -d '{"pres_name":"alexis","pres_date":"2017-02-01","num_p_day":3,"amount_time":2,"duration":3,"number_id":"123","doctor_u_id":1212}' -H "Content-Type: application/json"