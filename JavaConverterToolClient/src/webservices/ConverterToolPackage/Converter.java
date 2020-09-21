/**
 * Converter.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package webservices.ConverterToolPackage;

public interface Converter extends java.rmi.Remote {
    public java.lang.String convertPoundsToKilograms(double poundValue) throws java.rmi.RemoteException;
    public java.lang.String convertMilesToKilometers(double milesValue) throws java.rmi.RemoteException;
    public java.lang.String convertKelvinToCelcius(double kelvinValue) throws java.rmi.RemoteException;
}
