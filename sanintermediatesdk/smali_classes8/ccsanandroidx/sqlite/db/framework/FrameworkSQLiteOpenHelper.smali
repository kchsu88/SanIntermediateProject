.class Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;
.super Ljava/lang/Object;
.source "FrameworkSQLiteOpenHelper.java"

# interfaces
.implements Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;
    }
.end annotation


# instance fields
.field private final mDelegate:Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;


# direct methods
.method constructor <init>(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "callback"    # Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->createDelegate(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;)Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->mDelegate:Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;

    .line 33
    return-void
.end method

.method private createDelegate(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;)Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;
    .locals 2
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "callback"    # Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

    .line 36
    const/4 v0, 0x1

    new-array v0, v0, [Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase;

    .line 37
    .local v0, "dbRef":[Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase;
    new-instance v1, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;

    invoke-direct {v1, p1, p2, v0, p3}, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;[Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase;Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;)V

    return-object v1
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 63
    iget-object v0, p0, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->mDelegate:Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;

    invoke-virtual {v0}, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->close()V

    .line 64
    return-void
.end method

.method public getDatabaseName()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->mDelegate:Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;

    invoke-virtual {v0}, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReadableDatabase()Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 1

    .line 58
    iget-object v0, p0, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->mDelegate:Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;

    invoke-virtual {v0}, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->getReadableSupportDatabase()Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public getWritableDatabase()Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 1

    .line 53
    iget-object v0, p0, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->mDelegate:Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;

    invoke-virtual {v0}, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->getWritableSupportDatabase()Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public setWriteAheadLoggingEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 48
    iget-object v0, p0, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->mDelegate:Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;

    invoke-virtual {v0, p1}, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->setWriteAheadLoggingEnabled(Z)V

    .line 49
    return-void
.end method
