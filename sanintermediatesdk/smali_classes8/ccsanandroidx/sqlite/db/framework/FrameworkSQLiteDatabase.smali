.class Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase;
.super Ljava/lang/Object;
.source "FrameworkSQLiteDatabase.java"

# interfaces
.implements Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;


# static fields
.field private static final CONFLICT_VALUES:[Ljava/lang/String;

.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;


# instance fields
.field private final mDelegate:Lccsanandroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 47
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v3, " OR ROLLBACK "

    aput-object v3, v0, v1

    const/4 v1, 0x2

    const-string v3, " OR ABORT "

    aput-object v3, v0, v1

    const/4 v1, 0x3

    const-string v3, " OR FAIL "

    aput-object v3, v0, v1

    const/4 v1, 0x4

    const-string v3, " OR IGNORE "

    aput-object v3, v0, v1

    const/4 v1, 0x5

    const-string v3, " OR REPLACE "

    aput-object v3, v0, v1

    sput-object v0, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->CONFLICT_VALUES:[Ljava/lang/String;

    .line 49
    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lccsanandroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "delegate"    # Lccsanandroid/database/sqlite/SQLiteDatabase;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->mDelegate:Lccsanandroid/database/sqlite/SQLiteDatabase;

    .line 60
    return-void
.end method


# virtual methods
.method public beginTransaction()V
    .locals 1

    .line 69
    iget-object v0, p0, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->mDelegate:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 70
    return-void
.end method

.method public beginTransactionNonExclusive()V
    .locals 1

    .line 74
    iget-object v0, p0, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->mDelegate:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 75
    return-void
.end method

.method public beginTransactionWithListener(Lccsanandroid/database/sqlite/SQLiteTransactionListener;)V
    .locals 1
    .param p1, "transactionListener"    # Lccsanandroid/database/sqlite/SQLiteTransactionListener;

    .line 79
    iget-object v0, p0, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->mDelegate:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Lccsanandroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListener(Lccsanandroid/database/sqlite/SQLiteTransactionListener;)V

    .line 80
    return-void
.end method

.method public beginTransactionWithListenerNonExclusive(Lccsanandroid/database/sqlite/SQLiteTransactionListener;)V
    .locals 1
    .param p1, "transactionListener"    # Lccsanandroid/database/sqlite/SQLiteTransactionListener;

    .line 85
    iget-object v0, p0, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->mDelegate:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Lccsanandroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListenerNonExclusive(Lccsanandroid/database/sqlite/SQLiteTransactionListener;)V

    .line 86
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 315
    iget-object v0, p0, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->mDelegate:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->close()V

    .line 316
    return-void
.end method

.method public compileStatement(Ljava/lang/String;)Lccsanandroidx/sqlite/db/SupportSQLiteStatement;
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;

    .line 64
    new-instance v0, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteStatement;

    iget-object v1, p0, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->mDelegate:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, p1}, Lccsanandroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Lccsanandroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteStatement;-><init>(Lccsanandroid/database/sqlite/SQLiteStatement;)V

    return-object v0
.end method

.method public delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 3
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "whereClause"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/Object;

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DELETE FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " WHERE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "query":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->compileStatement(Ljava/lang/String;)Lccsanandroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v1

    .line 197
    .local v1, "statement":Lccsanandroidx/sqlite/db/SupportSQLiteStatement;
    invoke-static {v1, p3}, Lccsanandroidx/sqlite/db/SimpleSQLiteQuery;->bind(Lccsanandroidx/sqlite/db/SupportSQLiteProgram;[Ljava/lang/Object;)V

    .line 198
    invoke-interface {v1}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result v2

    return v2
.end method

.method public disableWriteAheadLogging()V
    .locals 1

    .line 294
    iget-object v0, p0, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->mDelegate:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->disableWriteAheadLogging()V

    .line 295
    return-void
.end method

.method public enableWriteAheadLogging()Z
    .locals 1

    .line 288
    iget-object v0, p0, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->mDelegate:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->enableWriteAheadLogging()Z

    move-result v0

    return v0
.end method

.method public endTransaction()V
    .locals 1

    .line 90
    iget-object v0, p0, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->mDelegate:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 91
    return-void
.end method

.method public execSQL(Ljava/lang/String;)V
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/database/SQLException;
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->mDelegate:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Lccsanandroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method public execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/database/SQLException;
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->mDelegate:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2}, Lccsanandroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 248
    return-void
.end method

.method public getAttachedDbs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsanandroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 305
    iget-object v0, p0, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->mDelegate:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->getAttachedDbs()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMaximumSize()J
    .locals 2

    .line 130
    iget-object v0, p0, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->mDelegate:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->getMaximumSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPageSize()J
    .locals 2

    .line 140
    iget-object v0, p0, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->mDelegate:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->getPageSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 267
    iget-object v0, p0, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->mDelegate:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 120
    iget-object v0, p0, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->mDelegate:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v0

    return v0
.end method

.method public inTransaction()Z
    .locals 1

    .line 100
    iget-object v0, p0, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->mDelegate:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    return v0
.end method

.method public insert(Ljava/lang/String;ILccsanandroid/content/ContentValues;)J
    .locals 2
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "conflictAlgorithm"    # I
    .param p3, "values"    # Lccsanandroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/database/SQLException;
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->mDelegate:Lccsanandroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p3, p2}, Lccsanandroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Lccsanandroid/content/ContentValues;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public isDatabaseIntegrityOk()Z
    .locals 1

    .line 310
    iget-object v0, p0, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->mDelegate:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->isDatabaseIntegrityOk()Z

    move-result v0

    return v0
