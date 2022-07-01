.class public Lccsancom/mbridge/msdk/foundation/db/h;
.super Lccsancom/mbridge/msdk/foundation/db/a;
.source "DisplayResourceTypeDao.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/mbridge/msdk/foundation/db/a<",
        "Lccsancom/mbridge/msdk/foundation/entity/d;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lccsancom/mbridge/msdk/foundation/db/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-class v0, Lccsancom/mbridge/msdk/foundation/db/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/foundation/db/h;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lccsancom/mbridge/msdk/foundation/db/e;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/foundation/db/a;-><init>(Lccsancom/mbridge/msdk/foundation/db/e;)V

    return-void
.end method

.method public static declared-synchronized a(Lccsancom/mbridge/msdk/foundation/db/e;)Lccsancom/mbridge/msdk/foundation/db/h;
    .locals 2

    const-class v0, Lccsancom/mbridge/msdk/foundation/db/h;

    monitor-enter v0

    .line 24
    :try_start_0
    sget-object v1, Lccsancom/mbridge/msdk/foundation/db/h;->b:Lccsancom/mbridge/msdk/foundation/db/h;

    if-nez v1, :cond_0

    .line 25
    new-instance v1, Lccsancom/mbridge/msdk/foundation/db/h;

    invoke-direct {v1, p0}, Lccsancom/mbridge/msdk/foundation/db/h;-><init>(Lccsancom/mbridge/msdk/foundation/db/e;)V

    sput-object v1, Lccsancom/mbridge/msdk/foundation/db/h;->b:Lccsancom/mbridge/msdk/foundation/db/h;

    .line 27
    :cond_0
    sget-object p0, Lccsancom/mbridge/msdk/foundation/db/h;->b:Lccsancom/mbridge/msdk/foundation/db/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 23
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private declared-synchronized a(J)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/d;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 98
    nop

    .line 99
    const-wide/32 v0, 0x240c8400

    sub-long/2addr p1, v0

    .line 100
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "select * from display_resource_type where click_time >= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 101
    nop

    .line 102
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/h;->getReadableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 103
    monitor-exit p0

    return-object v0

    .line 106
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/h;->getReadableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    if-eqz p1, :cond_2

    :try_start_2
    invoke-interface {p1}, Lccsanandroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 108
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p1}, Lccsanandroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 110
    :cond_1
    :try_start_3
    const-string v0, "click_time"

    invoke-interface {p1, v0}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 111
    const-string v0, "campaign_id"

    invoke-interface {p1, v0}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 112
    const-string v0, "resource_type"

    invoke-interface {p1, v0}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 113
    const-string v0, "is_click"

    invoke-interface {p1, v0}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 114
    new-instance v0, Lccsancom/mbridge/msdk/foundation/entity/d;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lccsancom/mbridge/msdk/foundation/entity/d;-><init>(JJII)V

    .line 116
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    invoke-interface {p1}, Lccsanandroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v0, :cond_1

    move-object v0, p2

    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception p2

    move-object v8, v0

    move-object v0, p2

    move-object p2, v8

    goto :goto_1

    .line 122
    :cond_2
    :goto_0
    if-eqz p1, :cond_4

    .line 123
    :try_start_4
    invoke-interface {p1}, Lccsanandroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    .line 122
    :catchall_0
    move-exception p2

    goto :goto_3

    .line 119
    :catch_2
    move-exception p1

    move-object p2, v0

    move-object v0, p1

    move-object p1, p2

    .line 120
    :goto_1
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 122
    if-eqz p1, :cond_3

    .line 123
    :try_start_6
    invoke-interface {p1}, Lccsanandroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 126
    :cond_3
    move-object v0, p2

    :cond_4
    :goto_2
    monitor-exit p0

    return-object v0

    .line 122
    :catchall_1
    move-exception p2

    move-object v0, p1

    :goto_3
    if-eqz v0, :cond_5

    .line 123
    :try_start_7
    invoke-interface {v0}, Lccsanandroid/database/Cursor;->close()V

    .line 125
    :cond_5
    throw p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 97
    :catchall_2
    move-exception p1

    monitor-exit p0

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 16

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 48
    move-object/from16 v2, p0

    invoke-direct {v2, v0, v1}, Lccsancom/mbridge/msdk/foundation/db/h;->a(J)Ljava/util/List;

    move-result-object v3

    .line 49
    if-nez v3, :cond_0

    .line 50
    const-string v0, ""

    return-object v0

    .line 52
    :cond_0
    const-wide/32 v4, 0x5265c00

    .line 53
    const/4 v6, 0x7

    new-array v7, v6, [Ljava/lang/String;

    const-string v8, "1"

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const-string v8, "2"

    const/4 v10, 0x1

    aput-object v8, v7, v10

    const/4 v8, 0x2

    const-string v11, "3"

    aput-object v11, v7, v8

    const/4 v8, 0x3

    const-string v11, "4"

    aput-object v11, v7, v8

    const/4 v8, 0x4

    const-string v11, "5"

    aput-object v11, v7, v8

    const/4 v8, 0x5

    const-string v11, "6"

    aput-object v11, v7, v8

    const/4 v8, 0x6

    const-string v11, "7"

    aput-object v11, v7, v8

    .line 54
    new-instance v8, Lccsanorg/json/JSONObject;

    invoke-direct {v8}, Lccsanorg/json/JSONObject;-><init>()V

    .line 55
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 56
    const/4 v12, 0x0

    :goto_0
    if-ge v12, v6, :cond_1

    .line 57
    new-instance v13, Lccsanorg/json/JSONArray;

    invoke-direct {v13}, Lccsanorg/json/JSONArray;-><init>()V

    .line 58
    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 61
    :cond_1
    :try_start_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lccsancom/mbridge/msdk/foundation/entity/d;

    .line 62
    iget-wide v13, v12, Lccsancom/mbridge/msdk/foundation/entity/d;->b:J

    sub-long v13, v0, v13

    div-long/2addr v13, v4

    long-to-int v14, v13

    .line 63
    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lccsanorg/json/JSONArray;

    .line 64
    invoke-virtual {v13}, Lccsanorg/json/JSONArray;->length()I

    move-result v14

    if-nez v14, :cond_2

    .line 65
    new-instance v14, Lccsanorg/json/JSONObject;

    invoke-direct {v14}, Lccsanorg/json/JSONObject;-><init>()V

    .line 66
    iget v15, v12, Lccsancom/mbridge/msdk/foundation/entity/d;->c:I

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    iget v12, v12, Lccsancom/mbridge/msdk/foundation/entity/d;->d:I

    invoke-virtual {v14, v15, v12}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 67
    invoke-virtual {v13, v14}, Lccsanorg/json/JSONArray;->put(Ljava/lang/Object;)Lccsanorg/json/JSONArray;

    .line 68
    goto :goto_4

    .line 69
    :cond_2
    nop

    .line 70
    const/4 v14, 0x0

    :goto_2
    invoke-virtual {v13}, Lccsanorg/json/JSONArray;->length()I

    move-result v15

    if-ge v14, v15, :cond_5

    .line 71
    invoke-virtual {v13, v14}, Lccsanorg/json/JSONArray;->getJSONObject(I)Lccsanorg/json/JSONObject;

    move-result-object v15

    .line 72
    iget v4, v12, Lccsancom/mbridge/msdk/foundation/entity/d;->c:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 73
    invoke-virtual {v15, v4}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 74
    nop

    .line 75
    invoke-virtual {v15, v4}, Lccsanorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_3

    iget v5, v12, Lccsancom/mbridge/msdk/foundation/entity/d;->d:I

    if-ne v5, v10, :cond_3

    .line 76
    iget v5, v12, Lccsancom/mbridge/msdk/foundation/entity/d;->d:I

    invoke-virtual {v15, v4, v5}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 81
    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    .line 70
    :cond_4
    add-int/lit8 v14, v14, 0x1

    const-wide/32 v4, 0x5265c00

    goto :goto_2

    :cond_5
    const/4 v4, 0x1

    .line 81
    :goto_3
    if-eqz v4, :cond_6

    .line 82
    new-instance v4, Lccsanorg/json/JSONObject;

    invoke-direct {v4}, Lccsanorg/json/JSONObject;-><init>()V

    .line 83
    iget v5, v12, Lccsancom/mbridge/msdk/foundation/entity/d;->c:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iget v12, v12, Lccsancom/mbridge/msdk/foundation/entity/d;->d:I

    invoke-virtual {v4, v5, v12}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 84
    invoke-virtual {v13, v4}, Lccsanorg/json/JSONArray;->put(Ljava/lang/Object;)Lccsanorg/json/JSONArray;

    .line 87
    :cond_6
    :goto_4
    const-wide/32 v4, 0x5265c00

    goto :goto_1

    .line 88
    :cond_7
    nop

    :goto_5
    if-ge v9, v6, :cond_8

    .line 89
    aget-object v0, v7, v9

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 93
    :cond_8
    goto :goto_6

    .line 91
    :catch_0
    move-exception v0

    .line 92
    invoke-virtual {v0}, Lccsanorg/json/JSONException;->printStackTrace()V

    .line 94
    :goto_6
    invoke-virtual {v8}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized a(Lccsancom/mbridge/msdk/foundation/entity/d;)V
    .locals 4

    monitor-enter p0

    .line 32
    :try_start_0
    new-instance v0, Lccsanandroid/content/ContentValues;

    invoke-direct {v0}, Lccsanandroid/content/ContentValues;-><init>()V

    .line 33
    const-string v1, "campaign_id"

    iget-wide v2, p1, Lccsancom/mbridge/msdk/foundation/entity/d;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 34
    const-string v1, "click_time"

    iget-wide v2, p1, Lccsancom/mbridge/msdk/foundation/entity/d;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 35
    const-string v1, "is_click"

    iget v2, p1, Lccsancom/mbridge/msdk/foundation/entity/d;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 36
    const-string v1, "resource_type"

    iget p1, p1, Lccsancom/mbridge/msdk/foundation/entity/d;->c:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 37
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/h;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 38
    monitor-exit p0

    return-void

    .line 40
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/h;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string v1, "display_resource_type"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Lccsanandroid/content/ContentValues;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 41
    :catch_0
    move-exception p1

    .line 42
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 44
    :goto_0
    monitor-exit p0

    return-void

    .line 31
    :goto_1
    monitor-exit p0

    throw p1
.end method
