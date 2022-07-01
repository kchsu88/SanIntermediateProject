.class public Lccsansan/dc/deleteDownItem;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final IncentiveDownloadUtils:Ljava/lang/String;

.field private static final addDownloadListener:Ljava/lang/String;

.field private static final getDownloadingList:Ljava/lang/String;

.field private static final removeDownloadListener:Ljava/lang/String;

.field private static final unifiedDownload:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "track_end_date"

    aput-object v3, v1, v2

    const-string v4, "%s >= ?"

    invoke-static {v4, v1}, Lccsansan/bw/getName;->removeDownloadListener(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lccsansan/dc/deleteDownItem;->IncentiveDownloadUtils:Ljava/lang/String;

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    aput-object v3, v1, v2

    const-string v3, "%s < ?"

    invoke-static {v3, v1}, Lccsansan/bw/getName;->removeDownloadListener(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lccsansan/dc/deleteDownItem;->unifiedDownload:Ljava/lang/String;

    .line 4
    new-array v1, v0, [Ljava/lang/Object;

    const-string v3, "_id"

    aput-object v3, v1, v2

    const-string v3, "%s = ?"

    invoke-static {v3, v1}, Lccsansan/bw/getName;->removeDownloadListener(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lccsansan/dc/deleteDownItem;->addDownloadListener:Ljava/lang/String;

    .line 5
    new-array v1, v0, [Ljava/lang/Object;

    const-string v4, "ad_id"

    aput-object v4, v1, v2

    invoke-static {v3, v1}, Lccsansan/bw/getName;->removeDownloadListener(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lccsansan/dc/deleteDownItem;->removeDownloadListener:Ljava/lang/String;

    .line 6
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "creative_id"

    aput-object v1, v0, v2

    invoke-static {v3, v0}, Lccsansan/bw/getName;->removeDownloadListener(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsansan/dc/deleteDownItem;->getDownloadingList:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private IncentiveDownloadUtils(Lccsanandroid/database/Cursor;)Lccsansan/m/deleteDownList;
    .locals 4

    .line 82
    new-instance v0, Lccsansan/m/deleteDownList;

    invoke-direct {v0}, Lccsansan/m/deleteDownList;-><init>()V

    :try_start_0
    const-string v1, "_id"

    .line 84
    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsansan/m/deleteDownList;->removeDownloadListener(I)V

    const-string v1, "ad_id"

    .line 85
    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsansan/m/deleteDownList;->addDownloadListener(Ljava/lang/String;)V

    const-string v1, "creative_id"

    .line 86
    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsansan/m/deleteDownList;->removeDownloadListener(Ljava/lang/String;)V

    const-string v1, "timestamp"

    .line 87
    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lccsansan/m/deleteDownList;->getDownloadingList(J)V

    const-string v1, "track_end_date"

    .line 88
    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lccsansan/m/deleteDownList;->IncentiveDownloadUtils(J)V

    const-string v1, "recv_pkg_name"

    .line 89
    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsansan/m/deleteDownList;->getDownloadingList(Ljava/lang/String;)V

    const-string v1, "offline_track_urls"

    .line 90
    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 91
    new-instance v1, Lccsanorg/json/JSONArray;

    invoke-direct {v1, p1}, Lccsanorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 92
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 93
    :goto_0
    invoke-virtual {v1}, Lccsanorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 94
    invoke-virtual {v1, v2}, Lccsanorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {v0, p1}, Lccsansan/m/deleteDownList;->IncentiveDownloadUtils(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "to urlsModel error  : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Mads.Urls"

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private getDownloadingList(Lccsanandroid/database/sqlite/SQLiteDatabase;)V
    .locals 6

    .line 61
    const-string v0, "Mads.Urls"

    invoke-static {p1}, Lccsansan/bw/trackReportShow;->unifiedDownload(Ljava/lang/Object;)V

    const/4 v1, 0x1

    .line 63
    :try_start_0
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2
    :try_end_0
    .catch Lccsanandroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "offline_urls"

    .line 64
    :try_start_1
    sget-object v3, Lccsansan/dc/deleteDownItem;->unifiedDownload:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v1}, Lccsanandroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove unValid url count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lccsanandroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove track url error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsanandroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public addDownloadListener(Lccsanandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lccsansan/m/deleteDownList;",
            ">;"
        }
    .end annotation

    .line 25
    invoke-static {p1}, Lccsansan/bw/trackReportShow;->unifiedDownload(Ljava/lang/Object;)V

    .line 28
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x1

    .line 29
    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "offline_urls"

    const/4 v5, 0x0

    .line 30
    :try_start_1
    sget-object v6, Lccsansan/dc/deleteDownItem;->IncentiveDownloadUtils:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "timestamp DESC"

    move-object v3, p1

    move-object v11, p2

    invoke-virtual/range {v3 .. v11}, Lccsanandroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object v0

    .line 33
    invoke-interface {v0}, Lccsanandroid/database/Cursor;->moveToFirst()Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_0

    .line 45
    invoke-static {v0}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    return-object v1

    .line 46
    :cond_0
    :try_start_2
    invoke-direct {p0, v0}, Lccsansan/dc/deleteDownItem;->IncentiveDownloadUtils(Lccsanandroid/database/Cursor;)Lccsansan/m/deleteDownList;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 48
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_1
    invoke-interface {v0}, Lccsanandroid/database/Cursor;->moveToNext()Z

    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p1, :cond_0

    .line 55
    invoke-static {v0}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    return-object v1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Mads.Urls"

    .line 56
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "query AdModel list error  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 59
    invoke-static {v0}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    return-object p1

    :goto_0
    invoke-static {v0}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    .line 60
    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public getDownloadingList(ILccsanandroid/database/sqlite/SQLiteDatabase;)Z
    .locals 4

    .line 68
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lccsansan/bw/trackReportShow;->unifiedDownload(Ljava/lang/Object;)V

    .line 71
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1
    :try_end_0
    .catch Lccsanandroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p1, "offline_urls"

    .line 72
    :try_start_1
    sget-object v3, Lccsansan/dc/deleteDownItem;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {p2, p1, v3, v2}, Lccsanandroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Lccsanandroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :catch_0
    move-exception p1

    .line 74
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "remove track url error : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsanandroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Mads.Urls"

    invoke-static {p2, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public getDownloadingList(Ljava/lang/String;Lccsanandroid/database/sqlite/SQLiteDatabase;)Z
    .locals 4

    .line 1
    invoke-static {p1}, Lccsansan/bw/trackReportShow;->unifiedDownload(Ljava/lang/Object;)V

    .line 4
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    aput-object p1, v2, v1
    :try_end_0
    .catch Lccsanandroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p1, "offline_urls"

    .line 5
    :try_start_1
    sget-object v3, Lccsansan/dc/deleteDownItem;->getDownloadingList:Ljava/lang/String;

    invoke-virtual {p2, p1, v3, v2}, Lccsanandroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Lccsanandroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :catch_0
    move-exception p1

    .line 7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "remove track url error : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsanandroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Mads.Urls"

    invoke-static {p2, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public getDownloadingList(Lccsansan/dt/removeDownloadListener;Ljava/util/List;Lccsanandroid/database/sqlite/SQLiteDatabase;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsansan/dt/removeDownloadListener;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lccsanandroid/database/sqlite/SQLiteDatabase;",
            ")Z"
        }
    .end annotation

    .line 1
    const-string v0, "{EVENT_TIME}"

    invoke-static {p3}, Lccsansan/bw/trackReportShow;->unifiedDownload(Ljava/lang/Object;)V

    .line 2
    invoke-static {p1}, Lccsansan/bw/trackReportShow;->unifiedDownload(Ljava/lang/Object;)V

    .line 3
    invoke-direct {p0, p3}, Lccsansan/dc/deleteDownItem;->getDownloadingList(Lccsanandroid/database/sqlite/SQLiteDatabase;)V

    .line 7
    :try_start_0
    new-instance v1, Lccsanandroid/content/ContentValues;

    invoke-direct {v1}, Lccsanandroid/content/ContentValues;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "ad_id"

    .line 8
    :try_start_1
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v2, "creative_id"

    .line 9
    :try_start_2
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getAdFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v2, "timestamp"

    .line 10
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v2, "track_end_date"

    .line 11
    :try_start_4
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->setHBResultData()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 13
    new-instance p1, Lccsanorg/json/JSONArray;

    invoke-direct {p1}, Lccsanorg/json/JSONArray;-><init>()V

    .line 14
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 15
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 16
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 17
    :cond_0
    invoke-virtual {p1, v2}, Lccsanorg/json/JSONArray;->put(Ljava/lang/Object;)Lccsanorg/json/JSONArray;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :cond_1
    const-string p2, "offline_track_urls"

    .line 19
    :try_start_5
    invoke-virtual {p1}, Lccsanorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p2, p1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "offline_urls"

    const/4 p2, 0x0

    .line 21
    invoke-virtual {p3, p1, p2, v1}, Lccsanandroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Lccsanandroid/content/ContentValues;)J

    move-result-wide p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-ltz p3, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 24
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "insert urls error : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Mads.Urls"

    invoke-static {p2, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public unifiedDownload(Ljava/lang/String;Lccsanandroid/database/sqlite/SQLiteDatabase;)Z
    .locals 4

    .line 75
    invoke-static {p1}, Lccsansan/bw/trackReportShow;->unifiedDownload(Ljava/lang/Object;)V

    .line 78
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    aput-object p1, v2, v1
    :try_end_0
    .catch Lccsanandroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p1, "offline_urls"

    .line 79
    :try_start_1
    sget-object v3, Lccsansan/dc/deleteDownItem;->removeDownloadListener:Ljava/lang/String;

    invoke-virtual {p2, p1, v3, v2}, Lccsanandroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Lccsanandroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :catch_0
    move-exception p1

    .line 81
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "remove track url error : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsanandroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Mads.Urls"

    invoke-static {p2, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method