.end method

.method public isDbLockedByCurrentThread()Z
    .locals 1

    .line 105
    iget-object v0, p0, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->mDelegate:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->isDbLockedByCurrentThread()Z

    move-result v0

    return v0
.end method

.method isDelegate(Lccsanandroid/database/sqlite/SQLiteDatabase;)Z
    .locals 1
    .param p1, "sqLiteDatabase"    # Lccsanandroid/database/sqlite/SQLiteDatabase;

    .line 322
    iget-object v0, p0, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->mDelegate:Lccsanandroid/database/sqlite/SQLiteDatabase;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOpen()Z
    .locals 1

    .line 257
    iget-object v0, p0, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->mDelegate:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    .line 252
    iget-object v0, p0, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->mDelegate:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v0

    return v0
.end method

.method public isWriteAheadLoggingEnabled()Z
    .locals 1

    .line 300
    iget-object v0, p0, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->mDelegate:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->isWriteAheadLoggingEnabled()Z

    move-result v0

    return v0
.end method

.method public needUpgrade(I)Z
    .locals 1
    .param p1, "newVersion"    # I

    .line 262
    iget-object v0, p0, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->mDelegate:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Lccsanandroid/database/sqlite/SQLiteDatabase;->needUpgrade(I)Z

    move-result v0

    return v0
.end method

.method public query(Lccsanandroidx/sqlite/db/SupportSQLiteQuery;)Lccsanandroid/database/Cursor;
    .locals 5
    .param p1, "supportQuery"    # Lccsanandroidx/sqlite/db/SupportSQLiteQuery;

    .line 161
    iget-object v0, p0, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->mDelegate:Lccsanandroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase$1;

    invoke-direct {v1, p0, p1}, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase$1;-><init>(Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase;Lccsanandroidx/sqlite/db/SupportSQLiteQuery;)V

    .line 168
    invoke-interface {p1}, Lccsanandroidx/sqlite/db/SupportSQLiteQuery;->getSql()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 161
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lccsanandroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Lccsanandroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public query(Lccsanandroidx/sqlite/db/SupportSQLiteQuery;Lccsanandroid/os/CancellationSignal;)Lccsanandroid/database/Cursor;
    .locals 6
    .param p1, "supportQuery"    # Lccsanandroidx/sqlite/db/SupportSQLiteQuery;
    .param p2, "cancellationSignal"    # Lccsanandroid/os/CancellationSignal;

    .line 175
    iget-object v0, p0, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->mDelegate:Lccsanandroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase$2;

    invoke-direct {v1, p0, p1}, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase$2;-><init>(Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase;Lccsanandroidx/sqlite/db/SupportSQLiteQuery;)V

    .line 182
    invoke-interface {p1}, Lccsanandroidx/sqlite/db/SupportSQLiteQuery;->getSql()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 175
    const/4 v4, 0x0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lccsanandroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Lccsanandroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lccsanandroid/os/CancellationSignal;)Lccsanandroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public query(Ljava/lang/String;)Lccsanandroid/database/Cursor;
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .line 150
    new-instance v0, Lccsanandroidx/sqlite/db/SimpleSQLiteQuery;

    invoke-direct {v0, p1}, Lccsanandroidx/sqlite/db/SimpleSQLiteQuery;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->query(Lccsanandroidx/sqlite/db/SupportSQLiteQuery;)Lccsanandroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public query(Ljava/lang/String;[Ljava/lang/Object;)Lccsanandroid/database/Cursor;
    .locals 1
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;

    .line 155
    new-instance v0, Lccsanandroidx/sqlite/db/SimpleSQLiteQuery;

    invoke-direct {v0, p1, p2}, Lccsanandroidx/sqlite/db/SimpleSQLiteQuery;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->query(Lccsanandroidx/sqlite/db/SupportSQLiteQuery;)Lccsanandroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public setForeignKeyConstraintsEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 283
    iget-object v0, p0, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->mDelegate:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Lccsanandroid/database/sqlite/SQLiteDatabase;->setForeignKeyConstraintsEnabled(Z)V

    .line 284
    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .line 272
    iget-object v0, p0, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->mDelegate:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Lccsanandroid/database/sqlite/SQLiteDatabase;->setLocale(Ljava/util/Locale;)V

    .line 273
    return-void
.end method

.method public setMaxSqlCacheSize(I)V
    .locals 1
    .param p1, "cacheSize"    # I

    .line 277
    iget-object v0, p0, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->mDelegate:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Lccsanandroid/database/sqlite/SQLiteDatabase;->setMaxSqlCacheSize(I)V

    .line 278
    return-void
.end method

.method public setMaximumSize(J)J
    .locals 2
    .param p1, "numBytes"    # J

    .line 135
    iget-object v0, p0, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->mDelegate:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2}, Lccsanandroid/database/sqlite/SQLiteDatabase;->setMaximumSize(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public setPageSize(J)V
    .locals 1
    .param p1, "numBytes"    # J

    .line 145
    iget-object v0, p0, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->mDelegate:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2}, Lccsanandroid/database/sqlite/SQLiteDatabase;->setPageSize(J)V

    .line 146
    return-void
