.class public Lccsansan/cp/IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static IncentiveDownloadUtils:C

.field private static getDownloadStatusByUrl:I

.field private static getDownloadedList:I

.field private static getDownloadingList:C

.field private static getDownloadingRecordByUrl:C

.field private static removeDownloadListener:C


# instance fields
.field private addDownloadListener:Lccsanandroid/database/sqlite/SQLiteDatabase;

.field final unifiedDownload:Lccsanandroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsansan/cp/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    const/4 v0, 0x1

    sput v0, Lccsansan/cp/IncentiveDownloadUtils;->getDownloadedList:I

    const/16 v0, 0x1c56

    sput-char v0, Lccsansan/cp/IncentiveDownloadUtils;->getDownloadingList:C

    const v0, 0xd334

    sput-char v0, Lccsansan/cp/IncentiveDownloadUtils;->removeDownloadListener:C

    const v0, 0xf2a6

    sput-char v0, Lccsansan/cp/IncentiveDownloadUtils;->getDownloadingRecordByUrl:C

    const/16 v0, 0x18a3

    sput-char v0, Lccsansan/cp/IncentiveDownloadUtils;->IncentiveDownloadUtils:C

    return-void
.end method

.method public constructor <init>(Lccsanandroid/database/sqlite/SQLiteOpenHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lccsansan/cp/IncentiveDownloadUtils;->unifiedDownload:Lccsanandroid/database/sqlite/SQLiteOpenHelper;

    return-void
.end method

.method private getDownloadingList(Lccsanandroid/database/Cursor;)Lccsansan/cs/IncentiveDownloadUtils;
    .locals 4

    .line 42
    nop

    .line 0
    const/4 v0, 0x0

    .line 28
    :try_start_0
    new-instance v1, Lccsansan/cs/IncentiveDownloadUtils;

    invoke-direct {v1}, Lccsansan/cs/IncentiveDownloadUtils;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v0, "source_url"

    .line 29
    invoke-interface {p1, v0}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lccsansan/cs/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;)V

    const-string v0, "complete_time"

    .line 30
    invoke-interface {p1, v0}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lccsansan/cs/IncentiveDownloadUtils;->unifiedDownload(J)V

    const-string v0, "start_time"

    .line 31
    invoke-interface {p1, v0}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lccsansan/cs/IncentiveDownloadUtils;->removeDownloadListener(J)V

    const-string v0, "status"

    .line 32
    invoke-interface {p1, v0}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lccsansan/cs/IncentiveDownloadUtils$unifiedDownload;->fromInt(I)Lccsansan/cs/IncentiveDownloadUtils$unifiedDownload;

    move-result-object v0

    invoke-virtual {v1, v0}, Lccsansan/cs/IncentiveDownloadUtils;->unifiedDownload(Lccsansan/cs/IncentiveDownloadUtils$unifiedDownload;)V

    const-string v0, "filepath"

    .line 33
    invoke-interface {p1, v0}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lccsansan/cs/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;)V

    const-string v0, "item"

    .line 34
    invoke-interface {p1, v0}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 35
    new-instance v2, Lccsansan/cs/addDownloadListener;

    invoke-direct {v2}, Lccsansan/cs/addDownloadListener;-><init>()V

    .line 36
    invoke-virtual {v2, v0}, Lccsansan/cs/addDownloadListener;->removeDownloadListener(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v1, v2}, Lccsansan/cs/IncentiveDownloadUtils;->addDownloadListener(Lccsansan/cs/addDownloadListener;)V

    const-string v0, "type"

    .line 38
    invoke-interface {p1, v0}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsansan/cs/unifiedDownload;->fromString(Ljava/lang/String;)Lccsansan/cs/unifiedDownload;

    move-result-object v0

    invoke-virtual {v1, v0}, Lccsansan/cs/IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsansan/cs/unifiedDownload;)V

    const-string v0, "expire"

    .line 39
    invoke-interface {p1, v0}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lccsansan/cs/IncentiveDownloadUtils;->IncentiveDownloadUtils(J)V

    const-string v0, "complete_size"

    .line 40
    invoke-interface {p1, v0}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lccsansan/cs/IncentiveDownloadUtils;->getDownloadingList(J)V

    const-string v0, "all_size"

    .line 41
    invoke-interface {p1, v0}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lccsansan/cs/IncentiveDownloadUtils;->addDownloadListener(J)V

    const-string v0, "retry"

    .line 42
    invoke-interface {p1, v0}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result p1

    invoke-virtual {v1, p1}, Lccsansan/cs/IncentiveDownloadUtils;->unifiedDownload(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    :goto_0
    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception p1

    :goto_1
    sget p1, Lccsansan/cp/IncentiveDownloadUtils;->getDownloadedList:I

    add-int/lit8 p1, p1, 0x1

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lccsansan/cp/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    rem-int/lit8 p1, p1, 0x2

    return-object v0
.end method

.method private unifiedDownload(Lccsansan/cs/IncentiveDownloadUtils;)Lccsanandroid/content/ContentValues;
    .locals 6

    .line 21
    nop

    .line 1
    new-instance v0, Lccsanandroid/content/ContentValues;

    invoke-direct {v0}, Lccsanandroid/content/ContentValues;-><init>()V

    .line 2
    invoke-virtual {p1}, Lccsansan/cs/IncentiveDownloadUtils;->removeDownloadListener()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p1}, Lccsansan/cs/IncentiveDownloadUtils;->removeDownloadListener()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    invoke-virtual {p1}, Lccsansan/cs/IncentiveDownloadUtils;->removeDownloadListener()Ljava/lang/String;

    move-result-object v1

    const-string v2, "source_url"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lccsansan/cs/IncentiveDownloadUtils;->resume()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "complete_time"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 7
    invoke-virtual {p1}, Lccsansan/cs/IncentiveDownloadUtils;->IncentiveDownloadUtils()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "start_time"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 8
    invoke-virtual {p1}, Lccsansan/cs/IncentiveDownloadUtils;->getDownloadStatusByUrl()Lccsansan/cs/IncentiveDownloadUtils$unifiedDownload;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {p1}, Lccsansan/cs/IncentiveDownloadUtils;->getDownloadStatusByUrl()Lccsansan/cs/IncentiveDownloadUtils$unifiedDownload;

    move-result-object v1

    invoke-virtual {v1}, Lccsansan/cs/IncentiveDownloadUtils$unifiedDownload;->toInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 11
    :cond_1
    invoke-virtual {p1}, Lccsansan/cs/IncentiveDownloadUtils;->getDownloadedRecordByUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "filepath"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Lccsansan/cs/IncentiveDownloadUtils;->getDownloadedList()Lccsansan/cs/addDownloadListener;

    move-result-object v1

    const/4 v2, 0x2

    if-eqz v1, :cond_2

    .line 21
    const/16 v1, 0xe

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    :goto_0
    packed-switch v1, :pswitch_data_0

    :goto_1
    goto :goto_2

    .line 13
    :pswitch_0
    invoke-virtual {p1}, Lccsansan/cs/IncentiveDownloadUtils;->getDownloadedList()Lccsansan/cs/addDownloadListener;

    move-result-object v1

    invoke-virtual {v1}, Lccsansan/cs/addDownloadListener;->unifiedDownload()Ljava/lang/String;

    move-result-object v1

    const-string v3, "item"

    invoke-virtual {v0, v3, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    sget v1, Lccsansan/cp/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    add-int/lit8 v1, v1, 0xb

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsansan/cp/IncentiveDownloadUtils;->getDownloadedList:I

    rem-int/2addr v1, v2

    goto :goto_1

    .line 15
    :goto_2
    invoke-virtual {p1}, Lccsansan/cs/IncentiveDownloadUtils;->getDownloadingList()Lccsansan/cs/unifiedDownload;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    .line 21
    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    const/4 v1, 0x1

    :goto_3
    packed-switch v1, :pswitch_data_1

    .line 16
    invoke-virtual {p1}, Lccsansan/cs/IncentiveDownloadUtils;->getDownloadingList()Lccsansan/cs/unifiedDownload;

    move-result-object v1

    invoke-virtual {v1}, Lccsansan/cs/unifiedDownload;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "type"

    invoke-virtual {v0, v5, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    sget v1, Lccsansan/cp/IncentiveDownloadUtils;->getDownloadedList:I

    add-int/lit8 v1, v1, 0x37

    rem-int/lit16 v5, v1, 0x80

    sput v5, Lccsansan/cp/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    rem-int/2addr v1, v2

    if-eqz v1, :cond_4

    goto :goto_4

    :cond_4
    const/4 v3, 0x1

    .line 18
    :goto_4
    :pswitch_1
    invoke-virtual {p1}, Lccsansan/cs/IncentiveDownloadUtils;->getDownloadingRecordByUrl()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "complete_size"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 19
    invoke-virtual {p1}, Lccsansan/cs/IncentiveDownloadUtils;->pause()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "expire"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 20
    invoke-virtual {p1}, Lccsansan/cs/IncentiveDownloadUtils;->deleteDownItem()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "all_size"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 21
    invoke-virtual {p1}, Lccsansan/cs/IncentiveDownloadUtils;->getDownloadingCount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "retry"

    invoke-virtual {v0, v1, p1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method private static unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;
    .locals 12

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_0
    check-cast p0, [C

    .line 1105
    sget-object v0, Lccsansan/d/IncentiveSDK;->removeDownloadListener:Ljava/lang/Object;

    monitor-enter v0

    .line 1107
    :try_start_0
    array-length v1, p0

    new-array v1, v1, [C

    .line 1109
    const/4 v2, 0x0

    sput v2, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    .line 1110
    const/4 v3, 0x2

    new-array v4, v3, [C

    .line 1111
    :goto_0
    sget v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    array-length v6, p0

    if-ge v5, v6, :cond_2

    .line 1113
    sget v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    aget-char v5, p0, v5

    aput-char v5, v4, v2

    .line 1114
    sget v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    aget-char v5, p0, v5

    aput-char v5, v4, v6

    .line 1116
    const v5, 0xe370

    .line 1117
    const/4 v7, 0x0

    :goto_1
    const/16 v8, 0x10

    if-ge v7, v8, :cond_1

    .line 1119
    aget-char v8, v4, v6

    aget-char v9, v4, v2

    add-int/2addr v9, v5

    aget-char v10, v4, v2

    shl-int/lit8 v10, v10, 0x4

    sget-char v11, Lccsansan/cp/IncentiveDownloadUtils;->removeDownloadListener:C

    add-int/2addr v10, v11

    xor-int/2addr v9, v10

    aget-char v10, v4, v2

    ushr-int/lit8 v10, v10, 0x5

    sget-char v11, Lccsansan/cp/IncentiveDownloadUtils;->getDownloadingRecordByUrl:C

    add-int/2addr v10, v11

    xor-int/2addr v9, v10

    sub-int/2addr v8, v9

    int-to-char v8, v8

    aput-char v8, v4, v6

    .line 1122
    aget-char v8, v4, v2

    aget-char v9, v4, v6

    add-int/2addr v9, v5

    aget-char v10, v4, v6

    shl-int/lit8 v10, v10, 0x4

    sget-char v11, Lccsansan/cp/IncentiveDownloadUtils;->IncentiveDownloadUtils:C

    add-int/2addr v10, v11

    xor-int/2addr v9, v10

    aget-char v10, v4, v6

    ushr-int/lit8 v10, v10, 0x5

    sget-char v11, Lccsansan/cp/IncentiveDownloadUtils;->getDownloadingList:C

    add-int/2addr v10, v11

    xor-int/2addr v9, v10

    sub-int/2addr v8, v9

    int-to-char v8, v8

    aput-char v8, v4, v2

    .line 1126
    const v8, 0x9e37

    sub-int/2addr v5, v8

    .line 1117
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1128
    :cond_1
    sget v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    aget-char v7, v4, v2

    aput-char v7, v1, v5

    .line 1129
    sget v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    add-int/2addr v5, v6

    aget-char v6, v4, v6

    aput-char v6, v1, v5

    .line 1130
    sget v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    add-int/2addr v5, v3

    sput v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    .line 1131
    goto :goto_0

    .line 1134
    :cond_2
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v2, p1}, Ljava/lang/String;-><init>([CII)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1135
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public addDownloadListener()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsansan/cs/IncentiveDownloadUtils;",
            ">;"
        }
    .end annotation

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "expire"

    aput-object v3, v1, v2

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "(%s < \'%s\')"

    .line 72
    invoke-static {v2, v1}, Lccsansan/bw/getName;->removeDownloadListener(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 76
    monitor-enter p0

    .line 78
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lccsansan/cp/IncentiveDownloadUtils;->unifiedDownload:Lccsanandroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    iput-object v3, p0, Lccsansan/cp/IncentiveDownloadUtils;->addDownloadListener:Lccsanandroid/database/sqlite/SQLiteDatabase;

    const-string v4, "source_record"

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 79
    invoke-virtual/range {v3 .. v10}, Lccsanandroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 82
    invoke-interface {v1}, Lccsanandroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 86
    :cond_0
    invoke-direct {p0, v1}, Lccsansan/cp/IncentiveDownloadUtils;->getDownloadingList(Lccsanandroid/database/Cursor;)Lccsansan/cs/IncentiveDownloadUtils;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 87
    invoke-virtual {v2}, Lccsansan/cs/IncentiveDownloadUtils;->getDownloadedRecordByUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 89
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_2
    :goto_0
    invoke-interface {v1}, Lccsanandroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_0
    .catch Lccsanandroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    if-eqz v1, :cond_6

    goto :goto_3

    .line 97
    :catch_0
    move-exception v2

    goto :goto_2

    .line 95
    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    :try_start_1
    invoke-interface {v1}, Lccsanandroid/database/Cursor;->close()V

    :cond_4
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_5

    invoke-interface {v1}, Lccsanandroid/database/Cursor;->close()V

    .line 97
    :cond_5
    throw v0

    :goto_2
    if-eqz v1, :cond_6

    .line 95
    :goto_3
    invoke-interface {v1}, Lccsanandroid/database/Cursor;->close()V

    .line 98
    :cond_6
    monitor-exit p0

    return-object v0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method public addDownloadListener(Lccsansan/cs/IncentiveDownloadUtils;)V
    .locals 13

    .line 43
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "_id"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "%s = ?"

    invoke-static {v2, v1}, Lccsansan/bw/getName;->removeDownloadListener(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 44
    new-array v2, v0, [Ljava/lang/String;

    invoke-virtual {p1}, Lccsansan/cs/IncentiveDownloadUtils;->removeDownloadListener()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 45
    monitor-enter p0

    .line 47
    const/4 v12, 0x0

    :try_start_0
    iget-object v4, p0, Lccsansan/cp/IncentiveDownloadUtils;->unifiedDownload:Lccsanandroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v4}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    iput-object v4, p0, Lccsansan/cp/IncentiveDownloadUtils;->addDownloadListener:Lccsanandroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v5, "source_record"

    .line 48
    :try_start_1
    new-array v6, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v6, v3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v7, v1

    move-object v8, v2

    invoke-virtual/range {v4 .. v11}, Lccsanandroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 49
    :try_start_2
    invoke-direct {p0, p1}, Lccsansan/cp/IncentiveDownloadUtils;->unifiedDownload(Lccsansan/cs/IncentiveDownloadUtils;)Lccsanandroid/content/ContentValues;

    move-result-object p1

    .line 50
    invoke-interface {v0}, Lccsanandroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 51
    iget-object v3, p0, Lccsansan/cp/IncentiveDownloadUtils;->addDownloadListener:Lccsanandroid/database/sqlite/SQLiteDatabase;

    const-string v4, "source_record"

    invoke-virtual {v3, v4, p1, v1, v2}, Lccsanandroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Lccsanandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 53
    :cond_0
    iget-object v1, p0, Lccsansan/cp/IncentiveDownloadUtils;->addDownloadListener:Lccsanandroid/database/sqlite/SQLiteDatabase;

    const-string v2, "source_record"

    invoke-virtual {v1, v2, v12, p1}, Lccsanandroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Lccsanandroid/content/ContentValues;)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 59
    :catchall_0
    move-exception p1

    move-object v12, v0

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v12, v0

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 60
    :goto_0
    :try_start_3
    instance-of v0, p1, Lccsanandroid/database/sqlite/SQLiteException;

    if-nez v0, :cond_1

    const-string v0, "\ua118\ufb6d\u99bb\u7c5c\u6ac6\u1aa3\u2176\u4444\uc826\ue229\u5fd9\u4cb8\ufa69\ue2f4\u4bdc\u7c86\u46f1\u89b0\u5e98\u464d"

    const-string v1, ""

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    add-int/lit8 v1, v1, 0x13

    invoke-static {v0, v1}, Lccsansan/cp/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    const-string v1, "add record failed!"

    .line 61
    invoke-static {v0, v1, p1}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 59
    :cond_1
    move-object v0, v12

    :goto_1
    :try_start_4
    invoke-static {v0}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    .line 65
    monitor-exit p0

    return-void

    .line 66
    :goto_2
    invoke-static {v12}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    .line 67
    throw p1

    :catchall_2
    move-exception p1

    .line 68
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1
.end method

.method public unifiedDownload(Ljava/lang/String;)Lccsansan/cs/IncentiveDownloadUtils;
    .locals 12

    .line 1
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "_id"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "%s = ?"

    invoke-static {v2, v1}, Lccsansan/bw/getName;->removeDownloadListener(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 2
    new-array v8, v0, [Ljava/lang/String;

    aput-object p1, v8, v3

    .line 3
    monitor-enter p0

    .line 5
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lccsansan/cp/IncentiveDownloadUtils;->unifiedDownload:Lccsanandroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    iput-object v4, p0, Lccsansan/cp/IncentiveDownloadUtils;->addDownloadListener:Lccsanandroid/database/sqlite/SQLiteDatabase;

    const-string v5, "source_record"

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 6
    invoke-virtual/range {v4 .. v11}, Lccsanandroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Lccsanandroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :try_start_1
    invoke-interface {v1}, Lccsanandroid/database/Cursor;->moveToFirst()Z

    move-result v2
    :try_end_1
    .catch Lccsanandroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v2, :cond_0

    .line 14
    :try_start_2
    invoke-static {v1}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-object v0

    .line 15
    :cond_0
    :try_start_3
    invoke-direct {p0, v1}, Lccsansan/cp/IncentiveDownloadUtils;->getDownloadingList(Lccsanandroid/database/Cursor;)Lccsansan/cs/IncentiveDownloadUtils;

    move-result-object p1
    :try_end_3
    .catch Lccsanandroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 19
    :try_start_4
    invoke-static {v1}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-object p1

    :catch_0
    move-exception v2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception v2

    move-object v1, v0

    :goto_0
    const-string v4, "\ua118\ufb6d\u99bb\u7c5c\u6ac6\u1aa3\u2176\u4444\uc826\ue229\u5fd9\u4cb8\ufa69\ue2f4\u4bdc\u7c86\u46f1\u89b0\u5e98\u464d"

    invoke-static {v3}, Lccsanandroid/graphics/Color;->blue(I)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x13

    invoke-static {v4, v3}, Lccsansan/cp/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    .line 20
    :try_start_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\uf78a\uc90a\u828d\u71ba\u3b2f\u91ab\uc42d\u78ec\u05f9\u17b9\ue2a9\u6bdf\u829f\u2135\u7b76\u3d42\u7fd5\ub0a6\u2ad6\u782b\u1bb3\ub2fd\u812c\ude66\uc734\u0293\ua155\u1565\u4490\u78e1"

    invoke-static {}, Lccsanandroid/view/KeyEvent;->getModifierMetaStateMask()I

    move-result v6

    int-to-byte v6, v6

    rsub-int/lit8 v6, v6, 0x1c

    invoke-static {v5, v6}, Lccsansan/cp/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, v2}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 22
    :try_start_6
    invoke-static {v1}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    .line 24
    monitor-exit p0

    return-object v0

    .line 19
    :catchall_1
    move-exception p1

    move-object v0, v1

    .line 25
    :goto_1
    invoke-static {v0}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    .line 26
    throw p1

    :catchall_2
    move-exception p1

    .line 27
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p1
.end method

.method public unifiedDownload()V
    .locals 5

    .line 22
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "expire"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "(%s < \'%s\')"

    .line 24
    invoke-static {v1, v0}, Lccsansan/bw/getName;->removeDownloadListener(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 27
    monitor-enter p0

    .line 29
    :try_start_0
    iget-object v1, p0, Lccsansan/cp/IncentiveDownloadUtils;->unifiedDownload:Lccsanandroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lccsansan/cp/IncentiveDownloadUtils;->addDownloadListener:Lccsanandroid/database/sqlite/SQLiteDatabase;

    const-string v3, "source_record"

    const/4 v4, 0x0

    .line 30
    invoke-virtual {v1, v3, v0, v4}, Lccsanandroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Lccsanandroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "\ua118\ufb6d\u99bb\u7c5c\u6ac6\u1aa3\u2176\u4444\uc826\ue229\u5fd9\u4cb8\ufa69\ue2f4\u4bdc\u7c86\u46f1\u89b0\u5e98\u464d"

    invoke-static {v2, v2}, Lccsanandroid/view/View;->resolveSize(II)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x13

    invoke-static {v1, v2}, Lccsansan/cp/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    const-string v2, "remove records failed!"

    .line 32
    invoke-static {v1, v2, v0}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
