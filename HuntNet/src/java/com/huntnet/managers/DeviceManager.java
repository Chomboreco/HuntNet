/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.huntnet.managers;

import com.huntnet.entity.Device;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.snmp4j.smi.OID;

/**
 *
 * @author eddy_
 */
public class DeviceManager {

    SNMPManager client;
    String ip;
    String community;
    String descryptor;

    public DeviceManager(String ip, String community) {
        this.ip = ip;
        this.community = community;
        client = new SNMPManager("udp:" + ip + "/161", this.community);
    }

    public Device getDevice() {
        Device device = new Device();

        try {
            client.start();

            descryptor = client.getAsString(new OID("1.3.6.1.2.1.1.1.0"));
            
            System.out.println("Descriptor: " + descryptor);

            if (descryptor != null) {

                String name = client.getAsString(new OID("1.3.6.1.2.1.1.5.0"));
                String sysp = client.getAsString(new OID("1.3.6.1.2.1.1.3.0"));
                String interfaceNum = client.getAsString(new OID("1.3.6.1.2.1.2.1.0"));

                device.setProcessorModel(this.getProcessorModel(descryptor));
                device.setProcessorManufacturer(this.getProcessorManufacturer(descryptor));
                device.setArchitecture(this.getArchitecture(descryptor));

                device.setOs(this.getOs(descryptor));
                device.setVersion(this.getVersion(descryptor));

                device.setIp(this.ip);
                device.setCommunity(this.community);
                device.setName(name);
                device.setSystemUpTime(sysp);
                device.setInterfacesNum(Integer.parseInt(interfaceNum));
            }
            else {
                return null;
            }
        }
        catch (IOException ex) {
            Logger.getLogger(DeviceManager.class.getName()).log(Level.SEVERE, null, ex);
        }

        return device;
    }

    private String getOs(String s) {
        //s = "Hardware: Intel64 Family 6 Model 60 Stepping 3 AT/AT COMPATIBLE - Software: Windows Version 6.3 (Build 10586 Multiprocessor Free)";

        if (s.contains("Windows")) {
            return "Windows";
        }
        else if (s.contains("Linux")) {
            return "Linux";
        }
        else {
            return "Otro";
        }
    }

    private String getProcessorManufacturer(String s) {
        if (s.contains("Intel")) {
            return "Intel";
        }
        else if (s.contains("AMD")) {
            return "AMD";
        }
        else {
            return "Otro";
        }
    }

    private String getArchitecture(String s) {
        if (s.contains("x64") || s.contains("64")) {
            return "x64";
        }
        else if (s.contains("32") || s.contains("x86")) {
            return "x86";
        }
        else {
            return "Otro";
        }
    }

    private String getProcessorModel(String s) {
        String[] s1;
        String s2;

        if (s.isEmpty()) {
            return "Sin información";
        }
        else {
            s1 = s.split("Model");
            //s2 = s1[1].split(" ");
            s2 = "Sin modelo";
        }
        if (s2.isEmpty()) {
            return "sin modelo";
        }
        else {
            return s2;
        }
    }

    private String getVersion(String s) {
//        String[] s1 = s.split("Version");
//        String[] s2 = s1[1].split(" ");
//
//        if (s2[1].isEmpty()) {
//            return "sin version";
//        }
//        else {
//            return s2[1];
//        }
        return "sin versión";
    }
    
    public String getDescriptor(){
        return this.descryptor;
    }
}
