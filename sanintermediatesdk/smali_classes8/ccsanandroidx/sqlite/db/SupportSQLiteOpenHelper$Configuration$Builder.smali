.class public Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;
.super Ljava/lang/Object;
.source "SupportSQLiteOpenHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mCallback:Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

.field mContext:Lccsanandroid/content/Context;

.field mName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lccsanandroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 355
    iput-object p1, p0, Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->mContext:Lccsanandroid/content/Context;

    .line 356
    return-void
.end method


# virtual methods
.method public build()Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;
    .locals 4

    .line 343
    iget-object v0, p0, Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->mCallback:Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

    if-eqz v0, :cond_1

    .line 347
    iget-object v1, p0, Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->mContext:Lccsanandroid/content/Context;

    if-eqz v1, :cond_0

    .line 351
    new-instance v2, Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;

    iget-object v3, p0, Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->mName:Ljava/lang/String;

    invoke-direct {v2, v1, v3, v0}, Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;)V

    return-object v2

    .line 348
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must set a non-null context to create the configuration."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 344
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must set a callback to create the configuration."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public callback(Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;)Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;
    .locals 0
    .param p1, "callback"    # Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

    .line 372
    iput-object p1, p0, Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->mCallback:Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

    .line 373
    return-object p0
.end method

.method public name(Ljava/lang/String;)Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 363
    iput-object p1, p0, Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->mName:Ljava/lang/String;

    .line 364
    return-object p0
.end method
