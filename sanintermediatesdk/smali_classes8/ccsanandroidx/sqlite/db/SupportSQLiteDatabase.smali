.class public interface abstract Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;
.super Ljava/lang/Object;
.source "SupportSQLiteDatabase.java"

# interfaces
.implements Ljava/io/Closeable;


# virtual methods
.method public abstract beginTransaction()V
.end method

.method public abstract beginTransactionNonExclusive()V
.end method

.method public abstract beginTransactionWithListener(Lccsanandroid/database/sqlite/SQLiteTransactionListener;)V
.end method

.method public abstract beginTransactionWithListenerNonExclusive(Lccsanandroid/database/sqlite/SQLiteTransactionListener;)V
.end method

.method public abstract compileStatement(Ljava/lang/String;)Lccsanandroidx/sqlite/db/SupportSQLiteStatement;
.end method

.method public abstract delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
.end method

.method public abstract disableWriteAheadLogging()V
.end method

.method public abstract enableWriteAheadLogging()Z
.end method

.method public abstract endTransaction()V
.end method

.method public abstract execSQL(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/database/SQLException;
        }
    .end annotation
.end method

.method public abstract execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/database/SQLException;
        }
    .end annotation
.end method

.method public abstract getAttachedDbs()Ljava/util/List;
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
.end method

.method public abstract getMaximumSize()J
.end method

.method public abstract getPageSize()J
.end method

.method public abstract getPath()Ljava/lang/String;
.end method

.method public abstract getVersion()I
.end method

.method public abstract inTransaction()Z
.end method

.method public abstract insert(Ljava/lang/String;ILccsanandroid/content/ContentValues;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/database/SQLException;
        }
    .end annotation
.end method

.method public abstract isDatabaseIntegrityOk()Z
.end method

.method public abstract isDbLockedByCurrentThread()Z
.end method

.method public abstract isOpen()Z
.end method

.method public abstract isReadOnly()Z
.end method

.method public abstract isWriteAheadLoggingEnabled()Z
.end method

.method public abstract needUpgrade(I)Z
.end method

.method public abstract query(Lccsanandroidx/sqlite/db/SupportSQLiteQuery;)Lccsanandroid/database/Cursor;
.end method

.method public abstract query(Lccsanandroidx/sqlite/db/SupportSQLiteQuery;Lccsanandroid/os/CancellationSignal;)Lccsanandroid/database/Cursor;
.end method

.method public abstract query(Ljava/lang/String;)Lccsanandroid/database/Cursor;
.end method

.method public abstract query(Ljava/lang/String;[Ljava/lang/Object;)Lccsanandroid/database/Cursor;
.end method

.method public abstract setForeignKeyConstraintsEnabled(Z)V
.end method

.method public abstract setLocale(Ljava/util/Locale;)V
.end method

.method public abstract setMaxSqlCacheSize(I)V
.end method

.method public abstract setMaximumSize(J)J
.end method

.method public abstract setPageSize(J)V
.end method

.method public abstract setTransactionSuccessful()V
.end method

.method public abstract setVersion(I)V
.end method

.method public abstract update(Ljava/lang/String;ILccsanandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/Object;)I
.end method

.method public abstract yieldIfContendedSafely()Z
.end method

.method public abstract yieldIfContendedSafely(J)Z
.end method
