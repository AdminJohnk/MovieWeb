package com.bkmovieapplication.entity;

import com.bkmovieapplication.entity.Bookmarked;
import com.bkmovieapplication.entity.Comment;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.10.v20211216-rNA", date="2022-12-05T03:11:18")
@StaticMetamodel(Movie.class)
public class Movie_ { 

    public static volatile SingularAttribute<Movie, String> imageLink;
    public static volatile CollectionAttribute<Movie, Comment> commentCollection;
    public static volatile SingularAttribute<Movie, String> description;
    public static volatile SingularAttribute<Movie, String> movieId;
    public static volatile SingularAttribute<Movie, String> movieStar;
    public static volatile SingularAttribute<Movie, String> category;
    public static volatile CollectionAttribute<Movie, Bookmarked> bookmarkedCollection;
    public static volatile SingularAttribute<Movie, String> movieName;
    public static volatile SingularAttribute<Movie, String> movieLink;

}