package com.bkmovieapplication.entity;

import com.bkmovieapplication.entity.Bookmarked;
import com.bkmovieapplication.entity.Comment;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.10.v20211216-rNA", date="2022-12-05T02:51:37")
@StaticMetamodel(User.class)
public class User_ { 

    public static volatile SingularAttribute<User, String> passWord;
    public static volatile CollectionAttribute<User, Comment> commentCollection;
    public static volatile SingularAttribute<User, String> phoneNum;
    public static volatile SingularAttribute<User, String> userName;
    public static volatile CollectionAttribute<User, Bookmarked> bookmarkedCollection;
    public static volatile SingularAttribute<User, Integer> userId;
    public static volatile SingularAttribute<User, String> email;

}