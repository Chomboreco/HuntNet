/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.huntnet.test;

import com.huntnet.entity.Device;
import com.huntnet.managers.DeviceManager;
import com.huntnet.managers.SNMPManager;
import java.io.IOException;
import org.snmp4j.smi.OID;

/**
 *
 * @author eddy_
 */
public class Test {
    
        public static void main(String[] args) throws IOException {
        /**
         * Port 161 is used for Read and Other operations Port 162 is used for the trap generation
         */
//        SNMPManager client = new SNMPManager("udp:127.0.0.1/161");
//        client.start();
//        /**
//         * OID - .1.3.6.1.2.1.1.1.0 => SysDec OID - .1.3.6.1.2.1.1.5.0 => SysName => MIB explorer will be usefull here, as discussed in previous article
//         */
//        String sysDescr = client.getAsString(new OID("1.3.6.1.2.1.1.1.0"));
//        System.out.println(sysDescr);

            DeviceManager dm = new DeviceManager("127.0.0.1");
            Device device = dm.getDevice();
            
            System.out.println("Os: " + device.getOs());
    }
}
