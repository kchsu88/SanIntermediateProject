.class public final Lccsancom/mbridge/msdk/foundation/db/c;
.super Lccsancom/mbridge/msdk/foundation/db/a;
.source "CampaignClickTimeDao.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/mbridge/msdk/foundation/db/a<",
        "Lccsancom/mbridge/msdk/foundation/entity/c;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Lccsancom/mbridge/msdk/foundation/db/c;


# direct methods
.method private constructor <init>(Lccsancom/mbridge/msdk/foundation/db/e;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/foundation/db/a;-><init>(Lccsancom/mbridge/msdk/foundation/db/e;)V

    .line 17
    return-void
.end method

.method public static declared-synchronized a(Lccsancom/mbridge/msdk/foundation/db/e;)Lccsancom/mbridge/msdk/foundation/db/c;
    .locals 2

    const-class v0, Lccsancom/mbridge/msdk/foundation/db/c;

    monitor-enter v0

    .line 20
    :try_start_0
    sget-object v1, Lccsancom/mbridge/msdk/foundation/db/c;->a:Lccsancom/mbridge/msdk/foundation/db/c;

    if-nez v1, :cond_0

    .line 21
    new-instance v1, Lccsancom/mbridge/msdk/foundation/db/c;

    invoke-direct {v1, p0}, Lccsancom/mbridge/msdk/foundation/db/c;-><init>(Lccsancom/mbridge/msdk/foundation/db/e;)V

    sput-object v1, Lccsancom/mbridge/msdk/foundation/db/c;->a:Lccsancom/mbridge/msdk/foundation/db/c;

    .line 23
    :cond_0
    sget-object p0, Lccsancom/mbridge/msdk/foundation/db/c;->a:Lccsancom/mbridge/msdk/foundation/db/c;
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


# virtual methods
.method public final declared-synchronized a()I
    .locals 4

    monitor-enter p0

    .line 148
    nop

    .line 149
    nop

    .line 151
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "select count(*) from click_time"

    .line 152
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/c;->getReadableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object v0

    .line 153
    if-eqz v0, :cond_0

    .line 154
    invoke-interface {v0}, Lccsanandroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 155
    invoke-interface {v0, v1}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    :cond_0
    if-eqz v0, :cond_1

    .line 162
    :goto_0
    :try_start_1
    invoke-interface {v0}, Lccsanandroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 161
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 158
    :catch_0
    move-exception v2

    .line 159
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 161
    if-eqz v0, :cond_1

    .line 162
    goto :goto_0

    .line 166
    :cond_1
    :goto_1
    monitor-exit p0

    return v1

    .line 161
    :goto_2
    if-eqz v0, :cond_2

    .line 162
    :try_start_3
    invoke-interface {v0}, Lccsanandroid/database/Cursor;->close()V

    .line 164
    :cond_2
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 147
    :catchall_1
    move-exception v0

    monitor-exit p0

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public final declared-synchronized a(I)Ljava/util/List;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/c;",
            ">;"
        }
    .end annotation

    move/from16 v0, p1

    monitor-enter p0

    .line 58
    nop

    .line 59
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "select * from click_time LIMIT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 61
    nop

    .line 62
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/foundation/db/c;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 63
    monitor-exit p0

    return-object v3

    .line 66
    :cond_0
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/foundation/db/c;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2, v1, v3}, Lccsanandroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    if-eqz v1, :cond_4

    :try_start_2
    invoke-interface {v1}, Lccsanandroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_4

    .line 68
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 69
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 70
    :goto_0
    invoke-interface {v1}, Lccsanandroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 71
    if-lt v5, v0, :cond_1

    .line 72
    goto/16 :goto_1

    .line 74
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 75
    const-string v6, "id"

    invoke-interface {v1, v6}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 76
    const-string v7, "campaignId"

    .line 77
    invoke-interface {v1, v7}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 76
    invoke-interface {v1, v7}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 78
    const-string v7, "click_type"

    .line 79
    invoke-interface {v1, v7}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 78
    invoke-interface {v1, v7}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 80
    const-string v7, "click_duration"

    .line 81
    invoke-interface {v1, v7}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 80
    invoke-interface {v1, v7}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 82
    const-string v7, "last_url"

    .line 83
    invoke-interface {v1, v7}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 82
    invoke-interface {v1, v7}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 84
    const-string v7, "type"

    invoke-interface {v1, v7}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 85
    const-string v7, "code"

    invoke-interface {v1, v7}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 86
    const-string v7, "header"

    .line 87
    invoke-interface {v1, v7}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 86
    invoke-interface {v1, v7}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 88
    const-string v7, "exception"

    .line 89
    invoke-interface {v1, v7}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 88
    invoke-interface {v1, v7}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 90
    const-string v7, "content"

    .line 91
    invoke-interface {v1, v7}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 90
    invoke-interface {v1, v7}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 92
    const-string v7, "unit_id"

    .line 93
    invoke-interface {v1, v7}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 92
    invoke-interface {v1, v7}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 94
    const-string v7, "rid"

    invoke-interface {v1, v7}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 95
    const-string v7, "rid_n"

    invoke-interface {v1, v7}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 96
    const-string v7, "landing_type"

    .line 97
    invoke-interface {v1, v7}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 96
    invoke-interface {v1, v7}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 98
    const-string v7, "link_type"

    .line 99
    invoke-interface {v1, v7}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 98
    invoke-interface {v1, v7}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 100
    const-string v7, "network_type"

    .line 101
    invoke-interface {v1, v7}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 100
    invoke-interface {v1, v7}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 102
    const-string v7, "network_str"

    .line 103
    invoke-interface {v1, v7}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 102
    invoke-interface {v1, v7}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 104
    const-string v7, "market_result"

    .line 105
    invoke-interface {v1, v7}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 104
    invoke-interface {v1, v7}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 106
    const-string v7, "click_time"

    .line 107
    invoke-interface {v1, v7}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 106
    invoke-interface {v1, v7}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 108
    new-instance v7, Lccsancom/mbridge/msdk/foundation/entity/c;

    move-object v8, v7

    invoke-direct/range {v8 .. v26}, Lccsancom/mbridge/msdk/foundation/entity/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;IILjava/lang/String;IILjava/lang/String;)V

    .line 112
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/foundation/db/c;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    const-string v8, "click_time"

    const-string v9, "id = ?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v10, v4

    invoke-virtual {v7, v8, v9, v10}, Lccsanandroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 115
    goto/16 :goto_0

    .line 117
    :cond_2
    :goto_1
    nop

    .line 122
    if-eqz v1, :cond_3

    .line 123
    :try_start_3
    invoke-interface {v1}, Lccsanandroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 117
    :cond_3
    monitor-exit p0

    return-object v2

    .line 119
    :catch_0
    move-exception v0

    goto :goto_2

    .line 122
    :cond_4
    if-eqz v1, :cond_5

    .line 123
    goto :goto_3

    .line 122
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 119
    :catch_1
    move-exception v0

    move-object v1, v3

    .line 120
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 122
    if-eqz v1, :cond_5

    .line 123
    :goto_3
    :try_start_5
    invoke-interface {v1}, Lccsanandroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 127
    :cond_5
    monitor-exit p0

    return-object v3

    .line 122
    :catchall_1
    move-exception v0

    move-object v3, v1

    :goto_4
    if-eqz v3, :cond_6

    .line 123
    :try_start_6
    invoke-interface {v3}, Lccsanandroid/database/Cursor;->close()V

    .line 125
    :cond_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 57
    :catchall_2
    move-exception v0

    monitor-exit p0

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method
