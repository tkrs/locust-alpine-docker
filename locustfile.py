from locust import HttpLocust, TaskSet

class UserBehavior(TaskSet):

    def on_start(self):
        pass

class WebsiteUser(HttpLocust):
    task_set = UserBehavior
