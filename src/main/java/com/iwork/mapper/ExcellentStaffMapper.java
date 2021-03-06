package com.iwork.mapper;

import com.iwork.bean.Absence;
import com.iwork.bean.Excellent_Stafff;

import java.util.List;

public interface ExcellentStaffMapper {
    void addExcellenceByUserId(Excellent_Stafff stafff);

    List<Excellent_Stafff> selectExcellence();

    void deleteExcellentById(String excellentStaffId);

    void addAbsence(Absence absence);

    List<Absence> selectAbsence();

    void deleteAbsenceById(String id);
}
