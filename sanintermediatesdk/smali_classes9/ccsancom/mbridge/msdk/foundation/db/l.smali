.class public final Lccsancom/mbridge/msdk/foundation/db/l;
.super Lccsancom/mbridge/msdk/foundation/db/a;
.source "ReplaceTempDao.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Lccsancom/mbridge/msdk/foundation/db/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const-string v0, "ReplaceTempDao"

    sput-object v0, Lccsancom/mbridge/msdk/foundation/db/l;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lccsancom/mbridge/msdk/foundation/db/e;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/foundation/db/a;-><init>(Lccsancom/mbridge/msdk/foundation/db/e;)V

    .line 19
    return-void
.end method

.method public static a(Lccsancom/mbridge/msdk/foundation/db/e;)Lccsancom/mbridge/msdk/foundation/db/l;
    .locals 2

    .line 22
    sget-object v0, Lccsancom/mbridge/msdk/foundation/db/l;->b:Lccsancom/mbridge/msdk/foundation/db/l;

    if-nez v0, :cond_1

    .line 23
    const-class v0, Lccsancom/mbridge/msdk/foundation/db/d;

    monitor-enter v0

    .line 24
    :try_start_0
    sget-object v1, Lccsancom/mbridge/msdk/foundation/db/l;->b:Lccsancom/mbridge/msdk/foundation/db/l;

    if-nez v1, :cond_0

    .line 25
    new-instance v1, Lccsancom/mbridge/msdk/foundation/db/l;

    invoke-direct {v1, p0}, Lccsancom/mbridge/msdk/foundation/db/l;-><init>(Lccsancom/mbridge/msdk/foundation/db/e;)V

    sput-object v1, Lccsancom/mbridge/msdk/foundation/db/l;->b:Lccsancom/mbridge/msdk/foundation/db/l;

    .line 27
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 29
    :cond_1
    :goto_0
    sget-object p0, Lccsancom/mbridge/msdk/foundation/db/l;->b:Lccsancom/mbridge/msdk/foundation/db/l;

    return-object p0
.end method


