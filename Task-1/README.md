**Step 1 Create Cluster**  
<img width="1280" height="807" alt="Screenshot from 2026-11-04 23-41-00" src="https://github.com/user-attachments/assets/5458cfdd-e221-4600-9203-0a75c83acd79" />
created the cluster using minikube as instructed with 3 nodes, 2 cpus, 2200 Mbs of memory and calico as the CNI

**Step 2 Created the Namespace**
<img width="977" height="248" alt="Screenshot from 2026-11-04 23-41-44" src="https://github.com/user-attachments/assets/8e37a771-0e5c-40c7-9e4b-64ce198bfe96" />
created the namespace webapp imperatavely

**Step 3 Write the deployment file**
wrote the file using the slides as a reference with 3 replicas, 3 containers inside each pod each with a specific run command

**Step 4 Deploy YAML file**
<img width="1920" height="1080" alt="Screenshot from 2026-11-04 23-54-19" src="https://github.com/user-attachments/assets/92e4dc5b-ff12-4360-b475-feea77429002" />
deployed using kubectl apply -f, this ran 3 replicas each with 3 containers running, used port forwarding to expose the port inside the pod to 
localhost

  <img width="1920" height="1080" alt="Screenshot from 2026-11-04 23-54-24" src="https://github.com/user-attachments/assets/eb148ed5-b28d-42d3-bd02-ff470f244dd0" />
accessing the pod from the exposed port

**Step 5 Making init container fail**
<img width="1181" height="545" alt="Screenshot from 2026-11-05 00-07-02" src="https://github.com/user-attachments/assets/3dd18c36-ff76-4c38-bb68-520c7f47c7b9" />
  <img width="1442" height="977" alt="Screenshot from 2026-11-05 00-09-25" src="https://github.com/user-attachments/assets/f838cfc5-4c1f-4076-bee7-909ac789f0d6" />

created a separate file for the failing container withe the same deployment name then i applied this file, as is shown in the logs one container fails
due to the init not 

ANSWER: 
-the new pod show the status of PENDING<br>
-nginx and time-updater do NOT start as the init container failed<br>
-yes the page is still reachable as there are other replicas that traffic can be routed to<br>


**Step 6 Fixing
**  <img width="1561" height="326" alt="Screenshot from 2026-11-05 00-18-10" src="https://github.com/user-attachments/assets/a895debe-b640-4b64-b6d4-81ea6e64d72e" />
   used the rollback feature to revert to the previous revision

