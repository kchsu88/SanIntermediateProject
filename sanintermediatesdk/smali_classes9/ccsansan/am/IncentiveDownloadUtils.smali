.class public final Lccsansan/am/IncentiveDownloadUtils;
.super Lccsanandroid/database/sqlite/SQLiteOpenHelper;
.source ""


# static fields
.field private static removeDownloadListener:Lccsansan/am/IncentiveDownloadUtils;


# instance fields
.field private unifiedDownload:Lccsanandroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 3

    .line 1
    const-string v0, "sanstats.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lccsansan/am/IncentiveDownloadUtils;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 2
    iput-object v1, p0, Lccsansan/am/IncentiveDownloadUtils;->unifiedDownload:Lccsanandroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method private IncentiveDownloadUtils(Lccsanandroid/database/Cursor;)Lccsansan/ai/addDownloadListener;
    .locals 21

    .line 58
    move-object/from16 v0, p1

    const-string v1, "sdk_ver"

    invoke-interface {v0, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 59
    const-string v1, "time_zone"

    invoke-interface {v0, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 60
    const-string v1, "commit_id"

    invoke-interface {v0, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 61
    const-string v1, "pid"

    invoke-interface {v0, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 63
    const-string v1, "app_token"

    invoke-interface {v0, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 64
    const-string v1, "app_id"

    invoke-interface {v0, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 65
    const-string v1, "device_id"

    invoke-interface {v0, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 67
    const-string v1, "release_channel"

    invoke-interface {v0, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 68
    const-string v1, "app_ver_code"

    invoke-interface {v0, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 69
    const-string v1, "app_ver_name"

    invoke-interface {v0, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 70
    const-string v1, "os_name"

    invoke-interface {v0, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 71
    const-string v1, "os_ver"

    invoke-interface {v0, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 72
    const-string v1, "language"

    invoke-interface {v0, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 73
    const-string v1, "country"

    invoke-interface {v0, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 74
    const-string v1, "manufacturer"

    invoke-interface {v0, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 75
    const-string v1, "device_model"

    invoke-interface {v0, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 77
    const-string v1, "account"

    invoke-interface {v0, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 78
    const-string v1, "app_device_id"

    invoke-interface {v0, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 80
    new-instance v0, Lccsansan/ai/addDownloadListener;

    move-object v2, v0

    invoke-direct/range {v2 .. v20}, Lccsansan/ai/addDownloadListener;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static declared-synchronized IncentiveDownloadUtils()V
    .locals 2

    const-class v0, Lccsansan/am/IncentiveDownloadUtils;

    monitor-enter v0

    .line 106
    :try_start_0
    sget-object v1, Lccsansan/am/IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/am/IncentiveDownloadUtils;

    if-eqz v1, :cond_0

    .line 107
    invoke-virtual {v1}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    .line 105
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private addDownloadListener(Lccsansan/ai/removeDownloadListener;)Lccsanandroid/content/ContentValues;
    .locals 7

    .line 81
    new-instance v0, Lccsanandroid/content/ContentValues;

    invoke-direct {v0}, Lccsanandroid/content/ContentValues;-><init>()V

    .line 82
    invoke-virtual {p1}, Lccsansan/ai/removeDownloadListener;->getDownloadingList()Ljava/lang/String;

    move-result-object v1

    const-string v2, "commit_id"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p1}, Lccsansan/ai/removeDownloadListener;->addDownloadListener()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "sn"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 84
    invoke-virtual {p1}, Lccsansan/ai/removeDownloadListener;->unifiedDownload()Lccsansan/ai/removeDownloadListener$getDownloadingList;

    move-result-object v1

    invoke-virtual {v1}, Lccsansan/ai/removeDownloadListener$getDownloadingList;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 85
    invoke-virtual {p1}, Lccsansan/ai/removeDownloadListener;->removeDownloadListener()Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p1}, Lccsansan/ai/removeDownloadListener;->IncentiveDownloadUtils()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v3, "time"

    invoke-virtual {v0, v3, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 87
    invoke-virtual {p1}, Lccsansan/ai/removeDownloadListener;->getDownloadingRecordByUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 88
    invoke-virtual {p1}, Lccsansan/ai/removeDownloadListener;->getDownloadingRecordByUrl()Ljava/lang/String;

    move-result-object v1

    const-string v3, "label"

    invoke-virtual {v0, v3, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_0
    invoke-virtual {p1}, Lccsansan/ai/removeDownloadListener;->getDownloadedRecordByUrl()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v3, "value"

    invoke-virtual {v0, v3, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 91
    invoke-virtual {p1}, Lccsansan/ai/removeDownloadListener;->getDownloadStatusByUrl()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 92
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 96
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsanandroid/util/Pair;

    .line 97
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v4, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v4, v4, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v5, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v4, v1, 0x1

    const/16 v5, 0x20

    if-lt v1, v5, :cond_2

    goto :goto_1

    :cond_2
    move v1, v4

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0
.end method

.method private getDownloadingList(Lccsansan/ai/addDownloadListener;)Lccsanandroid/content/ContentValues;
    .locals 3

    .line 25
    new-instance v0, Lccsanandroid/content/ContentValues;

    invoke-direct {v0}, Lccsanandroid/content/ContentValues;-><init>()V

    .line 26
    invoke-virtual {p1}, Lccsansan/ai/addDownloadListener;->getDownloadingList()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "sdk_ver"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 27
    invoke-virtual {p1}, Lccsansan/ai/addDownloadListener;->addDownloadListener()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "time_zone"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 28
    invoke-virtual {p1}, Lccsansan/ai/addDownloadListener;->removeDownloadListener()Ljava/lang/String;

    move-result-object v1

    const-string v2, "commit_id"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1}, Lccsansan/ai/addDownloadListener;->unifiedDownload()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pid"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1}, Lccsansan/ai/addDownloadListener;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_token"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1}, Lccsansan/ai/addDownloadListener;->getDownloadingRecordByUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_id"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p1}, Lccsansan/ai/addDownloadListener;->getDownloadedList()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 34
    invoke-virtual {p1}, Lccsansan/ai/addDownloadListener;->getDownloadedList()Ljava/lang/String;

    move-result-object v1

    const-string v2, "device_id"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    :cond_0
    invoke-virtual {p1}, Lccsansan/ai/addDownloadListener;->getDownloadedRecordByUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 37
    invoke-virtual {p1}, Lccsansan/ai/addDownloadListener;->getDownloadedRecordByUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "release_channel"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :cond_1
    invoke-virtual {p1}, Lccsansan/ai/addDownloadListener;->getDownloadStatusByUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 39
    invoke-virtual {p1}, Lccsansan/ai/addDownloadListener;->getDownloadStatusByUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_ver_name"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :cond_2
    invoke-virtual {p1}, Lccsansan/ai/addDownloadListener;->deleteDownItem()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "app_ver_code"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 41
    invoke-virtual {p1}, Lccsansan/ai/addDownloadListener;->pause()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 42
    invoke-virtual {p1}, Lccsansan/ai/addDownloadListener;->pause()Ljava/lang/String;

    move-result-object v1

    const-string v2, "os_name"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_3
    invoke-virtual {p1}, Lccsansan/ai/addDownloadListener;->deleteDownList()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 44
    invoke-virtual {p1}, Lccsansan/ai/addDownloadListener;->deleteDownList()Ljava/lang/String;

    move-result-object v1

    const-string v2, "os_ver"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :cond_4
    invoke-virtual {p1}, Lccsansan/ai/addDownloadListener;->resume()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 46
    invoke-virtual {p1}, Lccsansan/ai/addDownloadListener;->resume()Ljava/lang/String;

    move-result-object v1

    const-string v2, "language"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_5
    invoke-virtual {p1}, Lccsansan/ai/addDownloadListener;->getDownloadedCount()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 48
    invoke-virtual {p1}, Lccsansan/ai/addDownloadListener;->getDownloadedCount()Ljava/lang/String;

    move-result-object v1

    const-string v2, "country"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_6
    invoke-virtual {p1}, Lccsansan/ai/addDownloadListener;->getDownloadingCount()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 50
    invoke-virtual {p1}, Lccsansan/ai/addDownloadListener;->getDownloadingCount()Ljava/lang/String;

    move-result-object v1

    const-string v2, "manufacturer"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :cond_7
    invoke-virtual {p1}, Lccsansan/ai/addDownloadListener;->IncentiveSDK()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 52
    invoke-virtual {p1}, Lccsansan/ai/addDownloadListener;->IncentiveSDK()Ljava/lang/String;

    move-result-object v1

    const-string v2, "device_model"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_8
    invoke-virtual {p1}, Lccsansan/ai/addDownloadListener;->trackReportShow()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 55
    invoke-virtual {p1}, Lccsansan/ai/addDownloadListener;->trackReportShow()Ljava/lang/String;

    move-result-object v1

    const-string v2, "account"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_9
    invoke-virtual {p1}, Lccsansan/ai/addDownloadListener;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 57
    invoke-virtual {p1}, Lccsansan/ai/addDownloadListener;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object p1

    const-string v1, "app_device_id"

    invoke-virtual {v0, v1, p1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    return-object v0
.end method

.method private unifiedDownload(Lccsanandroid/database/Cursor;)Lccsansan/ai/removeDownloadListener;
    .locals 18

    .line 88
    move-object/from16 v0, p1

    const-string v1, "time"

    invoke-interface {v0, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 89
    const-string v1, "commit_id"

    invoke-interface {v0, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 90
    const-string v1, "sn"

    invoke-interface {v0, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 92
    const-string v1, "type"

    invoke-interface {v0, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 93
    const-string v2, "name"

    invoke-interface {v0, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 94
    const-string v6, "label"

    invoke-interface {v0, v6}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 95
    const-string v6, "value"

    invoke-interface {v0, v6}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v0, v11}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 97
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const/4 v14, 0x1

    :goto_0
    const/16 v15, 0x20

    if-gt v14, v15, :cond_1

    .line 99
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v0, v15}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v0, v15}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 100
    move-object/from16 v16, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 101
    invoke-static {v15}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_0

    goto :goto_1

    .line 103
    :cond_0
    new-instance v0, Lccsanandroid/util/Pair;

    invoke-direct {v0, v15, v2}, Lccsanandroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p1

    move-object/from16 v2, v16

    goto :goto_0

    .line 105
    :cond_1
    new-instance v0, Lccsansan/ai/removeDownloadListener;

    invoke-static {v1}, Lccsansan/ai/removeDownloadListener$getDownloadingList;->fromInt(I)Lccsansan/ai/removeDownloadListener$getDownloadingList;

    move-result-object v6

    move-object v2, v0

    invoke-direct/range {v2 .. v13}, Lccsansan/ai/removeDownloadListener;-><init>(Ljava/lang/String;JLccsansan/ai/removeDownloadListener$getDownloadingList;JLjava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    return-object v0
.end method

.method public static unifiedDownload()Lccsansan/am/IncentiveDownloadUtils;
    .locals 3

    .line 1
    sget-object v0, Lccsansan/am/IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/am/IncentiveDownloadUtils;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lccsansan/am/IncentiveDownloadUtils;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lccsansan/am/IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/am/IncentiveDownloadUtils;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lccsansan/am/IncentiveDownloadUtils;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lccsansan/am/IncentiveDownloadUtils;-><init>(Lccsanandroid/content/Context;)V

    sput-object v1, Lccsansan/am/IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/am/IncentiveDownloadUtils;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8
    :cond_1
    :goto_0
    sget-object v0, Lccsansan/am/IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/am/IncentiveDownloadUtils;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized addDownloadListener()I
    .locals 6

    monitor-enter p0

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v3, "select count (*) from %s"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v4, 0x1

    :try_start_2
    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "events"

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {p0}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    iput-object v3, p0, Lccsansan/am/IncentiveDownloadUtils;->unifiedDownload:Lccsanandroid/database/sqlite/SQLiteDatabase;

    .line 4
    invoke-virtual {v3, v2, v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Lccsanandroid/database/Cursor;->moveToFirst()Z

    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v2, :cond_0

    .line 13
    :try_start_3
    invoke-static {v0}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v1

    :cond_0
    nop

    .line 14
    :try_start_4
    invoke-interface {v0, v1}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 19
    :try_start_5
    invoke-static {v0}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return v1

    .line 0
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 19
    :catchall_1
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_6
    const-string v3, "AD.SanStats.DB"

    const-string v4, "get events count error"

    .line 20
    invoke-static {v3, v4, v2}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 23
    :try_start_7
    invoke-static {v0}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return v1

    :goto_0
    :try_start_8
    invoke-static {v0}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    .line 24
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 0
    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addDownloadListener(I)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lccsansan/ai/addDownloadListener;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 7
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    .line 10
    :try_start_1
    invoke-virtual {p0}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lccsansan/am/IncentiveDownloadUtils;->unifiedDownload:Lccsanandroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v3, "headers"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 11
    :try_start_3
    sget-object v4, Lccsansan/am/getDownloadingList;->addDownloadListener:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v2 .. v10}, Lccsanandroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object v1

    .line 12
    invoke-interface {v1}, Lccsanandroid/database/Cursor;->moveToNext()Z

    move-result p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez p1, :cond_0

    .line 23
    :try_start_4
    invoke-static {v1}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-object v0

    .line 24
    :cond_0
    :try_start_5
    invoke-direct {p0, v1}, Lccsansan/am/IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsanandroid/database/Cursor;)Lccsansan/ai/addDownloadListener;

    move-result-object p1

    .line 25
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    invoke-interface {v1}, Lccsanandroid/database/Cursor;->moveToNext()Z

    move-result p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez p1, :cond_0

    .line 32
    :try_start_6
    invoke-static {v1}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_7
    const-string v2, "AD.SanStats.DB"

    const-string v3, "get last session entity failed!"

    .line 33
    invoke-static {v2, v3, p1}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 35
    :try_start_8
    invoke-static {v1}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    monitor-exit p0

    return-object v0

    :goto_0
    :try_start_9
    invoke-static {v1}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    .line 36
    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 6
    :catchall_1
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized getDownloadingList(Lccsansan/ai/removeDownloadListener;)Z
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    monitor-exit p0

    return v0

    .line 63
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lccsansan/am/IncentiveDownloadUtils;->unifiedDownload:Lccsanandroid/database/sqlite/SQLiteDatabase;

    .line 64
    invoke-direct {p0, p1}, Lccsansan/am/IncentiveDownloadUtils;->addDownloadListener(Lccsansan/ai/removeDownloadListener;)Lccsanandroid/content/ContentValues;

    move-result-object p1

    .line 65
    iget-object v1, p0, Lccsansan/am/IncentiveDownloadUtils;->unifiedDownload:Lccsanandroid/database/sqlite/SQLiteDatabase;

    const-string v2, "events"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p1}, Lccsanandroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Lccsanandroid/content/ContentValues;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v3, -0x1

    cmp-long p1, v1, v3

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    monitor-exit p0

    return v0

    .line 62
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 65
    :catch_0
    move-exception p1

    :try_start_1
    const-string v1, "AD.SanStats.DB"

    const-string v2, "add event failed!"

    .line 67
    invoke-static {v1, v2, p1}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    .line 62
    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public onCreate(Lccsanandroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    :try_start_0
    const-string v0, "CREATE TABLE IF NOT EXISTS headers (_id INTEGER PRIMARY KEY,sdk_ver INTEGER,time_zone INTEGER,commit_id TEXT,pid TEXT,app_token TEXT,app_id TEXT,device_id TEXT,release_channel TEXT,app_ver_name TEXT,app_ver_code INTEGER,os_name TEXT,os_ver TEXT,language TEXT,country TEXT,manufacturer TEXT,device_model TEXT,resolution TEXT,net_type INTEGER,account TEXT,app_device_id TEXT,mac_address TEXT,android_id TEXT,imei TEXT,cid_sn TEXT,build_num TEXT,mobile_data_type INTEGER,promotion_channel TEXT,carrier TEXT );"

    .line 1
    invoke-virtual {p1, v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS events (_id INTEGER PRIMARY KEY,commit_id TEXT,sn LONG,type INTEGER,name TEXT,time INTEGER,label TEXT,value INTEGER,name1 TEXT,value1 TEXT,name2 TEXT,value2 TEXT,name3 TEXT,value3 TEXT,name4 TEXT,value4 TEXT,name5 TEXT,value5 TEXT,name6 TEXT,value6 TEXT,name7 TEXT,value7 TEXT,name8 TEXT,value8 TEXT,name9 TEXT,value9 TEXT,name10 TEXT,value10 TEXT,name11 TEXT,value11 TEXT,name12 TEXT,value12 TEXT,name13 TEXT,value13 TEXT,name14 TEXT,value14 TEXT,name15 TEXT,value15 TEXT,name16 TEXT,value16 TEXT,name17 TEXT,value17 TEXT,name18 TEXT,value18 TEXT,name19 TEXT,value19 TEXT,name20 TEXT,value20 TEXT,name21 TEXT,value21 TEXT,name22 TEXT,value22 TEXT,name23 TEXT,value23 TEXT,name24 TEXT,value24 TEXT,name25 TEXT,value25 TEXT,name26 TEXT,value26 TEXT,name27 TEXT,value27 TEXT,name28 TEXT,value28 TEXT,name29 TEXT,value29 TEXT,name30 TEXT,value30 TEXT,name31 TEXT,value31 TEXT,name32 TEXT,value32 TEXT );"

    .line 2
    invoke-virtual {p1, v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Lccsanandroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate db Exception = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AD.SanStats.DB"

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onDowngrade(Lccsanandroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    :try_start_0
    const-string p2, "drop table if exists headers"

    .line 1
    invoke-virtual {p1, p2}, Lccsanandroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "drop table if exists events"

    .line 2
    invoke-virtual {p1, p2}, Lccsanandroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p1}, Lccsansan/am/IncentiveDownloadUtils;->onCreate(Lccsanandroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Lccsanandroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onDowngrade Exception = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsanandroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AD.SanStats.DB"

    invoke-static {p2, p1}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onUpgrade(Lccsanandroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method

.method public declared-synchronized removeDownloadListener()J
    .locals 9

    monitor-enter p0

    .line 1
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v4, "SELECT MAX(%s) FROM %s"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v5, 0x2

    :try_start_2
    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "sn"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x1

    const-string v8, "events"

    aput-object v8, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 3
    invoke-virtual {p0}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    iput-object v4, p0, Lccsansan/am/IncentiveDownloadUtils;->unifiedDownload:Lccsanandroid/database/sqlite/SQLiteDatabase;

    .line 4
    invoke-virtual {v4, v3, v2}, Lccsanandroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object v2

    .line 5
    invoke-interface {v2}, Lccsanandroid/database/Cursor;->moveToFirst()Z

    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v3, :cond_0

    .line 16
    :try_start_3
    invoke-static {v2}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-wide v0

    :cond_0
    nop

    .line 17
    :try_start_4
    invoke-interface {v2, v7}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    const-string v5, "AD.SanStats.DB"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 18
    :try_start_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "query max seq number :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 24
    :try_start_7
    invoke-static {v2}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return-wide v3

    .line 0
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 24
    :catchall_1
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_8
    const-string v4, "AD.SanStats.DB"

    const-string v5, "query max seq number error"

    .line 25
    invoke-static {v4, v5, v3}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 28
    :try_start_9
    invoke-static {v2}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    monitor-exit p0

    return-wide v0

    :goto_0
    :try_start_a
    invoke-static {v2}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    .line 29
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 0
    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeDownloadListener(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 37
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lccsansan/am/IncentiveDownloadUtils;->unifiedDownload:Lccsanandroid/database/sqlite/SQLiteDatabase;

    .line 38
    invoke-virtual {v1}, Lccsanandroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v2, 0x0

    .line 41
    :goto_0
    :try_start_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 42
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v3, :cond_0

    :try_start_3
    const-string v3, ""

    goto :goto_1

    :cond_0
    const-string v3, "OR "
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 43
    :goto_1
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "commit_id = ?"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 45
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 46
    iget-object v2, p0, Lccsansan/am/IncentiveDownloadUtils;->unifiedDownload:Lccsanandroid/database/sqlite/SQLiteDatabase;

    const-string v3, "headers"

    invoke-virtual {v2, v3, v1, p1}, Lccsanandroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 47
    iget-object v2, p0, Lccsansan/am/IncentiveDownloadUtils;->unifiedDownload:Lccsanandroid/database/sqlite/SQLiteDatabase;

    const-string v3, "events"

    invoke-virtual {v2, v3, v1, p1}, Lccsanandroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 50
    :try_start_5
    iget-object p1, p0, Lccsansan/am/IncentiveDownloadUtils;->unifiedDownload:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Lccsanandroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 55
    :try_start_6
    iget-object p1, p0, Lccsansan/am/IncentiveDownloadUtils;->unifiedDownload:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Lccsanandroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_7
    const-string v1, "AD.SanStats.DB"

    const-string v2, "remove commit item failed!"

    .line 56
    invoke-static {v1, v2, p1}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 59
    :try_start_8
    iget-object p1, p0, Lccsansan/am/IncentiveDownloadUtils;->unifiedDownload:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Lccsanandroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    monitor-exit p0

    return v0

    :goto_2
    :try_start_9
    iget-object v1, p0, Lccsansan/am/IncentiveDownloadUtils;->unifiedDownload:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Lccsanandroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 60
    throw p1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 36
    :catchall_1
    move-exception p1

    goto :goto_3

    .line 60
    :catch_1
    move-exception p1

    :try_start_a
    const-string v1, "AD.SanStats.DB"

    .line 62
    invoke-static {v1, p1}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    monitor-exit p0

    return v0

    .line 36
    :goto_3
    monitor-exit p0

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public declared-synchronized removeDownloadListener(Lccsansan/ai/addDownloadListener;)Z
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lccsansan/am/IncentiveDownloadUtils;->getDownloadingList(Lccsansan/ai/addDownloadListener;)Lccsanandroid/content/ContentValues;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lccsansan/am/IncentiveDownloadUtils;->unifiedDownload:Lccsanandroid/database/sqlite/SQLiteDatabase;

    const-string v2, "headers"

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v1, v2, v3, p1}, Lccsanandroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Lccsanandroid/content/ContentValues;)J

    move-result-wide v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v3, -0x1

    cmp-long p1, v1, v3

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    monitor-exit p0

    return v0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v1, "AD.SanStats.DB"

    const-string v2, "add client entity failed!"

    .line 6
    invoke-static {v1, v2, p1}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v0

    .line 0
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unifiedDownload(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lccsansan/ai/removeDownloadListener;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 68
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "commit_id = ?"

    const/4 v1, 0x1

    .line 71
    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v5, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 p1, 0x0

    .line 74
    :try_start_1
    invoke-virtual {p0}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lccsansan/am/IncentiveDownloadUtils;->unifiedDownload:Lccsanandroid/database/sqlite/SQLiteDatabase;

    const-string v2, "events"

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 75
    invoke-virtual/range {v1 .. v9}, Lccsanandroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object p1

    .line 76
    :goto_0
    invoke-interface {p1}, Lccsanandroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    invoke-direct {p0, p1}, Lccsansan/am/IncentiveDownloadUtils;->unifiedDownload(Lccsanandroid/database/Cursor;)Lccsansan/ai/removeDownloadListener;

    move-result-object v1

    .line 78
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 83
    :cond_0
    :try_start_2
    invoke-static {p1}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_3
    const-string v2, "AD.SanStats.DB"

    const-string v3, "get events failed!"

    .line 84
    invoke-static {v2, v3, v1}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 86
    :try_start_4
    invoke-static {p1}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_1
    monitor-exit p0

    return-object v0

    :goto_2
    :try_start_5
    invoke-static {p1}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    .line 87
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 67
    :catchall_1
    move-exception p1

    monitor-exit p0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method
