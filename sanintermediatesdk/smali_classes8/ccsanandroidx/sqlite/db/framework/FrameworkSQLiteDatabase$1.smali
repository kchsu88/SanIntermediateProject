.class Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase$1;
.super Ljava/lang/Object;
.source "FrameworkSQLiteDatabase.java"

# interfaces
.implements Lccsanandroid/database/sqlite/SQLiteDatabase$CursorFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->query(Lccsanandroidx/sqlite/db/SupportSQLiteQuery;)Lccsanandroid/database/Cursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase;

.field final synthetic val$supportQuery:Lccsanandroidx/sqlite/db/SupportSQLiteQuery;


# direct methods
.method constructor <init>(Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase;Lccsanandroidx/sqlite/db/SupportSQLiteQuery;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase;

    .line 161
    iput-object p1, p0, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase$1;->this$0:Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase;

    iput-object p2, p0, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase$1;->val$supportQuery:Lccsanandroidx/sqlite/db/SupportSQLiteQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newCursor(Lccsanandroid/database/sqlite/SQLiteDatabase;Lccsanandroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Lccsanandroid/database/sqlite/SQLiteQuery;)Lccsanandroid/database/Cursor;
    .locals 2
    .param p1, "db"    # Lccsanandroid/database/sqlite/SQLiteDatabase;
    .param p2, "masterQuery"    # Lccsanandroid/database/sqlite/SQLiteCursorDriver;
    .param p3, "editTable"    # Ljava/lang/String;
    .param p4, "query"    # Lccsanandroid/database/sqlite/SQLiteQuery;

    .line 165
    iget-object v0, p0, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase$1;->val$supportQuery:Lccsanandroidx/sqlite/db/SupportSQLiteQuery;

    new-instance v1, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteProgram;

    invoke-direct {v1, p4}, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteProgram;-><init>(Lccsanandroid/database/sqlite/SQLiteProgram;)V

    invoke-interface {v0, v1}, Lccsanandroidx/sqlite/db/SupportSQLiteQuery;->bindTo(Lccsanandroidx/sqlite/db/SupportSQLiteProgram;)V

    .line 166
    new-instance v0, Lccsanandroid/database/sqlite/SQLiteCursor;

    invoke-direct {v0, p2, p3, p4}, Lccsanandroid/database/sqlite/SQLiteCursor;-><init>(Lccsanandroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Lccsanandroid/database/sqlite/SQLiteQuery;)V

    return-object v0
.end method
