package com.iwork.service;

import com.iwork.bean.Project;
import com.iwork.bean.Project_Type;

import java.util.List;

public interface ProjectsService {
    List<Project> getProjects();

    List<Project> getTypeProjects(String project_type);

    void addProject(Project project);

    void updateProject(Project project);

    Project viewProjectDetail(int projectId);
}
