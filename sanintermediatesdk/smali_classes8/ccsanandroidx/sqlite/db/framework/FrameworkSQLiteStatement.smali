.class Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteStatement;
.super Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteProgram;
.source "FrameworkSQLiteStatement.java"

# interfaces
.implements Lccsanandroidx/sqlite/db/SupportSQLiteStatement;


# instance fields
.field private final mDelegate:Lccsanandroid/database/sqlite/SQLiteStatement;


# direct methods
.method constructor <init>(Lccsanandroid/database/sqlite/SQLiteStatement;)V
    .locals 0
    .param p1, "delegate"    # Lccsanandroid/database/sqlite/SQLiteStatement;

    .line 35
    invoke-direct {p0, p1}, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteProgram;-><init>(Lccsanandroid/database/sqlite/SQLiteProgram;)V

    .line 36
    iput-object p1, p0, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteStatement;->mDelegate:Lccsanandroid/database/sqlite/SQLiteStatement;

    .line 37
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .line 41
    iget-object v0, p0, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteStatement;->mDelegate:Lccsanandroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Lccsanandroid/database/sqlite/SQLiteStatement;->execute()V

    .line 42
    return-void
.end method

.method public executeInsert()J
    .locals 2

    .line 51
    iget-object v0, p0, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteStatement;->mDelegate:Lccsanandroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Lccsanandroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v0

    return-wide v0
.end method

.method public executeUpdateDelete()I
    .locals 1

    .line 46
    iget-object v0, p0, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteStatement;->mDelegate:Lccsanandroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Lccsanandroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    move-result v0

    return v0
.end method

.method public simpleQueryForLong()J
    .locals 2

    .line 56
    iget-object v0, p0, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteStatement;->mDelegate:Lccsanandroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Lccsanandroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public simpleQueryForString()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteStatement;->mDelegate:Lccsanandroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Lccsanandroid/database/sqlite/SQLiteStatement;->simpleQueryForString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
