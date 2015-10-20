from rest_framework import serializers

from ..models import Line, Station

# Serializers define the API representation.
class LineSerializer(serializers.HyperlinkedModelSerializer):
  class Meta:
    model = Line
    fields = ('id', 'name', 'category')

class StationSerializer(serializers.HyperlinkedModelSerializer):
	class Meta:
		model = Station
		fields = ('id', 'name', 'latitud', 'longitude', 'order', 'line')