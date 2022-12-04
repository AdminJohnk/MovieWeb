/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.bkmovieapplication.entity;

import java.io.Serializable;
import java.util.Collection;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 *
 * @author Admin
 */
@Entity
@Table(name = "Movie")
@NamedQueries({
    @NamedQuery(name = "Movie.findAll", query = "SELECT m FROM Movie m"),
    @NamedQuery(name = "Movie.findByMovieId", query = "SELECT m FROM Movie m WHERE m.movieId = :movieId"),
    @NamedQuery(name = "Movie.findByMovieName", query = "SELECT m FROM Movie m WHERE m.movieName = :movieName"),
    @NamedQuery(name = "Movie.findByMovieStar", query = "SELECT m FROM Movie m WHERE m.movieStar = :movieStar"),
    @NamedQuery(name = "Movie.findByCategory", query = "SELECT m FROM Movie m WHERE m.category = :category"),
    @NamedQuery(name = "Movie.findByDescription", query = "SELECT m FROM Movie m WHERE m.description = :description"),
    @NamedQuery(name = "Movie.findByMovieLink", query = "SELECT m FROM Movie m WHERE m.movieLink = :movieLink"),
    @NamedQuery(name = "Movie.findByImageLink", query = "SELECT m FROM Movie m WHERE m.imageLink = :imageLink")})
public class Movie implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 10)
    @Column(name = "movieId")
    private String movieId;
    @Size(max = 50)
    @Column(name = "movieName")
    private String movieName;
    @Size(max = 10)
    @Column(name = "movieStar")
    private String movieStar;
    @Size(max = 10)
    @Column(name = "category")
    private String category;
    @Size(max = 1000)
    @Column(name = "description")
    private String description;
    @Size(max = 100)
    @Column(name = "movieLink")
    private String movieLink;
    @Size(max = 100)
    @Column(name = "imageLink")
    private String imageLink;
    @OneToMany(mappedBy = "movieid")
    private Collection<Bookmarked> bookmarkedCollection;
    @OneToMany(mappedBy = "movieID")
    private Collection<Comment> commentCollection;

    public Movie() {
    }
    public Movie(String movieId, String movieName, String movieStar, String category, String description, String movieLink, String imageLink){
        this.movieId = movieId;
        this.movieName = movieName;
        this.movieStar = movieStar;
        this.category = category;
        this.description = description;
        this.movieLink = movieLink;
        this.imageLink = imageLink;
    }
    public Movie(String movieId) {
        this.movieId = movieId;
    }

    public String getMovieId() {
        return movieId;
    }

    public void setMovieId(String movieId) {
        this.movieId = movieId;
    }

    public String getMovieName() {
        return movieName;
    }

    public void setMovieName(String movieName) {
        this.movieName = movieName;
    }

    public String getMovieStar() {
        return movieStar;
    }

    public void setMovieStar(String movieStar) {
        this.movieStar = movieStar;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getMovieLink() {
        return movieLink;
    }

    public void setMovieLink(String movieLink) {
        this.movieLink = movieLink;
    }

    public String getImageLink() {
        return imageLink;
    }

    public void setImageLink(String imageLink) {
        this.imageLink = imageLink;
    }

    public Collection<Bookmarked> getBookmarkedCollection() {
        return bookmarkedCollection;
    }

    public void setBookmarkedCollection(Collection<Bookmarked> bookmarkedCollection) {
        this.bookmarkedCollection = bookmarkedCollection;
    }

    public Collection<Comment> getCommentCollection() {
        return commentCollection;
    }

    public void setCommentCollection(Collection<Comment> commentCollection) {
        this.commentCollection = commentCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (movieId != null ? movieId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Movie)) {
            return false;
        }
        Movie other = (Movie) object;
        if ((this.movieId == null && other.movieId != null) || (this.movieId != null && !this.movieId.equals(other.movieId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.bkmovieapplication.entity.Movie[ movieId=" + movieId + " ]";
    }
    
}
