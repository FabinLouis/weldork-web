package com.weldork.dao;

import com.weldork.model.Appointment;
import org.hibernate.SessionFactory;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
public class AppointmentDaoImpl implements AppointmentDao {

    @Autowired
    private SessionFactory sessionFactory;

    @Transactional
    @Override
    public void save(Appointment appointment) {
        sessionFactory.getCurrentSession().persist(appointment);
    }

    @Transactional
    @Override
    public List<Appointment> getAllPending() {
        return sessionFactory.getCurrentSession()
            .createQuery("FROM Appointment WHERE status = 'Pending'", Appointment.class)
            .getResultList();
    }

    @Transactional
    @Override
    public void updateStatus(int id, String status, double fee) {
        Session session = sessionFactory.getCurrentSession();
        Appointment appt = session.get(Appointment.class, id);
        if (appt != null) {
            appt.setStatus(status);
            if ("Accepted".equalsIgnoreCase(status)) {
                appt.setFee(fee);
            }
        }
    }

    @Transactional
    @Override
    public List<Appointment> getByEmail(String email) {
        return sessionFactory.getCurrentSession()
            .createQuery("FROM Appointment WHERE email = :email", Appointment.class)
            .setParameter("email", email)
            .getResultList();
    }

    @Transactional
    @Override
    public void markAsPaid(int id) {
        Session session = sessionFactory.getCurrentSession();
        Appointment appt = session.get(Appointment.class, id);
        if (appt != null && "Accepted".equalsIgnoreCase(appt.getStatus())) {
            appt.setStatus("Paid");
        }
    }
    @Transactional
    public List<Appointment> getAllPaid() {
        return sessionFactory.getCurrentSession()
            .createQuery("FROM Appointment WHERE status = 'Paid'", Appointment.class)
            .getResultList();
    }
    @Override
    public List<Appointment> getAllAppointments() {
        return sessionFactory.getCurrentSession()
            .createQuery("FROM Appointment", Appointment.class)
            .getResultList();
    }


}

