/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.huntnet.entity;

import java.util.Date;

/**
 *
 * @author eddy_
 */
public class Device {

    // CPU
    String processorModel; //--
    String processorManufacturer; //--
    String architecture; //--

    // OS
    String os; //--
    String version; //--

    // User info
    String ip; //--
    String community; //--
    String name; //--

    // Metadata
    Date addedDate; //--
    String systemUpTime; //--

    // Interfaces
    int interfacesNum; //-- 

    public Device() {
    }

    public Device(String processorModel, String processorManufacturer, String architecture, String os, String version, String ip, String community, String name, Date addedDate, String systemUpTime, int interfacesNum) {
        this.processorModel = processorModel;
        this.processorManufacturer = processorManufacturer;
        this.architecture = architecture;
        this.os = os;
        this.version = version;
        this.ip = ip;
        this.community = community;
        this.name = name;
        this.addedDate = addedDate;
        this.systemUpTime = systemUpTime;
        this.interfacesNum = interfacesNum;
    }

    public String getProcessorModel() {
        return processorModel;
    }

    public void setProcessorModel(String processorModel) {
        this.processorModel = processorModel;
    }

    public String getProcessorManufacturer() {
        return processorManufacturer;
    }

    public void setProcessorManufacturer(String processorManufacturer) {
        this.processorManufacturer = processorManufacturer;
    }

    public String getArchitecture() {
        return architecture;
    }

    public void setArchitecture(String architecture) {
        this.architecture = architecture;
    }

    public String getOs() {
        return os;
    }

    public void setOs(String os) {
        this.os = os;
    }

    public String getVersion() {
        return version;
    }

    public void setVersion(String version) {
        this.version = version;
    }

    public String getIp() {
        return ip;
    }

    public void setIp(String ip) {
        this.ip = ip;
    }

    public String getCommunity() {
        return community;
    }

    public void setCommunity(String community) {
        this.community = community;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getAddedDate() {
        return addedDate;
    }

    public void setAddedDate(Date addedDate) {
        this.addedDate = addedDate;
    }

    public String getSystemUpTime() {
        return systemUpTime;
    }

    public void setSystemUpTime(String systemUpTime) {
        this.systemUpTime = systemUpTime;
    }

    public int getInterfacesNum() {
        return interfacesNum;
    }

    public void setInterfacesNum(int interfacesNum) {
        this.interfacesNum = interfacesNum;
    }

}
