
from django.urls import include, path
from apps.user.views import PortfolioView

app_name = 'user'

urlpatterns = [
    path('', PortfolioView.as_view(), name='portfolio-home'),
]