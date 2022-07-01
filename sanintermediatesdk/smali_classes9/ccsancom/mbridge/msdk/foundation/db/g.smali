.class public Lccsancom/mbridge/msdk/foundation/db/g;
.super Lccsancom/mbridge/msdk/foundation/db/a;
.source "DailyPlayCapDao.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/mbridge/msdk/foundation/db/a<",
        "Lccsancom/mbridge/msdk/out/Campaign;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lccsancom/mbridge/msdk/foundation/db/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    const-class v0, Lccsancom/mbridge/msdk/foundation/db/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/foundation/db/g;->a:Ljava/lang/String;

    .line 12
    const/4 v0, 0x0

    sput-object v0, Lccsancom/mbridge/msdk/foundation/db/g;->b:Lccsancom/mbridge/msdk/foundation/db/g;

    return-void
.end method

.method private constructor <init>(Lccsancom/mbridge/msdk/foundation/db/e;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/foundation/db/a;-><init>(Lccsancom/mbridge/msdk/foundation/db/e;)V

    .line 16
    return-void
.end method

.method public static declared-synchronized a(Lccsancom/mbridge/msdk/foundation/db/e;)Lccsancom/mbridge/msdk/foundation/db/g;
    .locals 2

    const-class v0, Lccsancom/mbridge/msdk/foundation/db/g;

    monitor-enter v0

    .line 19
    :try_start_0
    sget-object v1, Lccsancom/mbridge/msdk/foundation/db/g;->b:Lccsancom/mbridge/msdk/foundation/db/g;

    if-nez v1, :cond_0

    .line 20
    new-instance v1, Lccsancom/mbridge/msdk/foundation/db/g;

    invoke-direct {v1, p0}, Lccsancom/mbridge/msdk/foundation/db/g;-><init>(Lccsancom/mbridge/msdk/foundation/db/e;)V

    sput-object v1, Lccsancom/mbridge/msdk/foundation/db/g;->b:Lccsancom/mbridge/msdk/foundation/db/g;

    .line 22
    :cond_0
    sget-object p0, Lccsancom/mbridge/msdk/foundation/db/g;->b:Lccsancom/mbridge/msdk/foundation/db/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 18
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private declared-synchronized b(Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    .line 65
    :try_start_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/g;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 66
    monitor-exit p0

    return-void

    .line 68
    :cond_0
    :try_start_1
    new-instance v0, Lccsanandroid/content/ContentValues;

    invoke-direct {v0}, Lccsanandroid/content/ContentValues;-><init>()V

    .line 69
    const-string v1, "first_insert_timestamp"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 70
    const-string v1, "play_time"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unit_id = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 72
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/g;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "dailyplaycap"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, p1, v3}, Lccsanandroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Lccsanandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    goto :goto_0

    .line 73
    :catchall_0
    move-exception p1

    .line 74
    :try_start_2
    sget-object v0, Lccsancom/mbridge/msdk/foundation/db/g;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 77
    :goto_0
    monitor-exit p0

    return-void

    .line 64
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized c(Ljava/lang/String;)Z
    .locals 3

    monitor-enter p0

    .line 132
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT play_time FROM dailyplaycap WHERE unit_id=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 133
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/g;->getReadableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lccsanandroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object p1

    .line 134
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lccsanandroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 135
    invoke-interface {p1}, Lccsanandroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    const/4 p1, 0x1

    monitor-exit p0

    return p1

    .line 138
    :cond_0
    if-eqz p1, :cond_1

    .line 139
    :try_start_1
    invoke-interface {p1}, Lccsanandroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    :cond_1
    monitor-exit p0

    return v0

    .line 143
    :catchall_0
    move-exception p1

    .line 144
    monitor-exit p0

    return v0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p1

    monitor-enter p0

    .line 80
    nop

    .line 82
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/foundation/db/g;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_0

    .line 119
    nop

    .line 83
    monitor-exit p0

    return-void

    .line 85
    :cond_0
    :try_start_1
    new-instance v2, Lccsanandroid/content/ContentValues;

    invoke-direct {v2}, Lccsanandroid/content/ContentValues;-><init>()V

    .line 86
    nop

    .line 87
    nop

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 90
    invoke-direct/range {p0 .. p1}, Lccsancom/mbridge/msdk/foundation/db/g;->c(Ljava/lang/String;)Z

    move-result v5

    const-wide/16 v6, 0x1

    if-eqz v5, :cond_4

    .line 91
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SELECT * FROM dailyplaycap where unit_id =\'"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\'"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 92
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/foundation/db/g;->getReadableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    invoke-virtual {v8, v5, v1}, Lccsanandroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 93
    const-wide/16 v8, 0x0

    if-eqz v5, :cond_1

    :try_start_2
    invoke-interface {v5}, Lccsanandroid/database/Cursor;->getCount()I

    move-result v10

    if-lez v10, :cond_1

    .line 94
    invoke-interface {v5}, Lccsanandroid/database/Cursor;->moveToFirst()Z

    .line 95
    const-string v10, "first_insert_timestamp"

    invoke-interface {v5, v10}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v5, v10}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 96
    const-string v12, "play_time"

    invoke-interface {v5, v12}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v5, v12}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v12

    int-to-long v12, v12

    .line 97
    const-wide/32 v14, 0x5265c00

    sub-long v14, v3, v14

    cmp-long v16, v14, v10

    if-lez v16, :cond_2

    .line 98
    invoke-direct/range {p0 .. p1}, Lccsancom/mbridge/msdk/foundation/db/g;->b(Ljava/lang/String;)V

    .line 99
    move-wide v12, v8

    goto :goto_0

    .line 119
    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object v1, v5

    goto/16 :goto_5

    .line 116
    :catch_0
    move-exception v0

    move-object v1, v5

    goto :goto_2

    .line 102
    :cond_1
    move-wide v10, v8

    move-wide v12, v10

    :cond_2
    :goto_0
    cmp-long v14, v10, v8

    if-nez v14, :cond_3

    .line 103
    const-string v8, "first_insert_timestamp"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 106
    :cond_3
    const-string v3, "play_time"

    add-long/2addr v12, v6

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 107
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unit_id = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/foundation/db/g;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "dailyplaycap"

    invoke-virtual {v3, v4, v2, v0, v1}, Lccsanandroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Lccsanandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 109
    move-object v1, v5

    goto :goto_1

    .line 110
    :cond_4
    :try_start_3
    const-string v5, "first_insert_timestamp"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 111
    const-string v3, "play_time"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 112
    const-string v3, "unit_id"

    invoke-virtual {v2, v3, v0}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/foundation/db/g;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v3, "dailyplaycap"

    invoke-virtual {v0, v3, v1, v2}, Lccsanandroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Lccsanandroid/content/ContentValues;)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 119
    :goto_1
    if-eqz v1, :cond_5

    .line 121
    :try_start_4
    invoke-interface {v1}, Lccsanandroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    .line 119
    :catchall_1
    move-exception v0

    move-object v2, v0

    goto :goto_5

    .line 116
    :catch_1
    move-exception v0

    .line 117
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 119
    if-eqz v1, :cond_5

    .line 121
    :try_start_6
    invoke-interface {v1}, Lccsanandroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 124
    :goto_3
    goto :goto_4

    .line 122
    :catchall_2
    move-exception v0

    goto :goto_3

    .line 128
    :cond_5
    :goto_4
    monitor-exit p0

    return-void

    .line 119
    :goto_5
    if-eqz v1, :cond_6

    .line 121
    :try_start_7
    invoke-interface {v1}, Lccsanandroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 124
    goto :goto_6

    .line 122
    :catchall_3
    move-exception v0

    .line 127
    :cond_6
    :goto_6
    :try_start_8
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 79
    :catchall_4
    move-exception v0

    move-object v1, v0

    monitor-exit p0

    goto :goto_8

    :goto_7
    throw v1

    :goto_8
    goto :goto_7
