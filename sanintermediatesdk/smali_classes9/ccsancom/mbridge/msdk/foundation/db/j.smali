.class public final Lccsancom/mbridge/msdk/foundation/db/j;
.super Lccsancom/mbridge/msdk/foundation/db/a;
.source "FrequenceDao.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/mbridge/msdk/foundation/db/a<",
        "Lccsancom/mbridge/msdk/foundation/entity/f;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Lccsancom/mbridge/msdk/foundation/db/j;


# direct methods
.method private constructor <init>(Lccsancom/mbridge/msdk/foundation/db/e;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/foundation/db/a;-><init>(Lccsancom/mbridge/msdk/foundation/db/e;)V

    .line 13
    return-void
.end method

.method public static declared-synchronized a(Lccsancom/mbridge/msdk/foundation/db/e;)Lccsancom/mbridge/msdk/foundation/db/j;
    .locals 2

    const-class v0, Lccsancom/mbridge/msdk/foundation/db/j;

    monitor-enter v0

    .line 16
    :try_start_0
    sget-object v1, Lccsancom/mbridge/msdk/foundation/db/j;->a:Lccsancom/mbridge/msdk/foundation/db/j;

    if-nez v1, :cond_0

    .line 17
    new-instance v1, Lccsancom/mbridge/msdk/foundation/db/j;

    invoke-direct {v1, p0}, Lccsancom/mbridge/msdk/foundation/db/j;-><init>(Lccsancom/mbridge/msdk/foundation/db/e;)V

    sput-object v1, Lccsancom/mbridge/msdk/foundation/db/j;->a:Lccsancom/mbridge/msdk/foundation/db/j;

    .line 19
    :cond_0
    sget-object p0, Lccsancom/mbridge/msdk/foundation/db/j;->a:Lccsancom/mbridge/msdk/foundation/db/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 15
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private declared-synchronized b(Lccsancom/mbridge/msdk/foundation/entity/f;)J
    .locals 6

    monitor-enter p0

    .line 100
    const-wide/16 v0, -0x1

    :try_start_0
    new-instance v2, Lccsanandroid/content/ContentValues;

    invoke-direct {v2}, Lccsanandroid/content/ContentValues;-><init>()V

    .line 101
    const-string v3, "id"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/f;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v3, "fc_a"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/f;->b()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 103
    const-string v3, "fc_b"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/f;->c()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 104
    const-string v3, "ts"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/f;->f()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 105
    const-string v3, "impression_count"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/f;->d()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 106
    const-string v3, "click_count"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/f;->e()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 107
    const-string v3, "ts"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/f;->f()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 108
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/j;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 109
    monitor-exit p0

    return-wide v0

    .line 111
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/j;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string v3, "frequence"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, v2}, Lccsanandroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Lccsanandroid/content/ContentValues;)J

    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 99
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 112
    :catch_0
    move-exception p1

    .line 114
    monitor-exit p0

    return-wide v0
.end method


# virtual methods
.method public final declared-synchronized a(Lccsancom/mbridge/msdk/foundation/entity/f;)V
    .locals 1

    monitor-enter p0

    .line 118
    :try_start_0
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/foundation/db/j;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/foundation/db/j;->b(Lccsancom/mbridge/msdk/foundation/entity/f;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    :cond_0
    monitor-exit p0

    return-void

    .line 117
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/lang/String;)Z
    .locals 4

    monitor-enter p0

    .line 61
    nop

    .line 64
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 65
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT id FROM frequence WHERE id=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 67
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/j;->getReadableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lccsanandroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object v1

    .line 69
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lccsanandroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 70
    const/4 v2, 0x1

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    if-eqz v1, :cond_0

    .line 80
    :try_start_2
    invoke-interface {v1}, Lccsanandroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 70
    :cond_0
    monitor-exit p0

    return v2

    .line 72
    :cond_1
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 79
    if-eqz v1, :cond_2

    .line 80
    :try_start_4
    invoke-interface {v1}, Lccsanandroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 72
    :cond_2
    monitor-exit p0

    return v0

    .line 75
    :catchall_0
    move-exception v2

    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 79
    :catchall_1
    move-exception p1

    if-eqz v1, :cond_3

    .line 80
    :try_start_7
    invoke-interface {v1}, Lccsanandroid/database/Cursor;->close()V

    .line 82
    :cond_3
    throw p1

    .line 60
    :catchall_2
    move-exception p1

    goto :goto_0

    .line 76
    :catch_0
    move-exception p1

    .line 77
    nop

    .line 79
    if-eqz v1, :cond_4

    .line 80
    invoke-interface {v1}, Lccsanandroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_1

    .line 60
    :goto_0
    monitor-exit p0

    throw p1

    .line 77
    :cond_4
    :goto_1
    monitor-exit p0

    return v0
.end method

.method public final declared-synchronized a()[J
    .locals 7

    monitor-enter p0

    .line 23
    :try_start_0
    const-string v0, "SELECT id FROM frequence WHERE fc_a<impression_count"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 24
    nop

    .line 26
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/j;->getReadableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lccsanandroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 28
    if-eqz v0, :cond_2

    :try_start_2
    invoke-interface {v0}, Lccsanandroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 29
    invoke-interface {v0}, Lccsanandroid/database/Cursor;->getCount()I

    move-result v2

    new-array v2, v2, [J

    .line 30
    const/4 v3, 0x0

    .line 31
    :goto_0
    invoke-interface {v0}, Lccsanandroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 32
    const-string v4, "id"

    invoke-interface {v0, v4}, Lccsanandroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    aput-wide v4, v2, v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 33
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 35
    :cond_0
    nop

    .line 39
    if-eqz v0, :cond_1

    .line 40
    :try_start_3
    invoke-interface {v0}, Lccsanandroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 35
    :cond_1
    monitor-exit p0

    return-object v2

    .line 39
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 37
    :catch_0
    move-exception v2

    goto :goto_2

    .line 39
    :cond_2
    if-eqz v0, :cond_4

    .line 40
    goto :goto_3

    .line 39
    :catchall_1
    move-exception v0

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_1
    if-eqz v0, :cond_3

    .line 40
    :try_start_4
    invoke-interface {v0}, Lccsanandroid/database/Cursor;->close()V

    .line 42
    :cond_3
    throw v1

    .line 37
    :catch_1
    move-exception v0

    move-object v0, v1

    .line 39
    :goto_2
    if-eqz v0, :cond_4

    .line 40
    :goto_3
    invoke-interface {v0}, Lccsanandroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 43
    :cond_4
    monitor-exit p0

    return-object v1

    .line 22
    :catchall_2
    move-exception v0

    monitor-exit p0

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method public final declared-synchronized b()V
    .locals 4

    monitor-enter p0

    .line 49
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    sub-long/2addr v0, v2

    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ts<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/j;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 52
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/j;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "frequence"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lccsanandroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :cond_0
    goto :goto_0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 55
    :catch_0
    move-exception v0

    .line 57
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized b(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 87
    :try_start_0
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/foundation/db/j;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UPDATE frequence Set impression_count=impression_count+1 WHERE id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 90
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/j;->getReadableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/j;->getReadableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :cond_0
    monitor-exit p0

    return-void

    .line 86
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
