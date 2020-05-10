package com.dailywork.flow.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.dailywork.flow.model.DBFile;

@Repository
public interface DBFileRepository extends JpaRepository<DBFile, String> {

}
