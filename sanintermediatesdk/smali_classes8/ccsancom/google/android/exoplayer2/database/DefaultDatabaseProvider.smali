.class public final Lccsancom/google/android/exoplayer2/database/DefaultDatabaseProvider;
.super Ljava/lang/Object;
.source "DefaultDatabaseProvider.java"

# interfaces
.implements Lccsancom/google/android/exoplayer2/database/DatabaseProvider;


# instance fields
.field private final sqliteOpenHelper:Lccsanandroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method public constructor <init>(Lccsanandroid/database/sqlite/SQLiteOpenHelper;)V
    .locals 0
    .param p1, "sqliteOpenHelper"    # Lccsanandroid/database/sqlite/SQLiteOpenHelper;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/database/DefaultDatabaseProvider;->sqliteOpenHelper:Lccsanandroid/database/sqlite/SQLiteOpenHelper;

    .line 31
    return-void
.end method


# virtual methods
.method public getReadableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 40
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/database/DefaultDatabaseProvider;->sqliteOpenHelper:Lccsanandroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 35
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/database/DefaultDatabaseProvider;->sqliteOpenHelper:Lccsanandroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method
