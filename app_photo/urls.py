from django.contrib import admin
from django.urls import path, include
from .views import upload, upload_avatar

app_name = "app_photo"

urlpatterns = [
    path("profile/", upload, name="upload"),
    path("profile_avatar/", upload_avatar, name="upload_avatar"),
]
