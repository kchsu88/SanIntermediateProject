.class public Lccsansan/dc/addDownloadListener;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final addDownloadListener:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "pos_id"

    aput-object v2, v0, v1

    const-string v1, "%s = ?"

    invoke-static {v1, v0}, Lccsansan/bw/getName;->removeDownloadListener(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsansan/dc/addDownloadListener;->addDownloadListener:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils(Ljava/lang/String;Lccsansan/dt/getDownloadingRecordByUrl;Lccsanandroid/database/sqlite/SQLiteDatabase;)Z
    .locals 14

    .line 128
    const-string v1, "position"

    invoke-static/range {p3 .. p3}, Lccsansan/bw/trackReportShow;->unifiedDownload(Ljava/lang/Object;)V

    .line 133
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    new-array v13, v2, [Ljava/lang/String;

    aput-object p1, v13, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v6, "mads_ads_cache"

    const/4 v7, 0x0

    .line 134
    :try_start_1
    sget-object v8, Lccsansan/dc/addDownloadListener;->addDownloadListener:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v5, p3

    move-object v9, v13

    invoke-virtual/range {v5 .. v12}, Lccsanandroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object v4

    .line 135
    invoke-interface {v4}, Lccsanandroid/database/Cursor;->moveToFirst()Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_0

    .line 170
    invoke-static {v4}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    return v3

    :cond_0
    nop

    .line 171
    :try_start_2
    invoke-interface {v4, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v5, "play_queue"

    .line 172
    invoke-interface {v4, v5}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 173
    invoke-interface {v4, v0}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 174
    invoke-interface {v4, v5}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 176
    :try_start_3
    new-instance v5, Lccsanorg/json/JSONArray;

    invoke-direct {v5, v0}, Lccsanorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    .line 178
    invoke-virtual {v5}, Lccsanorg/json/JSONArray;->length()I

    move-result v0

    rem-int/2addr v6, v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 182
    :goto_0
    :try_start_4
    new-instance v0, Lccsanandroid/content/ContentValues;

    invoke-direct {v0}, Lccsanandroid/content/ContentValues;-><init>()V

    if-nez p2, :cond_1

    .line 193
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    :cond_1
    nop

    .line 195
    invoke-virtual/range {p2 .. p2}, Lccsansan/dt/getDownloadingRecordByUrl;->IncentiveDownloadUtils()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    const-string v1, "mads_ads_cache"

    .line 197
    :try_start_5
    sget-object v5, Lccsansan/dc/addDownloadListener;->addDownloadListener:Ljava/lang/String;

    move-object/from16 v6, p3

    invoke-virtual {v6, v1, v0, v5, v13}, Lccsanandroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Lccsanandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-ltz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    .line 204
    :goto_2
    invoke-static {v4}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    return v2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    const-string v1, "Mads.PlayQueueTable"

    .line 205
    :try_start_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "query Mads list error  : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 208
    invoke-static {v4}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    return v3

    :goto_3
    invoke-static {v4}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    .line 209
    throw v0
.end method

.method public addDownloadListener(Lccsansan/dt/getDownloadingRecordByUrl;Lccsanandroid/database/sqlite/SQLiteDatabase;)Z
    .locals 13

    .line 1
    invoke-static {p2}, Lccsansan/bw/trackReportShow;->unifiedDownload(Ljava/lang/Object;)V

    .line 2
    invoke-static {p1}, Lccsansan/bw/trackReportShow;->unifiedDownload(Ljava/lang/Object;)V

    .line 7
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-array v11, v0, [Ljava/lang/String;

    invoke-virtual {p1}, Lccsansan/dt/getDownloadingRecordByUrl;->addDownloadListener()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v11, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v4, "mads_ads_cache"

    const/4 v5, 0x0

    .line 8
    :try_start_1
    sget-object v12, Lccsansan/dc/addDownloadListener;->addDownloadListener:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p2

    move-object v6, v12

    move-object v7, v11

    invoke-virtual/range {v3 .. v10}, Lccsanandroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 9
    :try_start_2
    invoke-interface {v3}, Lccsanandroid/database/Cursor;->getCount()I

    move-result v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v5, "mads_ads_cache"

    const-string v6, "position"

    const-string v7, "play_queue"

    if-nez v4, :cond_0

    .line 10
    :try_start_3
    new-instance v4, Lccsanandroid/content/ContentValues;

    invoke-direct {v4}, Lccsanandroid/content/ContentValues;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v8, "pos_id"

    .line 12
    :try_start_4
    invoke-virtual {p1}, Lccsansan/dt/getDownloadingRecordByUrl;->addDownloadListener()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1}, Lccsansan/dt/getDownloadingRecordByUrl;->unifiedDownload()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1}, Lccsansan/dt/getDownloadingRecordByUrl;->IncentiveDownloadUtils()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v4, v6, p1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 15
    invoke-virtual {p2, v5, v1, v4}, Lccsanandroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Lccsanandroid/content/ContentValues;)J

    move-result-wide p1

    const-wide/16 v4, 0x0

    cmp-long v1, p1, v4

    if-ltz v1, :cond_3

    goto :goto_0

    .line 17
    :cond_0
    invoke-interface {v3}, Lccsanandroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 18
    invoke-interface {v3}, Lccsanandroid/database/Cursor;->moveToFirst()Z

    move-result v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v1, :cond_1

    .line 36
    invoke-static {v3}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    return v2

    :cond_1
    nop

    .line 37
    :try_start_5
    invoke-interface {v3, v7}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 38
    invoke-interface {v3, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 39
    invoke-virtual {p1}, Lccsansan/dt/getDownloadingRecordByUrl;->unifiedDownload()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v1, :cond_2

    .line 53
    invoke-static {v3}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    return v2

    .line 54
    :cond_2
    :try_start_6
    new-instance v1, Lccsanandroid/content/ContentValues;

    invoke-direct {v1}, Lccsanandroid/content/ContentValues;-><init>()V

    .line 56
    invoke-virtual {p1}, Lccsansan/dt/getDownloadingRecordByUrl;->unifiedDownload()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v7, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p1}, Lccsansan/dt/getDownloadingRecordByUrl;->IncentiveDownloadUtils()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v6, p1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 58
    invoke-virtual {p2, v5, v1, v12, v11}, Lccsanandroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Lccsanandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-ltz p1, :cond_3

    :goto_0
    goto :goto_1

    .line 65
    :cond_3
    const/4 v0, 0x0

    :goto_1
    invoke-static {v3}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    return v0

    :catchall_0
    move-exception p1

    move-object v1, v3

    goto :goto_3

    :catch_0
    move-exception p1

    move-object v1, v3

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    :goto_2
    const-string p2, "Mads.PlayQueueTable"

    .line 66
    :try_start_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insert error :"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 69
    invoke-static {v1}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    return v2

    :goto_3
    invoke-static {v1}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    .line 70
    throw p1
.end method

.method public removeDownloadListener(Ljava/lang/String;Lccsanandroid/database/sqlite/SQLiteDatabase;)Lccsansan/dt/getDownloadingRecordByUrl;
    .locals 10

    .line 71
    invoke-static {p2}, Lccsansan/bw/trackReportShow;->unifiedDownload(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 75
    const/4 v1, 0x0

    :try_start_0
    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v6, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "mads_ads_cache"

    const/4 v4, 0x0

    .line 76
    :try_start_1
    sget-object v5, Lccsansan/dc/addDownloadListener;->addDownloadListener:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p2

    invoke-virtual/range {v2 .. v9}, Lccsanandroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    :try_start_2
    invoke-interface {p2}, Lccsanandroid/database/Cursor;->moveToFirst()Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v0, :cond_0

    .line 99
    invoke-static {p2}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    return-object v1

    .line 100
    :cond_0
    :try_start_3
    new-instance v0, Lccsansan/dt/getDownloadingRecordByUrl;

    invoke-direct {v0}, Lccsansan/dt/getDownloadingRecordByUrl;-><init>()V

    const-string v2, "play_queue"

    .line 101
    invoke-interface {p2, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "position"

    .line 102
    invoke-interface {p2, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 103
    invoke-interface {p2, v2}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 104
    invoke-interface {p2, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 105
    invoke-virtual {v0, p1}, Lccsansan/dt/getDownloadingRecordByUrl;->IncentiveDownloadUtils(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v0, v2}, Lccsansan/dt/getDownloadingRecordByUrl;->addDownloadListener(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v0, v3}, Lccsansan/dt/getDownloadingRecordByUrl;->unifiedDownload(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 109
    :try_start_4
    new-instance p1, Lccsanorg/json/JSONArray;

    invoke-virtual {v0}, Lccsansan/dt/getDownloadingRecordByUrl;->unifiedDownload()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Lccsanorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p1, v3}, Lccsanorg/json/JSONArray;->getJSONObject(I)Lccsanorg/json/JSONObject;

    move-result-object p1

    const-string v1, "ad_id"

    .line 111
    invoke-virtual {p1, v1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsansan/dt/getDownloadingRecordByUrl;->unifiedDownload(Ljava/lang/String;)V

    const-string v1, "cid"

    .line 112
    invoke-virtual {p1, v1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lccsansan/dt/getDownloadingRecordByUrl;->removeDownloadListener(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 119
    :goto_0
    invoke-static {p2}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    return-object v0

    :catch_1
    move-exception p1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception p1

    move-object p2, v1

    :goto_1
    const-string v0, "Mads.PlayQueueTable"

    .line 120
    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "query Mads list error  : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 123
    invoke-static {p2}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    return-object v1

    .line 119
    :catchall_1
    move-exception p1

    move-object v1, p2

    .line 123
    :goto_2
    invoke-static {v1}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    .line 124
    throw p1
.end method

.method public removeDownloadListener(Lccsanandroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    :try_start_0
    const-string v0, "mads_ads_cache"

    .line 125
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lccsanandroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Lccsanandroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 127
    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearAdsPlayQueue error, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsanandroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Mads.PlayQueueTable"

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
