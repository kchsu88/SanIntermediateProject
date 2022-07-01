.class public Lccsansan/dc/removeDownloadListener;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final IncentiveDownloadUtils:Ljava/lang/String;

.field private static final addDownloadListener:Ljava/lang/String;

.field private static final getDownloadedRecordByUrl:Ljava/lang/String;

.field private static final getDownloadingList:Ljava/lang/String;

.field private static final removeDownloadListener:Ljava/lang/String;

.field private static final unifiedDownload:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "placement_id"

    aput-object v3, v1, v2

    const-string v4, "%s = ?"

    invoke-static {v4, v1}, Lccsansan/bw/getName;->removeDownloadListener(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lccsansan/dc/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    const-string v5, "ad_id"

    aput-object v5, v1, v2

    invoke-static {v4, v1}, Lccsansan/bw/getName;->removeDownloadListener(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lccsansan/dc/removeDownloadListener;->getDownloadingList:Ljava/lang/String;

    .line 3
    const/4 v1, 0x2

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v3, v6, v2

    aput-object v5, v6, v0

    const-string v7, "%s = ? and %s = ?"

    invoke-static {v7, v6}, Lccsansan/bw/getName;->removeDownloadListener(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lccsansan/dc/removeDownloadListener;->removeDownloadListener:Ljava/lang/String;

    .line 4
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v2

    aput-object v5, v6, v0

    const-string v3, "creative_id"

    aput-object v3, v6, v1

    const-string v8, "%s = ? and %s = ? and %s =?"

    invoke-static {v8, v6}, Lccsansan/bw/getName;->removeDownloadListener(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lccsansan/dc/removeDownloadListener;->IncentiveDownloadUtils:Ljava/lang/String;

    .line 5
    new-array v6, v0, [Ljava/lang/Object;

    aput-object v3, v6, v2

    invoke-static {v4, v6}, Lccsansan/bw/getName;->removeDownloadListener(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lccsansan/dc/removeDownloadListener;->unifiedDownload:Ljava/lang/String;

    .line 6
    new-array v1, v1, [Ljava/lang/Object;

    aput-object v5, v1, v2

    aput-object v3, v1, v0

    invoke-static {v7, v1}, Lccsansan/bw/getName;->removeDownloadListener(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsansan/dc/removeDownloadListener;->getDownloadedRecordByUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private IncentiveDownloadUtils(Lccsanandroid/database/Cursor;)Lccsansan/dt/removeDownloadListener;
    .locals 3

    :try_start_0
    const-string v0, "json_data"

    .line 117
    invoke-interface {p1, v0}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 118
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, v0}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 119
    new-instance v0, Lccsansan/dt/removeDownloadListener;

    invoke-direct {v0, v1}, Lccsansan/dt/removeDownloadListener;-><init>(Lccsanorg/json/JSONObject;)V

    .line 120
    invoke-static {v0}, Lccsansan/bw/removeDownloadListener;->addDownloadListener(Lccsansan/dt/removeDownloadListener;)V

    const-string v1, "placement_id"

    .line 122
    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsansan/dt/removeDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;)V

    const-string v1, "click_count"

    .line 123
    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsansan/dt/removeDownloadListener;->addDownloadListener(I)V

    const-string v1, "show_count"

    .line 124
    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsansan/dt/removeDownloadListener;->removeDownloadListener(I)V

    const-string v1, "show_count_today"

    .line 125
    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsansan/dt/removeDownloadListener;->addDownloadListener(Ljava/lang/String;)V

    const-string v1, "show_time"

    .line 126
    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lccsansan/dt/removeDownloadListener;->getDownloadingList(J)V

    const-string v1, "source"

    .line 127
    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsansan/dt/removeDownloadListener;->getDownloadStatusByUrl(Ljava/lang/String;)V

    const-string v1, "reid"

    .line 128
    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lccsansan/dt/removeDownloadListener;->deleteDownItem(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 131
    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method private addDownloadListener(Lccsanandroid/database/Cursor;)Lccsansan/dt/removeDownloadListener;
    .locals 3

    :try_start_0
    const-string v0, "json_data"

    .line 148
    invoke-interface {p1, v0}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 149
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, v0}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 150
    new-instance v0, Lccsansan/dt/removeDownloadListener;

    invoke-direct {v0, v1}, Lccsansan/dt/removeDownloadListener;-><init>(Lccsanorg/json/JSONObject;)V

    .line 151
    invoke-static {v0}, Lccsansan/bw/removeDownloadListener;->addDownloadListener(Lccsansan/dt/removeDownloadListener;)V

    const-string v1, "placement_id"

    .line 153
    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsansan/dt/removeDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;)V

    const-string v1, "click_count"

    .line 154
    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsansan/dt/removeDownloadListener;->addDownloadListener(I)V

    const-string v1, "show_count"

    .line 155
    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsansan/dt/removeDownloadListener;->removeDownloadListener(I)V

    const-string v1, "show_count_today"

    .line 156
    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsansan/dt/removeDownloadListener;->addDownloadListener(Ljava/lang/String;)V

    const-string v1, "show_time"

    .line 157
    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lccsansan/dt/removeDownloadListener;->getDownloadingList(J)V

    const-string v1, "source"

    .line 158
    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsansan/dt/removeDownloadListener;->getDownloadStatusByUrl(Ljava/lang/String;)V

    const-string v1, "reid"

    .line 159
    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lccsansan/dt/removeDownloadListener;->deleteDownItem(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 162
    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method private getDownloadingList(Lccsansan/dt/removeDownloadListener;Ljava/lang/String;Lccsanandroid/database/sqlite/SQLiteDatabase;)Z
    .locals 14

    .line 1
    const-string v1, "AD.Mads.AdsTable"

    invoke-static/range {p3 .. p3}, Lccsansan/bw/trackReportShow;->unifiedDownload(Ljava/lang/Object;)V

    .line 2
    invoke-static {p1}, Lccsansan/bw/trackReportShow;->unifiedDownload(Ljava/lang/Object;)V

    .line 7
    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-array v6, v0, [Ljava/lang/String;

    const-string v4, "creative_id"

    aput-object v4, v6, v2

    .line 8
    new-array v12, v0, [Ljava/lang/String;

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getAdFormat()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "mads_ad"

    .line 9
    :try_start_1
    sget-object v13, Lccsansan/dc/removeDownloadListener;->unifiedDownload:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p3

    move-object v7, v13

    move-object v8, v12

    invoke-virtual/range {v4 .. v11}, Lccsanandroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object v3

    .line 10
    invoke-interface {v3}, Lccsanandroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 11
    new-instance v4, Lccsanandroid/content/ContentValues;

    invoke-direct {v4}, Lccsanandroid/content/ContentValues;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v5, "creative_ver"

    .line 12
    :try_start_2
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getLoaderClassName()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "json_data"

    .line 13
    move-object/from16 v6, p2

    invoke-virtual {v4, v5, v6}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v5, "mads_ad"

    .line 14
    move-object/from16 v6, p3

    :try_start_3
    invoke-virtual {v6, v5, v4, v13, v12}, Lccsanandroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Lccsanandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 15
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update json data the number of rows affected  : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-lt v4, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    invoke-static {v3}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    move v2, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 22
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update json data error  : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 24
    invoke-static {v3}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    :goto_1
    return v2

    :goto_2
    invoke-static {v3}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    .line 25
    throw v0
.end method


# virtual methods
.method public IncentiveDownloadUtils(Ljava/lang/String;Lccsanandroid/database/sqlite/SQLiteDatabase;)I
    .locals 3

    .line 71
    invoke-static {p2}, Lccsansan/bw/trackReportShow;->unifiedDownload(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 74
    const/4 v1, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    aput-object p1, v0, v1
    :try_end_0
    .catch Lccsanandroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p1, "mads_ad"

    .line 75
    :try_start_1
    sget-object v2, Lccsansan/dc/removeDownloadListener;->getDownloadingList:Ljava/lang/String;

    invoke-virtual {p2, p1, v2, v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Lccsanandroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    return p1

    :catch_0
    move-exception p1

    return v1
.end method

.method public IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;Lccsanandroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 76
    invoke-static {p3}, Lccsansan/bw/trackReportShow;->unifiedDownload(Ljava/lang/Object;)V

    const/4 v0, 0x2

    .line 79
    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1
    :try_end_0
    .catch Lccsanandroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p1, "mads_ad"

    .line 80
    :try_start_1
    sget-object p2, Lccsansan/dc/removeDownloadListener;->removeDownloadListener:Ljava/lang/String;

    invoke-virtual {p3, p1, p2, v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Lccsanandroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    const-string p2, "AD.Mads.AdsTable"

    .line 81
    :try_start_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "removeByPlacementIdAndAdId cnt : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lccsanandroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    :goto_0
    return-void
.end method

.method public IncentiveDownloadUtils(Lccsansan/dt/removeDownloadListener;Lccsanandroid/database/sqlite/SQLiteDatabase;)V
    .locals 13

    .line 111
    const-string v0, "AD.Mads.AdsTable"

    const-string v1, "click_count"

    invoke-static {p2}, Lccsansan/bw/trackReportShow;->unifiedDownload(Ljava/lang/Object;)V

    .line 114
    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    new-array v6, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v6, v4

    const/4 v5, 0x3

    .line 115
    new-array v12, v5, [Ljava/lang/String;

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v12, v4

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v2

    const/4 v4, 0x2

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getAdFormat()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v12, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "mads_ad"

    .line 116
    :try_start_1
    sget-object v7, Lccsansan/dc/removeDownloadListener;->IncentiveDownloadUtils:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, p2

    move-object v8, v12

    invoke-virtual/range {v4 .. v11}, Lccsanandroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object v3

    .line 117
    invoke-interface {v3}, Lccsanandroid/database/Cursor;->getCount()I

    move-result p1

    if-lez p1, :cond_1

    .line 118
    invoke-interface {v3}, Lccsanandroid/database/Cursor;->moveToFirst()Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_0

    .line 132
    invoke-static {v3}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    return-void

    :cond_0
    nop

    .line 133
    :try_start_2
    invoke-interface {v3, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v3, p1}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 134
    new-instance v4, Lccsanandroid/content/ContentValues;

    invoke-direct {v4}, Lccsanandroid/content/ContentValues;-><init>()V

    add-int/2addr p1, v2

    .line 135
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v4, v1, p1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string p1, "mads_ad"

    .line 136
    :try_start_3
    sget-object v5, Lccsansan/dc/removeDownloadListener;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-virtual {p2, p1, v4, v5, v12}, Lccsanandroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Lccsanandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 137
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateClickCount the number of rows affected  : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-interface {v3}, Lccsanandroid/database/Cursor;->moveToNext()Z

    move-result p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez p1, :cond_0

    .line 143
    :cond_1
    invoke-static {v3}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 144
    :try_start_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateShowCount error  : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 146
    invoke-static {v3}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    :goto_0
    return-void

    :goto_1
    invoke-static {v3}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    .line 147
    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public addDownloadListener(Ljava/lang/String;Lccsanandroid/database/sqlite/SQLiteDatabase;)I
    .locals 3

    .line 1
    invoke-static {p2}, Lccsansan/bw/trackReportShow;->unifiedDownload(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    aput-object p1, v0, v1
    :try_end_0
    .catch Lccsanandroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p1, "mads_ad"

    .line 5
    :try_start_1
    sget-object v2, Lccsansan/dc/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {p2, p1, v2, v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Lccsanandroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    return p1

    :catch_0
    move-exception p1

    return v1
.end method

.method public addDownloadListener(Ljava/lang/String;Ljava/lang/String;Lccsanandroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 203
    invoke-static {p3}, Lccsansan/bw/trackReportShow;->unifiedDownload(Ljava/lang/Object;)V

    const/4 v0, 0x2

    .line 206
    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1
    :try_end_0
    .catch Lccsanandroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p1, "mads_ad"

    .line 207
    :try_start_1
    sget-object p2, Lccsansan/dc/removeDownloadListener;->getDownloadedRecordByUrl:Ljava/lang/String;

    invoke-virtual {p3, p1, p2, v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Lccsanandroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    :goto_0
    return-void
.end method

.method public getDownloadingList(Ljava/lang/String;Lccsanandroid/database/sqlite/SQLiteDatabase;)I
    .locals 3

    .line 1
    invoke-static {p2}, Lccsansan/bw/trackReportShow;->unifiedDownload(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    aput-object p1, v0, v1
    :try_end_0
    .catch Lccsanandroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p1, "mads_ad"

    .line 5
    :try_start_1
    sget-object v2, Lccsansan/dc/removeDownloadListener;->unifiedDownload:Ljava/lang/String;

    invoke-virtual {p2, p1, v2, v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Lccsanandroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    return p1

    :catch_0
    move-exception p1

    return v1
.end method

.method public getDownloadingList(Lccsansan/dt/removeDownloadListener;Lccsanandroid/database/sqlite/SQLiteDatabase;)V
    .locals 13

    .line 26
    const-string v0, "AD.Mads.AdsTable"

    const-string v1, "show_count"

    invoke-static {p2}, Lccsansan/bw/trackReportShow;->unifiedDownload(Ljava/lang/Object;)V

    .line 30
    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    new-array v6, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v6, v4

    const/4 v5, 0x3

    .line 31
    new-array v12, v5, [Ljava/lang/String;

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v12, v4

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v2

    const/4 v4, 0x2

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getAdFormat()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v12, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "mads_ad"

    .line 32
    :try_start_1
    sget-object v7, Lccsansan/dc/removeDownloadListener;->IncentiveDownloadUtils:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, p2

    move-object v8, v12

    invoke-virtual/range {v4 .. v11}, Lccsanandroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object v3

    .line 34
    invoke-interface {v3}, Lccsanandroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_1

    .line 35
    invoke-interface {v3}, Lccsanandroid/database/Cursor;->moveToFirst()Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_0

    .line 52
    invoke-static {v3}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    return-void

    :cond_0
    nop

    .line 53
    :try_start_2
    invoke-interface {v3, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 54
    new-instance v5, Lccsanandroid/content/ContentValues;

    invoke-direct {v5}, Lccsanandroid/content/ContentValues;-><init>()V

    add-int/2addr v4, v2

    .line 55
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v1, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v4, "show_count_today"

    .line 56
    :try_start_3
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->performActionWhenOffline()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v4, "show_time"

    .line 57
    :try_start_4
    invoke-static {}, Lccsansan/ab/addDownloadListener;->unifiedDownload()Lccsansan/ab/addDownloadListener;

    move-result-object v6

    invoke-virtual {v6}, Lccsansan/ab/addDownloadListener;->getDownloadingList()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string v4, "mads_ad"

    .line 58
    :try_start_5
    sget-object v6, Lccsansan/dc/removeDownloadListener;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-virtual {p2, v4, v5, v6, v12}, Lccsanandroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Lccsanandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 59
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateShowCount the number of rows affected  : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-interface {v3}, Lccsanandroid/database/Cursor;->moveToNext()Z

    move-result v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v4, :cond_0

    .line 66
    :cond_1
    invoke-static {v3}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 67
    :try_start_6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateShowCount error  : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 69
    invoke-static {v3}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    :goto_0
    return-void

    :goto_1
    invoke-static {v3}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    .line 70
    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public removeDownloadListener(Lccsanandroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/List<",
            "Lccsansan/dt/removeDownloadListener;",
            ">;"
        }
    .end annotation

    .line 208
    invoke-static {p1}, Lccsansan/bw/trackReportShow;->unifiedDownload(Ljava/lang/Object;)V

    .line 211
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x1

    const-string v4, "mads_ad"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "ad_id,creative_id"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 212
    move-object v2, p1

    invoke-virtual/range {v2 .. v11}, Lccsanandroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object v0

    .line 216
    invoke-interface {v0}, Lccsanandroid/database/Cursor;->moveToFirst()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 229
    invoke-static {v0}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    return-object v1

    .line 230
    :cond_0
    :try_start_1
    invoke-direct {p0, v0}, Lccsansan/dc/removeDownloadListener;->addDownloadListener(Lccsanandroid/database/Cursor;)Lccsansan/dt/removeDownloadListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 232
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    :cond_1
    invoke-interface {v0}, Lccsanandroid/database/Cursor;->moveToNext()Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_0

    .line 239
    invoke-static {v0}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    return-object v1

    :catch_0
    move-exception p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 240
    :goto_0
    :try_start_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 242
    invoke-static {v0}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    return-object p1

    :goto_1
    invoke-static {v0}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    .line 243
    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public removeDownloadListener(Ljava/lang/String;Lccsanandroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lccsanandroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/List<",
            "Lccsansan/dt/removeDownloadListener;",
            ">;"
        }
    .end annotation

    .line 75
    invoke-static {p2}, Lccsansan/bw/trackReportShow;->unifiedDownload(Ljava/lang/Object;)V

    .line 79
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x1

    .line 80
    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v7, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "mads_ad"

    const/4 v5, 0x0

    .line 81
    :try_start_1
    sget-object v6, Lccsansan/dc/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p2

    invoke-virtual/range {v3 .. v10}, Lccsanandroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object v0

    .line 83
    invoke-interface {v0}, Lccsanandroid/database/Cursor;->moveToFirst()Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_0

    .line 95
    invoke-static {v0}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    return-object v1

    .line 96
    :cond_0
    :try_start_2
    invoke-direct {p0, v0}, Lccsansan/dc/removeDownloadListener;->addDownloadListener(Lccsanandroid/database/Cursor;)Lccsansan/dt/removeDownloadListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 98
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_1
    invoke-interface {v0}, Lccsanandroid/database/Cursor;->moveToNext()Z

    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p1, :cond_0

    .line 105
    invoke-static {v0}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    return-object v1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "AD.Mads.AdsTable"

    .line 106
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "query mads list error  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 109
    invoke-static {v0}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    return-object p1

    :goto_0
    invoke-static {v0}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    .line 110
    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public removeDownloadListener(Lccsansan/dt/removeDownloadListener;Ljava/lang/String;Lccsanandroid/database/sqlite/SQLiteDatabase;)Z
    .locals 13

    .line 1
    const-string v1, "AD.Mads.AdsTable"

    invoke-static/range {p3 .. p3}, Lccsansan/bw/trackReportShow;->unifiedDownload(Ljava/lang/Object;)V

    .line 2
    invoke-static {p1}, Lccsansan/bw/trackReportShow;->unifiedDownload(Ljava/lang/Object;)V

    const/4 v0, 0x3

    .line 7
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-array v8, v0, [Ljava/lang/String;

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v3

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v12, 0x1

    aput-object v0, v8, v12

    const/4 v0, 0x2

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getAdFormat()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v5, "mads_ad"

    const/4 v6, 0x0

    .line 8
    :try_start_1
    sget-object v7, Lccsansan/dc/removeDownloadListener;->IncentiveDownloadUtils:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p3

    invoke-virtual/range {v4 .. v11}, Lccsanandroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 10
    :try_start_2
    invoke-interface {v4}, Lccsanandroid/database/Cursor;->getCount()I

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v5, "json_data"

    const-string v6, "creative_ver"

    if-nez v0, :cond_0

    .line 11
    :try_start_3
    new-instance v0, Lccsanandroid/content/ContentValues;

    invoke-direct {v0}, Lccsanandroid/content/ContentValues;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v7, "_id"

    .line 12
    :try_start_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getAdFormat()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string v7, "ad_id"

    .line 13
    :try_start_5
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const-string v7, "placement_id"

    .line 14
    :try_start_6
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const-string v7, "creative_id"

    .line 15
    :try_start_7
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getAdFormat()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getLoaderClassName()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const-string v6, "show_count"

    .line 18
    :try_start_8
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const-string v6, "click_count"

    .line 19
    :try_start_9
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->hasSucceedByPassingRestrictions()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    const-string v6, "show_count_today"

    .line 20
    :try_start_a
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->performActionWhenOffline()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    move-object v7, p2

    invoke-virtual {v0, v5, p2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    const-string v5, "source"

    .line 22
    :try_start_b
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->onPlacementStartEnd()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    const-string v5, "reid"

    .line 23
    :try_start_c
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->hasDelayTimeRestrictions()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "#insertMadsAd reid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->hasDelayTimeRestrictions()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "mads_ad"

    .line 26
    move-object/from16 v8, p3

    invoke-virtual {v8, v5, v2, v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Lccsanandroid/content/ContentValues;)J

    move-result-wide v0

    const-wide/16 v5, 0x0

    cmp-long v2, v0, v5

    if-ltz v2, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    .line 28
    :cond_0
    move-object v7, p2

    move-object/from16 v8, p3

    invoke-interface {v4}, Lccsanandroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 29
    invoke-interface {v4}, Lccsanandroid/database/Cursor;->moveToFirst()Z

    move-result v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-nez v0, :cond_1

    .line 50
    invoke-static {v4}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    return v3

    .line 51
    :cond_1
    :try_start_d
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getLoaderClassName()I

    move-result v9

    .line 52
    invoke-interface {v4, v6}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v6
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 56
    :try_start_e
    invoke-interface {v4, v5}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 57
    new-instance v5, Lccsanorg/json/JSONObject;

    invoke-direct {v5, v0}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    move-object v2, v5

    goto :goto_0

    :catch_0
    move-exception v0

    .line 61
    :goto_0
    :try_start_f
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->pause()J

    move-result-wide v10

    if-gt v9, v6, :cond_2

    if-eqz v2, :cond_3

    const-string v0, "modify_time"

    .line 62
    invoke-virtual {v2, v0}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v5

    cmp-long v0, v10, v5

    if-eqz v0, :cond_3

    .line 63
    :cond_2
    invoke-direct/range {p0 .. p3}, Lccsansan/dc/removeDownloadListener;->getDownloadingList(Lccsansan/dt/removeDownloadListener;Ljava/lang/String;Lccsanandroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 69
    invoke-static {v4}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    return v0

    :cond_3
    :goto_1
    invoke-static {v4}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    return v3

    :catchall_0
    move-exception v0

    move-object v2, v4

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v2, v4

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    .line 70
    :goto_2
    :try_start_10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insert error :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 73
    invoke-static {v2}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    return v3

    :goto_3
    invoke-static {v2}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    .line 74
    throw v0
.end method

.method public unifiedDownload(Lccsanandroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/List<",
            "Lccsansan/dt/removeDownloadListener;",
            ">;"
        }
    .end annotation

    .line 82
    invoke-static {p1}, Lccsansan/bw/trackReportShow;->unifiedDownload(Ljava/lang/Object;)V

    .line 86
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "mads_ad"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 87
    move-object v2, p1

    invoke-virtual/range {v2 .. v9}, Lccsanandroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object v0

    .line 89
    invoke-interface {v0}, Lccsanandroid/database/Cursor;->moveToFirst()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 101
    invoke-static {v0}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    return-object v1

    .line 102
    :cond_0
    :try_start_1
    invoke-direct {p0, v0}, Lccsansan/dc/removeDownloadListener;->IncentiveDownloadUtils(Lccsanandroid/database/Cursor;)Lccsansan/dt/removeDownloadListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 104
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_1
    invoke-interface {v0}, Lccsanandroid/database/Cursor;->moveToNext()Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_0

    .line 111
    invoke-static {v0}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    return-object v1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "AD.Mads.AdsTable"

    .line 112
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "query adshonor list error  : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    invoke-static {v0}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    return-object p1

    :goto_0
    invoke-static {v0}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    .line 116
    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public unifiedDownload(Lccsanandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 163
    const-string v0, "placement_id"

    invoke-static {p1}, Lccsansan/bw/trackReportShow;->unifiedDownload(Ljava/lang/Object;)V

    .line 166
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 167
    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v6, v4

    .line 168
    new-array v8, v3, [Ljava/lang/String;

    aput-object p2, v8, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "mads_ad"

    .line 170
    :try_start_1
    sget-object v7, Lccsansan/dc/removeDownloadListener;->getDownloadingList:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, p1

    invoke-virtual/range {v4 .. v11}, Lccsanandroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object v1

    .line 172
    invoke-interface {v1}, Lccsanandroid/database/Cursor;->getCount()I

    move-result p1

    if-lez p1, :cond_1

    .line 173
    invoke-interface {v1}, Lccsanandroid/database/Cursor;->moveToFirst()Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_0

    .line 186
    invoke-static {v1}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    return-object v2

    :cond_0
    nop

    .line 187
    :try_start_2
    invoke-interface {v1, v0}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v1, p1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 188
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    invoke-interface {v1}, Lccsanandroid/database/Cursor;->moveToNext()Z

    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p1, :cond_0

    .line 197
    :cond_1
    invoke-static {v1}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    return-object v2

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "AD.Mads.AdsTable"

    .line 198
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "query RelevantPosIds list error  : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 201
    invoke-static {v1}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    return-object p1

    :goto_0
    invoke-static {v1}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    .line 202
    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
