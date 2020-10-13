from locust import HttpUser, TaskSet, task

class MyLocust(HttpUser):
    
    @task(1)
    def get_home_page(self):
        self.client.get("/")

    min_wait = 1000
    max_wait = 5000

    host = "https://nsikan-ci-cd.azurewebsites.net"
