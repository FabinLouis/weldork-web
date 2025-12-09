package com.weldork.service;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.weldork.dao.AppointmentDao;
import com.weldork.model.Appointment;

@Service
public class AppointmentService {

    @Autowired
    private AppointmentDao appointmentDao;
    @Autowired
    private SessionFactory sessionFactory;

    public List<Appointment> getAppointmentsForEmail(String email) {
        return appointmentDao.getByEmail(email);
    }
    @Transactional
    public List<Appointment> getPaidAppointments(String email) {
        return sessionFactory.getCurrentSession()
            .createQuery("FROM Appointment WHERE email = :email AND status = 'Paid'", Appointment.class)
            .setParameter("email", email)
            .getResultList();
    }
    public List<Appointment> getAllPaidAppointments() {
        return appointmentDao.getAllPaid();
    }
    @Transactional
       public List<Appointment> getAllAppointments() {
        return appointmentDao.getAllAppointments();
    }



}