# virtual methods
.method public final a()Lccsanorg/json/JSONObject;
    .locals 8

    .line 43
    nop

    .line 1136
    const v0, 0x240c8400

    int-to-long v0, v0

    .line 1137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1138
    sub-long/2addr v2, v0

    .line 1140
    :try_start_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/l;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1141
    goto :goto_0

    .line 1143
    :cond_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/l;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "c_replace_temp"

    const-string v4, "time<?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-virtual {v0, v1, v4, v5}, Lccsanandroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1146
    goto :goto_0

    .line 1144
    :catch_0
    move-exception v0

    .line 1145
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 44
    :goto_0
    nop

    .line 45
    nop

    .line 46
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/l;->getReadableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "SELECT * FROM c_replace_temp"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lccsanandroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object v0

    .line 49
    if-eqz v0, :cond_2

    :try_start_1
    invoke-interface {v0}, Lccsanandroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 50
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1}, Lccsanorg/json/JSONObject;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 51
    :goto_1
    :try_start_2
    invoke-interface {v0}, Lccsanandroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 52
    const-string v2, "d_key"

    invoke-interface {v0, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 53
    const-string v3, "d_value"

    invoke-interface {v0, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 54
    new-instance v4, Lccsanorg/json/JSONObject;

    invoke-direct {v4, v3}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v4}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 55
    goto :goto_1

    .line 51
    :cond_1
    move-object v2, v1

    goto :goto_3

    .line 61
    :catchall_0
    move-exception v2

    goto :goto_2

    :catchall_1
    move-exception v1

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto :goto_2

    .line 57
    :cond_2
    if-eqz v0, :cond_4

    .line 58
    :try_start_3
    invoke-interface {v0}, Lccsanandroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    .line 62
    :goto_2
    :try_start_4
    sget-object v3, Lccsancom/mbridge/msdk/foundation/db/l;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 64
    if-eqz v0, :cond_6

    .line 65
    invoke-interface {v0}, Lccsanandroid/database/Cursor;->close()V

    goto :goto_4

    .line 64
    :catchall_2
    move-exception v1

    if-eqz v0, :cond_3

    .line 65
    invoke-interface {v0}, Lccsanandroid/database/Cursor;->close()V

    .line 67
    :cond_3
    throw v1

    .line 64
    :cond_4
    :goto_3
    if-eqz v0, :cond_5

    .line 65
    invoke-interface {v0}, Lccsanandroid/database/Cursor;->close()V

    .line 69
    :cond_5
    move-object v1, v2

    :cond_6
    :goto_4
    return-object v1
.end method

.method public final a(Ljava/lang/String;)Lccsanorg/json/JSONObject;
    .locals 3

    .line 82
    nop

    .line 84
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 85
    return-object v1

    .line 87
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT * FROM c_replace_temp WHERE d_key = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 88
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/l;->getReadableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lccsanandroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object p1

    .line 91
    if-eqz p1, :cond_1

    :try_start_0
    invoke-interface {p1}, Lccsanandroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 92
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    move-object v1, v0

    .line 93
    :goto_0
    invoke-interface {p1}, Lccsanandroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 94
    const-string v0, "d_value"

    invoke-interface {p1, v0}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 95
    new-instance v2, Lccsanorg/json/JSONObject;

    invoke-direct {v2, v0}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 96
    move-object v1, v2

    goto :goto_0

    .line 102
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 98
    :cond_1
    if-eqz p1, :cond_3

    .line 99
    invoke-interface {p1}, Lccsanandroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 103
    :goto_1
    :try_start_1
    sget-object v2, Lccsancom/mbridge/msdk/foundation/db/l;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 105
    if-eqz p1, :cond_4

    .line 106
    :goto_2
    invoke-interface {p1}, Lccsanandroid/database/Cursor;->close()V

    goto :goto_4

    .line 105
    :catchall_1
    move-exception v0

    if-eqz p1, :cond_2

    .line 106
    invoke-interface {p1}, Lccsanandroid/database/Cursor;->close()V

    .line 108
    :cond_2
    throw v0

    .line 105
    :cond_3
    :goto_3
    if-eqz p1, :cond_4

    .line 106
    goto :goto_2

    .line 110
    :cond_4
    :goto_4
    return-object v1
.end method

.method public final a(Ljava/lang/String;Lccsanorg/json/JSONObject;)V
    .locals 5

    .line 117
    const-string v0, "\'"

    :try_start_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/l;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-nez v1, :cond_0

    .line 118
    return-void

    .line 120
    :cond_0
    new-instance v1, Lccsanandroid/content/ContentValues;

    invoke-direct {v1}, Lccsanandroid/content/ContentValues;-><init>()V

    .line 121
    const-string v2, "d_key"

    invoke-virtual {v1, v2, p1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v2, "d_value"

    invoke-virtual {p2}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string p2, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 124
    nop

    .line 1172
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT d_value FROM c_replace_temp WHERE d_key=\'"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1173
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/l;->getReadableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p2, v3}, Lccsanandroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object p2

    .line 1174
    if-eqz p2, :cond_1

    invoke-interface {p2}, Lccsanandroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 1175
    invoke-interface {p2}, Lccsanandroid/database/Cursor;->close()V

    .line 1176
    const/4 p2, 0x1

    goto :goto_0

    .line 1178
    :cond_1
    if-eqz p2, :cond_2

    .line 1179
    invoke-interface {p2}, Lccsanandroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1181
    :cond_2
    const/4 p2, 0x0

    .line 124
    :goto_0
    const-string v2, "c_replace_temp"

    if-nez p2, :cond_3

    .line 125
    :try_start_1
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/l;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    invoke-virtual {p1, v2, v3, v1}, Lccsanandroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Lccsanandroid/content/ContentValues;)J

    goto :goto_1

    .line 127
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "d_key = \'"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 128
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/l;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    invoke-virtual {p2, v2, v1, p1, v3}, Lccsanandroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Lccsanandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 132
    :goto_1
    goto :goto_2

    .line 130
    :catch_0
    move-exception p1

    .line 131
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 133
    :goto_2
    return-void
.end method
