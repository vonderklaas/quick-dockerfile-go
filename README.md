# quick start

Build image
```cmd
docker build -t userapi:1.0 .
```

Run the container
```cmd
docker run -p 8080:8080 userapi:1.0
```

Test the API
```cmd
curl http://localhost:8080/users
````
