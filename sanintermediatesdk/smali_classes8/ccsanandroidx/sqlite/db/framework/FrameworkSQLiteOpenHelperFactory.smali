.class public final Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteOpenHelperFactory;
.super Ljava/lang/Object;
.source "FrameworkSQLiteOpenHelperFactory.java"

# interfaces
.implements Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;)Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 4
    .param p1, "configuration"    # Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;

    .line 29
    new-instance v0, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;

    iget-object v1, p1, Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->context:Lccsanandroid/content/Context;

    iget-object v2, p1, Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->name:Ljava/lang/String;

    iget-object v3, p1, Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->callback:Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

    invoke-direct {v0, v1, v2, v3}, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;)V

    return-object v0
.end method
