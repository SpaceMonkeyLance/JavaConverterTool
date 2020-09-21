package webservices.ConverterToolPackage;

public class Converter {

	  private final double KELVIN = 273.15;
	  private final double POUNT_TO_KILOGRAM = 0.453592;
	  private final double MILE_TO_KILOMETER = 1.60934;

	  /*
	   * Convert kelvin to Celcius
	   */
	  public String convertKelvinToCelcius(double kelvinValue) throws Exception {

	    double celciusValue = kelvinValue - KELVIN;
	    return celciusValue + ""; 
	  }

	  /*
	   * Convert Pounds to Kilograms
	   */
	  public String convertPoundsToKilograms(double poundValue) throws Exception {

	    double kilogramValue = poundValue * POUNT_TO_KILOGRAM;
	    return kilogramValue+"";
	  }

	  /*
	   * Convert Miles to Kilometers
	   */
	  public String convertMilesToKilometers(double milesValue) {

	    double KilometerValue = milesValue * MILE_TO_KILOMETER;
	    return KilometerValue+"";
	  }
	  

}
