from django.contrib import admin
from .models import Line, Station

class LineAdmin(admin.ModelAdmin):
	list_display = ('id', 'name', 'category')

class StationAdmin(admin.ModelAdmin):
	list_display = ('name', 'latitud', 'longitude', 'line', 'order')
	list_filter = ('line',)
	search_fields = ['name']

admin.site.register(Line, LineAdmin)
admin.site.register(Station, StationAdmin)