.end method

.method public final a(Ljava/lang/String;I)Z
    .locals 10

    .line 26
    nop

    .line 27
    nop

    .line 29
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT * FROM dailyplaycap where unit_id =\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 30
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 31
    :try_start_1
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/g;->getReadableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object v0

    .line 32
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 33
    if-eqz v0, :cond_1

    :try_start_2
    invoke-interface {v0}, Lccsanandroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    invoke-interface {v0}, Lccsanandroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 34
    const-string v2, "first_insert_timestamp"

    invoke-interface {v0, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 35
    const-string v4, "play_time"

    invoke-interface {v0, v4}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    .line 36
    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    if-eqz v8, :cond_1

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 38
    const-wide/32 v8, 0x5265c00

    sub-long/2addr v6, v8

    cmp-long v8, v6, v2

    if-lez v8, :cond_0

    .line 39
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/foundation/db/g;->b(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 41
    :cond_0
    if-lez p2, :cond_1

    int-to-long p1, p2

    cmp-long v2, v4, p1

    if-ltz v2, :cond_1

    .line 42
    const/4 p1, 0x1

    const/4 v1, 0x1

    .line 51
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 53
    :try_start_3
    invoke-interface {v0}, Lccsanandroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 56
    :goto_1
    goto :goto_2

    .line 54
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 32
    :catchall_1
    move-exception p1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 48
    :catchall_2
    move-exception p1

    .line 49
    :try_start_6
    sget-object p2, Lccsancom/mbridge/msdk/foundation/db/g;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 51
    if-eqz v0, :cond_2

    .line 53
    :try_start_7
    invoke-interface {v0}, Lccsanandroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 60
    :cond_2
    :goto_2
    return v1

    .line 51
    :catchall_3
    move-exception p1

    if-eqz v0, :cond_3

    .line 53
    :try_start_8
    invoke-interface {v0}, Lccsanandroid/database/Cursor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 56
    goto :goto_3

    .line 54
    :catchall_4
    move-exception p2

    .line 59
    :cond_3
    :goto_3
    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method
