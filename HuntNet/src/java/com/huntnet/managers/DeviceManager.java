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

    public DeviceManager(String ip) {
        client = new SNMPManager("udp:" + ip + "/161");
    }

    public Device getDevice() {
        Device device = new Device();

        try {
            client.start();
            String descryptor = client.getAsString(new OID("1.3.6.1.2.1.1.1.0"));
            
            device.setOs(this.getOs(descryptor));
            device.setProcessorManufacturer(this.getProcessorManufacturer(descryptor));
            device.setArchitecture(this.getArchitecture(descryptor));
            device.setProcessorModel(this.getProcessorModel(descryptor));
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
        String[] s1 = s.split("Model");
        String[] s2 = s1[1].split(" ");
        
        if (s2[1].isEmpty()) {
            return "sin modelo";
        }
        else {
            return s2[1];
        }
    }
}
