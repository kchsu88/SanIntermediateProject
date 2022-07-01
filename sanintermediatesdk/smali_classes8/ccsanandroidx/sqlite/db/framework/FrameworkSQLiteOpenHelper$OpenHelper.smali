.class Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;
.super Lccsanandroid/database/sqlite/SQLiteOpenHelper;
.source "FrameworkSQLiteOpenHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OpenHelper"
.end annotation


# instance fields
.field final mCallback:Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

.field final mDbRef:[Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase;

.field private mMigrated:Z


# direct methods
.method constructor <init>(Lccsanandroid/content/Context;Ljava/lang/String;[Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase;Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;)V
    .locals 6
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "dbRef"    # [Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase;
    .param p4, "callback"    # Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

    .line 79
    iget v4, p4, Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;->version:I

    new-instance v5, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$1;

    invoke-direct {v5, p4, p3}, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$1;-><init>(Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;[Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)V

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroid/database/sqlite/SQLiteDatabase$CursorFactory;ILccsanandroid/database/DatabaseErrorHandler;)V

    .line 86
    iput-object p4, p0, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->mCallback:Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

    .line 87
    iput-object p3, p0, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->mDbRef:[Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase;

    .line 88
    return-void
.end method

.method static getWrappedDb([Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase;Lccsanandroid/database/sqlite/SQLiteDatabase;)Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase;
    .locals 3
    .param p0, "refHolder"    # [Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase;
    .param p1, "sqLiteDatabase"    # Lccsanandroid/database/sqlite/SQLiteDatabase;

    .line 154
    const/4 v0, 0x0

    aget-object v1, p0, v0

    .line 155
    .local v1, "dbRef":Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->isDelegate(Lccsanandroid/database/sqlite/SQLiteDatabase;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 156
    :cond_0
    new-instance v2, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase;

    invoke-direct {v2, p1}, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase;-><init>(Lccsanandroid/database/sqlite/SQLiteDatabase;)V

    aput-object v2, p0, v0

    .line 158
    :cond_1
    aget-object v0, p0, v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 3

    monitor-enter p0

    .line 148
    :try_start_0
    invoke-super {p0}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 149
    iget-object v0, p0, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->mDbRef:[Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    monitor-exit p0

    return-void

    .line 147
    .end local p0    # "this":Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getReadableSupportDatabase()Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 2

    monitor-enter p0

    .line 102
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->mMigrated:Z

    .line 103
    invoke-super {p0}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 104
    .local v0, "db":Lccsanandroid/database/sqlite/SQLiteDatabase;
    iget-boolean v1, p0, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->mMigrated:Z

    if-eqz v1, :cond_0

    .line 106
    invoke-virtual {p0}, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->close()V

    .line 107
    invoke-virtual {p0}, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->getReadableSupportDatabase()Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 109
    .end local p0    # "this":Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;
    :cond_0
    :try_start_1
    invoke-virtual {p0, v0}, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->getWrappedDb(Lccsanandroid/database/sqlite/SQLiteDatabase;)Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    .line 101
    .end local v0    # "db":Lccsanandroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getWrappedDb(Lccsanandroid/database/sqlite/SQLiteDatabase;)Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase;
    .locals 1
    .param p1, "sqLiteDatabase"    # Lccsanandroid/database/sqlite/SQLiteDatabase;

    .line 113
    iget-object v0, p0, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->mDbRef:[Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase;

    invoke-static {v0, p1}, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->getWrappedDb([Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase;Lccsanandroid/database/sqlite/SQLiteDatabase;)Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized getWritableSupportDatabase()Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 2

    monitor-enter p0

    .line 91
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->mMigrated:Z

    .line 92
    invoke-super {p0}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 93
    .local v0, "db":Lccsanandroid/database/sqlite/SQLiteDatabase;
    iget-boolean v1, p0, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->mMigrated:Z

    if-eqz v1, :cond_0

    .line 95
    invoke-virtual {p0}, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->close()V

    .line 96
    invoke-virtual {p0}, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->getWritableSupportDatabase()Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 98
    .end local p0    # "this":Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;
    :cond_0
    :try_start_1
    invoke-virtual {p0, v0}, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->getWrappedDb(Lccsanandroid/database/sqlite/SQLiteDatabase;)Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    .line 90
    .end local v0    # "db":Lccsanandroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onConfigure(Lccsanandroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Lccsanandroid/database/sqlite/SQLiteDatabase;

    .line 129
    iget-object v0, p0, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->mCallback:Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

    invoke-virtual {p0, p1}, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->getWrappedDb(Lccsanandroid/database/sqlite/SQLiteDatabase;)Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;->onConfigure(Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 130
    return-void
.end method

.method public onCreate(Lccsanandroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "sqLiteDatabase"    # Lccsanandroid/database/sqlite/SQLiteDatabase;

    .line 118
    iget-object v0, p0, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->mCallback:Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

    invoke-virtual {p0, p1}, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->getWrappedDb(Lccsanandroid/database/sqlite/SQLiteDatabase;)Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;->onCreate(Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 119
    return-void
.end method

.method public onDowngrade(Lccsanandroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .param p1, "db"    # Lccsanandroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->mMigrated:Z

    .line 135
    iget-object v0, p0, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->mCallback:Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

    invoke-virtual {p0, p1}, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->getWrappedDb(Lccsanandroid/database/sqlite/SQLiteDatabase;)Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;->onDowngrade(Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;II)V

    .line 136
    return-void
.end method

.method public onOpen(Lccsanandroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Lccsanandroid/database/sqlite/SQLiteDatabase;

    .line 140
    iget-boolean v0, p0, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->mMigrated:Z

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->mCallback:Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

    invoke-virtual {p0, p1}, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->getWrappedDb(Lccsanandroid/database/sqlite/SQLiteDatabase;)Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;->onOpen(Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 144
    :cond_0
    return-void
.end method

.method public onUpgrade(Lccsanandroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .param p1, "sqLiteDatabase"    # Lccsanandroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->mMigrated:Z

    .line 124
    iget-object v0, p0, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->mCallback:Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

    invoke-virtual {p0, p1}, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->getWrappedDb(Lccsanandroid/database/sqlite/SQLiteDatabase;)Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lccsanandroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;->onUpgrade(Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;II)V

    .line 125
    return-void
.end method
