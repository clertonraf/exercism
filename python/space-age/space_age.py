class SpaceAge:

    def __init__(self, seconds):
        self.seconds = seconds

    def __cal_planet_years(self, planet = 1.0):
        EARTH_YEARS = 31557600
        return round(self.seconds / (EARTH_YEARS * planet), 2)
    
    def on_earth(self):
        return self.__cal_planet_years()

    def on_mercury(self):
        return self.__cal_planet_years(0.2408467)

    def on_venus(self):
        return self.__cal_planet_years(0.61519726)

    def on_mars(self):
        return self.__cal_planet_years(1.8808158)

    def on_jupiter(self):
        return self.__cal_planet_years(11.862615)

    def on_saturn(self):
        return self.__cal_planet_years(29.447498)

    def on_uranus(self):
        return self.__cal_planet_years(84.016846)

    def on_neptune(self):
        return self.__cal_planet_years(164.79132)