.end method

.method public setTransactionSuccessful()V
    .locals 1

    .line 95
    iget-object v0, p0, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->mDelegate:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 96
    return-void
.end method

.method public setVersion(I)V
    .locals 1
    .param p1, "version"    # I

    .line 125
    iget-object v0, p0, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->mDelegate:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Lccsanandroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 126
    return-void
.end method

.method public update(Ljava/lang/String;ILccsanandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 9
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "conflictAlgorithm"    # I
    .param p3, "values"    # Lccsanandroid/content/ContentValues;
    .param p4, "whereClause"    # Ljava/lang/String;
    .param p5, "whereArgs"    # [Ljava/lang/Object;

    .line 206
    if-eqz p3, :cond_5

    invoke-virtual {p3}, Lccsanandroid/content/ContentValues;->size()I

    move-result v0

    if-eqz v0, :cond_5

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x78

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 210
    .local v0, "sql":Ljava/lang/StringBuilder;
    const-string v1, "UPDATE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    sget-object v1, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->CONFLICT_VALUES:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    const-string v1, " SET "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {p3}, Lccsanandroid/content/ContentValues;->size()I

    move-result v1

    .line 217
    .local v1, "setValuesSize":I
    if-nez p5, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    array-length v2, p5

    add-int/2addr v2, v1

    .line 218
    .local v2, "bindArgsSize":I
    :goto_0
    new-array v3, v2, [Ljava/lang/Object;

    .line 219
    .local v3, "bindArgs":[Ljava/lang/Object;
    const/4 v4, 0x0

    .line 220
    .local v4, "i":I
    invoke-virtual {p3}, Lccsanandroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 221
    .local v6, "colName":Ljava/lang/String;
    if-lez v4, :cond_1

    const-string v7, ","

    goto :goto_2

    :cond_1
    const-string v7, ""

    :goto_2
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    add-int/lit8 v7, v4, 0x1

    .end local v4    # "i":I
    .local v7, "i":I
    invoke-virtual {p3, v6}, Lccsanandroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v3, v4

    .line 224
    const-string v4, "=?"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .end local v6    # "colName":Ljava/lang/String;
    move v4, v7

    goto :goto_1

    .line 226
    .end local v7    # "i":I
    .restart local v4    # "i":I
    :cond_2
    if-eqz p5, :cond_3

    .line 227
    move v4, v1

    :goto_3
    if-ge v4, v2, :cond_3

    .line 228
    sub-int v5, v4, v1

    aget-object v5, p5, v5

    aput-object v5, v3, v4

    .line 227
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 231
    :cond_3
    invoke-static {p4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 232
    const-string v5, " WHERE "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->compileStatement(Ljava/lang/String;)Lccsanandroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v5

    .line 236
    .local v5, "stmt":Lccsanandroidx/sqlite/db/SupportSQLiteStatement;
    invoke-static {v5, v3}, Lccsanandroidx/sqlite/db/SimpleSQLiteQuery;->bind(Lccsanandroidx/sqlite/db/SupportSQLiteProgram;[Ljava/lang/Object;)V

    .line 237
    invoke-interface {v5}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result v6

    return v6

    .line 207
    .end local v0    # "sql":Ljava/lang/StringBuilder;
    .end local v1    # "setValuesSize":I
    .end local v2    # "bindArgsSize":I
    .end local v3    # "bindArgs":[Ljava/lang/Object;
    .end local v4    # "i":I
    .end local v5    # "stmt":Lccsanandroidx/sqlite/db/SupportSQLiteStatement;
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Empty values"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method public yieldIfContendedSafely()Z
    .locals 1

    .line 110
    iget-object v0, p0, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->mDelegate:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->yieldIfContendedSafely()Z

    move-result v0

    return v0
.end method

.method public yieldIfContendedSafely(J)Z
    .locals 1
    .param p1, "sleepAfterYieldDelay"    # J

    .line 115
    iget-object v0, p0, Lccsanandroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->mDelegate:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2}, Lccsanandroid/database/sqlite/SQLiteDatabase;->yieldIfContendedSafely(J)Z

    move-result v0

    return v0
.end method
