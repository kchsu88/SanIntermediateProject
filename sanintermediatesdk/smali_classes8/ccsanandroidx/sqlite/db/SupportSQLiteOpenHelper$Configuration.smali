.class public Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;
.super Ljava/lang/Object;
.source "SupportSQLiteOpenHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Configuration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;
    }
.end annotation


# instance fields
.field public final callback:Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

.field public final context:Lccsanandroid/content/Context;

.field public final name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;)V
    .locals 0
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "callback"    # Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    iput-object p1, p0, Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->context:Lccsanandroid/content/Context;

    .line 321
    iput-object p2, p0, Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->name:Ljava/lang/String;

    .line 322
    iput-object p3, p0, Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->callback:Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

    .line 323
    return-void
.end method

.method public static builder(Lccsanandroid/content/Context;)Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;
    .locals 1
    .param p0, "context"    # Lccsanandroid/content/Context;

    .line 331
    new-instance v0, Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    invoke-direct {v0, p0}, Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;-><init>(Lccsanandroid/content/Context;)V

    return-object v0
.end method
