/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.huntnet.test;

import com.huntnet.managers.DeviceManager;
import java.io.IOException;

/**
 *
 * @author eddy_
 */
public class Test {

    public static void main(String[] args) throws IOException {
        DeviceManager dm = new DeviceManager("8.25.100.38", "comunidadSNMPROCIO");
        dm.getDevice();
        System.out.println("Descrptior: " + dm.getDescriptor());
    }
}
