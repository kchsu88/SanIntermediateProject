.class public final Lccsancom/mbridge/msdk/foundation/db/i;
.super Lccsancom/mbridge/msdk/foundation/db/a;
.source "FqInfoDao.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/mbridge/msdk/foundation/db/a<",
        "Lccsancom/mbridge/msdk/foundation/entity/e;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Lccsancom/mbridge/msdk/foundation/db/i;


# direct methods
.method private constructor <init>(Lccsancom/mbridge/msdk/foundation/db/e;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/foundation/db/a;-><init>(Lccsancom/mbridge/msdk/foundation/db/e;)V

    .line 17
    return-void
.end method

.method public static declared-synchronized a(Lccsancom/mbridge/msdk/foundation/db/e;)Lccsancom/mbridge/msdk/foundation/db/i;
    .locals 2

    const-class v0, Lccsancom/mbridge/msdk/foundation/db/i;

    monitor-enter v0

    .line 20
    :try_start_0
    sget-object v1, Lccsancom/mbridge/msdk/foundation/db/i;->a:Lccsancom/mbridge/msdk/foundation/db/i;

    if-nez v1, :cond_0

    .line 21
    new-instance v1, Lccsancom/mbridge/msdk/foundation/db/i;

    invoke-direct {v1, p0}, Lccsancom/mbridge/msdk/foundation/db/i;-><init>(Lccsancom/mbridge/msdk/foundation/db/e;)V

    sput-object v1, Lccsancom/mbridge/msdk/foundation/db/i;->a:Lccsancom/mbridge/msdk/foundation/db/i;

    .line 23
    :cond_0
    sget-object p0, Lccsancom/mbridge/msdk/foundation/db/i;->a:Lccsancom/mbridge/msdk/foundation/db/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 19
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    monitor-enter p0

    .line 52
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "select id from fq_info where unitId=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' and "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "id"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "=\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 54
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/i;->getReadableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1}, Lccsanandroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object p1

    .line 55
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lccsanandroid/database/Cursor;->getCount()I

    move-result p2

    if-lez p2, :cond_0

    .line 56
    invoke-interface {p1}, Lccsanandroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    const/4 p1, 0x1

    monitor-exit p0

    return p1

    .line 59
    :cond_0
    if-eqz p1, :cond_1

    .line 60
    :try_start_1
    invoke-interface {p1}, Lccsanandroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    :cond_1
    monitor-exit p0

    return v0

    .line 51
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 64
    :catch_0
    move-exception p1

    .line 65
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    monitor-exit p0

    return v0

    .line 51
    :goto_0
    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final declared-synchronized a(Lccsancom/mbridge/msdk/foundation/entity/e;)V
    .locals 4

    monitor-enter p0

    .line 28
    :try_start_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/i;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 29
    monitor-exit p0

    return-void

    .line 31
    :cond_0
    if-eqz p1, :cond_2

    .line 32
    :try_start_1
    new-instance v0, Lccsanandroid/content/ContentValues;

    invoke-direct {v0}, Lccsanandroid/content/ContentValues;-><init>()V

    .line 33
    const-string v1, "id"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string v1, "time"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/e;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 35
    const-string v1, "unitId"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/e;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string v1, "type"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/e;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 37
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lccsancom/mbridge/msdk/foundation/db/i;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/e;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " AND "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "unitId"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/e;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 39
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/i;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v3, "fq_info"

    invoke-virtual {v1, v3, v0, p1, v2}, Lccsanandroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Lccsanandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/i;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string v1, "fq_info"

    invoke-virtual {p1, v1, v2, v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Lccsanandroid/content/ContentValues;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    :cond_2
    :goto_0
    goto :goto_1

    .line 27
    :catchall_0
    move-exception p1

    goto :goto_2

    .line 45
    :catch_0
    move-exception p1

    .line 46
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    :goto_1
    monitor-exit p0

    return-void

    .line 27
    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    .line 133
    const-wide/32 v0, 0x5265c00

    .line 134
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "time<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "unitId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 136
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 137
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/i;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 138
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/i;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string v2, "fq_info"

    invoke-virtual {p1, v2, v0, v1}, Lccsanandroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    :cond_0
    goto :goto_0

    .line 132
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 141
    :catch_0
    move-exception p1

    .line 143
    :goto_0
    monitor-exit p0

    return-void
.end method
