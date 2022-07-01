.class Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$1;
.super Ljava/lang/Object;
.source "FrameworkSQLiteOpenHelper.java"

# interfaces
.implements Lccsanandroid/database/DatabaseErrorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;[Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase;Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

.field final synthetic val$dbRef:[Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase;


# direct methods
.method constructor <init>(Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;[Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$1;->val$callback:Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

    iput-object p2, p0, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$1;->val$dbRef:[Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCorruption(Lccsanandroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "dbObj"    # Lccsanandroid/database/sqlite/SQLiteDatabase;

    .line 83
    iget-object v0, p0, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$1;->val$callback:Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

    iget-object v1, p0, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$1;->val$dbRef:[Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase;

    invoke-static {v1, p1}, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->getWrappedDb([Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase;Lccsanandroid/database/sqlite/SQLiteDatabase;)Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;->onCorruption(Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 84
    return-void
.end method
