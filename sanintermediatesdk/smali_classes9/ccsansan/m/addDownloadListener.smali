.class public Lccsansan/m/addDownloadListener;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final addDownloadListener:Ljava/lang/String;

.field private static final getDownloadingList:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "setting_name"

    aput-object v3, v1, v2

    const-string v4, "setting_key"

    const/4 v5, 0x1

    aput-object v4, v1, v5

    const-string v4, "%s = ? and %s = ?"

    invoke-static {v0, v4, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lccsansan/m/addDownloadListener;->getDownloadingList:Ljava/lang/String;

    .line 2
    new-array v1, v5, [Ljava/lang/Object;

    aput-object v3, v1, v2

    const-string v2, "%s = ?"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsansan/m/addDownloadListener;->addDownloadListener:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils(Lccsanandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const-string v0, ""

    const/4 v1, 0x2

    .line 19
    const/4 v2, 0x0

    :try_start_0
    new-array v7, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v7, v1

    const/4 p2, 0x1

    aput-object p3, v7, p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "adsettings"

    const/4 v5, 0x0

    .line 20
    :try_start_1
    sget-object v6, Lccsansan/m/addDownloadListener;->getDownloadingList:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v10}, Lccsanandroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object v2

    .line 21
    invoke-interface {v2}, Lccsanandroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "setting_value"

    .line 22
    invoke-interface {v2, p1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v2, p1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, p1

    :cond_0
    if-eqz v2, :cond_1

    goto :goto_0

    .line 28
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 29
    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_1

    .line 28
    :goto_0
    invoke-interface {v2}, Lccsanandroid/database/Cursor;->close()V

    .line 29
    :cond_1
    return-object v0

    :goto_1
    if-eqz v2, :cond_2

    .line 32
    invoke-interface {v2}, Lccsanandroid/database/Cursor;->close()V

    .line 33
    :cond_2
    throw p1
.end method

.method public removeDownloadListener(Lccsanandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x1

    .line 37
    const/4 v2, 0x0

    :try_start_0
    new-array v7, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v7, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "adsettings"

    const/4 v5, 0x0

    .line 38
    :try_start_1
    sget-object v6, Lccsansan/m/addDownloadListener;->addDownloadListener:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v10}, Lccsanandroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object v2

    .line 39
    invoke-interface {v2}, Lccsanandroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const-string p1, "setting_key"

    .line 41
    invoke-interface {v2, p1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v2, p1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "setting_value"

    .line 42
    invoke-interface {v2, p2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {v2, p2}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 43
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    invoke-interface {v2}, Lccsanandroid/database/Cursor;->moveToNext()Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_0

    :cond_1
    if-eqz v2, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 47
    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_2

    .line 50
    :goto_0
    invoke-interface {v2}, Lccsanandroid/database/Cursor;->close()V

    :cond_2
    return-object v0

    :goto_1
    if-eqz v2, :cond_3

    invoke-interface {v2}, Lccsanandroid/database/Cursor;->close()V

    .line 51
    :cond_3
    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public unifiedDownload(Lccsanandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-static {p2}, Lccsansan/bw/trackReportShow;->unifiedDownload(Ljava/lang/Object;)V

    .line 2
    invoke-static {p3}, Lccsansan/bw/trackReportShow;->unifiedDownload(Ljava/lang/Object;)V

    const/4 v0, 0x2

    .line 5
    const/4 v1, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2
    :try_end_0
    .catch Lccsanandroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p3, "adsettings"

    .line 6
    :try_start_1
    sget-object v2, Lccsansan/m/addDownloadListener;->getDownloadingList:Ljava/lang/String;

    invoke-virtual {p1, p3, v2, v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Lccsanandroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    if-lez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :catch_0
    move-exception p1

    return v1
.end method

.method public unifiedDownload(Lccsanandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .line 1
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lccsansan/m/addDownloadListener;->IncentiveDownloadUtils(Lccsanandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v3, "adsettings"

    const-string v4, "setting_value"

    if-nez v2, :cond_1

    const/4 v2, 0x2

    .line 3
    :try_start_1
    new-array v2, v2, [Ljava/lang/String;

    aput-object p2, v2, v1

    aput-object p3, v2, v0

    .line 4
    new-instance p2, Lccsanandroid/content/ContentValues;

    invoke-direct {p2}, Lccsanandroid/content/ContentValues;-><init>()V

    .line 5
    invoke-virtual {p2, v4, p4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sget-object p3, Lccsansan/m/addDownloadListener;->getDownloadingList:Ljava/lang/String;

    invoke-virtual {p1, v3, p2, p3, v2}, Lccsanandroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Lccsanandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :catch_0
    move-exception p1

    return v1

    .line 11
    :cond_1
    :try_start_2
    new-instance v2, Lccsanandroid/content/ContentValues;

    invoke-direct {v2}, Lccsanandroid/content/ContentValues;-><init>()V

    const-string v5, "setting_name"

    .line 13
    invoke-virtual {v2, v5, p2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "setting_key"

    .line 14
    invoke-virtual {v2, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v2, v4, p4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 16
    invoke-virtual {p1, v3, p2, v2}, Lccsanandroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Lccsanandroid/content/ContentValues;)J

    move-result-wide p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const-wide/16 p3, 0x0

    cmp-long v2, p1, p3

    if-ltz v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 18
    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :goto_1
    return v0
.end method
