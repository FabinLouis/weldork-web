package com.weldork.dao;

import com.weldork.model.Appointment;
import java.util.List;

public interface AppointmentDao {
    void save(Appointment appointment);
    List<Appointment> getAllPending();
    void updateStatus(int id, String status, double fee);
    List<Appointment> getByEmail(String email);
    void markAsPaid(int id);
    List<Appointment> getAllPaid();
    List<Appointment> getAllAppointments();

}

