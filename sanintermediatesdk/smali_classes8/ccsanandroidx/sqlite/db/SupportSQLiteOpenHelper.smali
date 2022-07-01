.class public interface abstract Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper;
.super Ljava/lang/Object;
.source "SupportSQLiteOpenHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;,
        Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;,
        Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;
    }
.end annotation


# virtual methods
.method public abstract close()V
.end method

.method public abstract getDatabaseName()Ljava/lang/String;
.end method

.method public abstract getReadableDatabase()Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;
.end method

.method public abstract getWritableDatabase()Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;
.end method

.method public abstract setWriteAheadLoggingEnabled(Z)V
.end method
