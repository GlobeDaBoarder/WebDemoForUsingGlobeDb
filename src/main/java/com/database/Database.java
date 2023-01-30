package com.database;

import base.database.AutoCommitDatabaseFactory;
import base.database.CollectionOfDatabase;

public class Database {

    private static base.database.Database database;
    private static CollectionOfDatabase usersCollection;
    private Database() {
    }

    private static void init(){
        database = new AutoCommitDatabaseFactory("D:\\")
                .createDatabase("db1");
        usersCollection = database.createCollection("users");
    }

    public static base.database.Database getDatabaseInstance(){
        if (database == null){
            init();
        }

        return database;
    }

    public static CollectionOfDatabase getUserCollectionInstance(){
        if(database == null){
            init();
        }

        return usersCollection;
    }
}
