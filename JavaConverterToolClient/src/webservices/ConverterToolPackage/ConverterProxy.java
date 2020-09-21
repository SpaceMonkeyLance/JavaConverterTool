package webservices.ConverterToolPackage;

public class ConverterProxy implements webservices.ConverterToolPackage.Converter {
  private String _endpoint = null;
  private webservices.ConverterToolPackage.Converter converter = null;
  
  public ConverterProxy() {
    _initConverterProxy();
  }
  
  public ConverterProxy(String endpoint) {
    _endpoint = endpoint;
    _initConverterProxy();
  }
  
  private void _initConverterProxy() {
    try {
      converter = (new webservices.ConverterToolPackage.ConverterServiceLocator()).getConverter();
      if (converter != null) {
        if (_endpoint != null)
          ((javax.xml.rpc.Stub)converter)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
        else
          _endpoint = (String)((javax.xml.rpc.Stub)converter)._getProperty("javax.xml.rpc.service.endpoint.address");
      }
      
    }
    catch (javax.xml.rpc.ServiceException serviceException) {}
  }
  
  public String getEndpoint() {
    return _endpoint;
  }
  
  public void setEndpoint(String endpoint) {
    _endpoint = endpoint;
    if (converter != null)
      ((javax.xml.rpc.Stub)converter)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
    
  }
  
  public webservices.ConverterToolPackage.Converter getConverter() {
    if (converter == null)
      _initConverterProxy();
    return converter;
  }
  
  public java.lang.String convertPoundsToKilograms(double poundValue) throws java.rmi.RemoteException{
    if (converter == null)
      _initConverterProxy();
    return converter.convertPoundsToKilograms(poundValue);
  }
  
  public java.lang.String convertMilesToKilometers(double milesValue) throws java.rmi.RemoteException{
    if (converter == null)
      _initConverterProxy();
    return converter.convertMilesToKilometers(milesValue);
  }
  
  public java.lang.String convertKelvinToCelcius(double kelvinValue) throws java.rmi.RemoteException{
    if (converter == null)
      _initConverterProxy();
    return converter.convertKelvinToCelcius(kelvinValue);
  }
  
  
}