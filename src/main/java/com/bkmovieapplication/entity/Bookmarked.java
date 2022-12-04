/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.bkmovieapplication.entity;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

/**
 *
 * @author Admin
 */
@Entity
@Table(name = "Bookmarked")
@NamedQueries({
    @NamedQuery(name = "Bookmarked.findAll", query = "SELECT b FROM Bookmarked b"),
    @NamedQuery(name = "Bookmarked.findById", query = "SELECT b FROM Bookmarked b WHERE b.id = :id")})
public class Bookmarked implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "ID")
    private Integer id;
    @JoinColumn(name = "movieid", referencedColumnName = "movieId")
    @ManyToOne
    private String movieid;
    @JoinColumn(name = "userid", referencedColumnName = "userId")
    @ManyToOne
    private Integer userid;

    public Bookmarked() {
    }

    public Bookmarked(Integer id, String movieid, Integer userid) {
        this.id = id;
        this.movieid = movieid;
        this.userid = userid;
    }

    public Bookmarked(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getMovieid() {
        return movieid;
    }

    public void setMovieid(String movieid) {
        this.movieid = movieid;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Bookmarked)) {
            return false;
        }
        Bookmarked other = (Bookmarked) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.bkmovieapplication.entity.Bookmarked[ id=" + id + " ]";
    }

}
