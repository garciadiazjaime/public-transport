from rest_framework import viewsets

from ..models import Line, Station
from .serializers import LineSerializer, StationSerializer

# ViewSets define the view behavior.
class LineViewSet(viewsets.ModelViewSet):
  queryset = Line.objects.all()
  serializer_class = LineSerializer

  def get_queryset(self):
    queryset = Line.objects.all()
    return queryset.order_by('id')

class StationViewSet(viewsets.ModelViewSet):
  queryset = Station.objects.none()
  serializer_class = StationSerializer

  def get_queryset(self):
    queryset = Station.objects.none()
    line = self.request.query_params.get('line', None)
    # if line parameter is present /line/ we filter by line
    if line is not None:
      queryset = Station.objects.filter(line=line)
    return queryset.order_by('id')