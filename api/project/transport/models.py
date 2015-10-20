from django.db import models


class Line(models.Model):
	CATEGORY_OPTIONS = (
		(1, 'Taxy'),
		(2, 'Camion'),
		(3, 'Calafia')
	)
	name = models.CharField(max_length=140)
	category = models.IntegerField(default=0, choices=CATEGORY_OPTIONS)

	def __unicode__(self):
		return "%s" % (self.name)

class Station(models.Model):
	name = models.CharField(max_length=120)
	latitud = models.CharField(max_length=120)
	longitude = models.CharField(max_length=120)
	line = models.ForeignKey(Line, default=0)
	order = models.IntegerField(default=0)

	def __unicode__(self):
		return "%s" % (self.name)
