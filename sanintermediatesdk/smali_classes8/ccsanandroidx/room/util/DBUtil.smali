.class public Lccsanandroidx/room/util/DBUtil;
.super Ljava/lang/Object;
.source "DBUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    return-void
.end method

.method public static createCancellationSignal()Lccsanandroid/os/CancellationSignal;
    .locals 2

    .line 167
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 168
    new-instance v0, Lccsanandroid/os/CancellationSignal;

    invoke-direct {v0}, Lccsanandroid/os/CancellationSignal;-><init>()V

    return-object v0

    .line 170
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static dropFtsSyncTriggers(Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 6
    .param p0, "db"    # Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v0, "existingTriggers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "SELECT name FROM sqlite_master WHERE type = \'trigger\'"

    invoke-interface {p0, v1}, Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object v1

    .line 114
    .local v1, "cursor":Lccsanandroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v1}, Lccsanandroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 118
    :cond_0
    invoke-interface {v1}, Lccsanandroid/database/Cursor;->close()V

    .line 119
    nop

    .line 121
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 122
    .local v3, "triggerName":Ljava/lang/String;
    const-string/jumbo v4, "room_fts_content_sync_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 123
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DROP TRIGGER IF EXISTS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Lccsanandroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 125
    .end local v3    # "triggerName":Ljava/lang/String;
    :cond_1
    goto :goto_1

    .line 126
    :cond_2
    return-void

    .line 118
    :catchall_0
    move-exception v2

    invoke-interface {v1}, Lccsanandroid/database/Cursor;->close()V

    .line 119
    goto :goto_3

    :goto_2
    throw v2

    :goto_3
    goto :goto_2
.end method

.method public static query(Lccsanandroidx/room/RoomDatabase;Lccsanandroidx/sqlite/db/SupportSQLiteQuery;Z)Lccsanandroid/database/Cursor;
    .locals 1
    .param p0, "db"    # Lccsanandroidx/room/RoomDatabase;
    .param p1, "sqLiteQuery"    # Lccsanandroidx/sqlite/db/SupportSQLiteQuery;
    .param p2, "maybeCopy"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 64
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lccsanandroidx/room/util/DBUtil;->query(Lccsanandroidx/room/RoomDatabase;Lccsanandroidx/sqlite/db/SupportSQLiteQuery;ZLccsanandroid/os/CancellationSignal;)Lccsanandroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static query(Lccsanandroidx/room/RoomDatabase;Lccsanandroidx/sqlite/db/SupportSQLiteQuery;ZLccsanandroid/os/CancellationSignal;)Lccsanandroid/database/Cursor;
    .locals 6
    .param p0, "db"    # Lccsanandroidx/room/RoomDatabase;
    .param p1, "sqLiteQuery"    # Lccsanandroidx/sqlite/db/SupportSQLiteQuery;
    .param p2, "maybeCopy"    # Z
    .param p3, "signal"    # Lccsanandroid/os/CancellationSignal;

    .line 83
    invoke-virtual {p0, p1, p3}, Lccsanandroidx/room/RoomDatabase;->query(Lccsanandroidx/sqlite/db/SupportSQLiteQuery;Lccsanandroid/os/CancellationSignal;)Lccsanandroid/database/Cursor;

    move-result-object v0

    .line 84
    .local v0, "cursor":Lccsanandroid/database/Cursor;
    if-eqz p2, :cond_2

    instance-of v1, v0, Lccsanandroid/database/AbstractWindowedCursor;

    if-eqz v1, :cond_2

    .line 85
    move-object v1, v0

    check-cast v1, Lccsanandroid/database/AbstractWindowedCursor;

    .line 86
    .local v1, "windowedCursor":Lccsanandroid/database/AbstractWindowedCursor;
    invoke-virtual {v1}, Lccsanandroid/database/AbstractWindowedCursor;->getCount()I

    move-result v2

    .line 88
    .local v2, "rowsInCursor":I
    invoke-virtual {v1}, Lccsanandroid/database/AbstractWindowedCursor;->hasWindow()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 89
    invoke-virtual {v1}, Lccsanandroid/database/AbstractWindowedCursor;->getWindow()Lccsanandroid/database/CursorWindow;

    move-result-object v3

    invoke-virtual {v3}, Lccsanandroid/database/CursorWindow;->getNumRows()I

    move-result v3

    .local v3, "rowsInWindow":I
    goto :goto_0

    .line 91
    .end local v3    # "rowsInWindow":I
    :cond_0
    move v3, v2

    .line 93
    .restart local v3    # "rowsInWindow":I
    :goto_0
    sget v4, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_1

    if-ge v3, v2, :cond_2

    .line 94
    :cond_1
    invoke-static {v1}, Lccsanandroidx/room/util/CursorUtil;->copyAndClose(Lccsanandroid/database/Cursor;)Lccsanandroid/database/Cursor;

    move-result-object v4

    return-object v4

    .line 98
    .end local v1    # "windowedCursor":Lccsanandroid/database/AbstractWindowedCursor;
    .end local v2    # "rowsInCursor":I
    .end local v3    # "rowsInWindow":I
    :cond_2
    return-object v0
.end method

.method public static readVersion(Ljava/io/File;)I
    .locals 10
    .param p0, "databaseFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    const/4 v0, 0x0

    .line 142
    .local v0, "input":Ljava/nio/channels/FileChannel;
    const/4 v1, 0x4

    :try_start_0
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 143
    .local v2, "buffer":Ljava/nio/ByteBuffer;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    move-object v0, v3

    .line 144
    const-wide/16 v5, 0x3c

    const-wide/16 v7, 0x4

    const/4 v9, 0x1

    move-object v4, v0

    invoke-virtual/range {v4 .. v9}, Ljava/nio/channels/FileChannel;->tryLock(JJZ)Ljava/nio/channels/FileLock;

    .line 145
    const-wide/16 v3, 0x3c

    invoke-virtual {v0, v3, v4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 146
    invoke-virtual {v0, v2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 147
    .local v3, "read":I
    if-ne v3, v1, :cond_1

    .line 150
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 151
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 151
    :cond_0
    return v1

    .line 148
    :cond_1
    :try_start_1
    new-instance v1, Ljava/io/IOException;

    const-string v4, "Bad database header, unable to read 4 bytes at offset 60"

    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "input":Ljava/nio/channels/FileChannel;
    .end local p0    # "databaseFile":Ljava/io/File;
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    .end local v2    # "buffer":Ljava/nio/ByteBuffer;
    .end local v3    # "read":I
    .restart local v0    # "input":Ljava/nio/channels/FileChannel;
    .restart local p0    # "databaseFile":Ljava/io/File;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    .line 154
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 156
    :cond_2
    throw v1
.end method
