.class public interface abstract Lccsancom/vungle/warren/persistence/DatabaseHelper$DatabaseFactory;
.super Ljava/lang/Object;
.source "DatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/vungle/warren/persistence/DatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DatabaseFactory"
.end annotation


# virtual methods
.method public abstract create(Lccsanandroid/database/sqlite/SQLiteDatabase;)V
.end method

.method public abstract deleteData(Lccsanandroid/database/sqlite/SQLiteDatabase;)V
.end method

.method public abstract onDowngrade(Lccsanandroid/database/sqlite/SQLiteDatabase;II)V
.end method

.method public abstract onUpgrade(Lccsanandroid/database/sqlite/SQLiteDatabase;II)V
.end method
