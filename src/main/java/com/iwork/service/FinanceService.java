package com.iwork.service;

import com.iwork.bean.prize;
import com.iwork.bean.staff_wage;

import java.util.List;

public interface FinanceService {
    void prizeAdd(prize p);

    List<prize> showNewPrize(Integer prizeClass);

    void addStaff_Wage(staff_wage sw);

    List<staff_wage> findWages(prize prize);

    List<prize> showPrize(prize prize);

    void deletePrize(String id);

    void deleteStaff_Wage(String id);
}