# bitrix_docker
Install bitrix
==========================================
Requirements
---------------------------------------
* Windows 10 64-bit: Pro, Enterprise, or Education (Build 16299 or later)

Steps
---
1. Download Docker Desktop on Windows <https://hub.docker.com/editions/community/docker-ce-desktop-windows/>;
2. Install Docker Desktop <https://docs.docker.com/docker-for-windows/install/#install-docker-desktop-on-windows>
3. Start Docker Desktop <https://docs.docker.com/docker-for-windows/install/#start-docker-desktop>;
4. Run PowerShell(Win key + enter PowerShell):
```C:\Users\your_user>```;
5. Clone repository:
```C:\Users\your_user> git clone https://github.com/serega170584/bitrix_docker.git```;
6. Change directory to bitrix_docker:
```cd bitrix_docker```
7. Run docker-compose:
```docker-compose up -d```
8. Open file ```C:\Windows\System32\drivers\etc``` and add: ```127.0.0.1 bitrix-test.ru``` and save;
9. Open ```http://bitrix-test.ru``` in browser and complete steps. Db connection: db. Login and password for db: ```root 123456```;
10. After install in kernel module settings tab ```update``` check ```for developers```.

Notification
--
In repository ```https://github.com/serega170584/bitrix_docker.git``` directory ```local``` -  for modules, directory ```project``` - for new pages.