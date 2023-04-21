from django.urls import path,include
from django.contrib import admin
from basicforms.views import contact, success,view_data

urlpatterns = [
    path('', contact, name='contact'),
    path('success/', success, name='success'),
    path('data/',view_data,name='view_data'),
    path('admin/', admin.site.urls),
]
