.class public final Lccsansan/cj/getDownloadedList;
.super Lccsanandroid/database/sqlite/SQLiteOpenHelper;
.source ""


# static fields
.field private static addDownloadListener:Lccsansan/cj/getDownloadedList;

.field private static unifiedDownload:Ljava/lang/Boolean;


# instance fields
.field private IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 3

    .line 1
    const-string v0, "automator.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lccsansan/cj/getDownloadedList;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 2
    iput-object v1, p0, Lccsansan/cj/getDownloadedList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method public static getDownloadingList()Lccsansan/cj/getDownloadedList;
    .locals 3

    .line 1
    sget-object v0, Lccsansan/cj/getDownloadedList;->addDownloadListener:Lccsansan/cj/getDownloadedList;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lccsansan/cj/getDownloadedList;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lccsansan/cj/getDownloadedList;->addDownloadListener:Lccsansan/cj/getDownloadedList;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lccsansan/cj/getDownloadedList;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lccsansan/cj/getDownloadedList;-><init>(Lccsanandroid/content/Context;)V

    sput-object v1, Lccsansan/cj/getDownloadedList;->addDownloadListener:Lccsansan/cj/getDownloadedList;

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
    sget-object v0, Lccsansan/cj/getDownloadedList;->addDownloadListener:Lccsansan/cj/getDownloadedList;

    return-object v0
.end method

.method public static removeDownloadListener(Z)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lccsansan/cj/getDownloadedList;->unifiedDownload:Ljava/lang/Boolean;

    return-void
.end method

.method private unifiedDownload(Lccsansan/ai/removeDownloadListener;)Lccsanandroid/content/ContentValues;
    .locals 7

    .line 9
    new-instance v0, Lccsanandroid/content/ContentValues;

    invoke-direct {v0}, Lccsanandroid/content/ContentValues;-><init>()V

    .line 10
    invoke-virtual {p1}, Lccsansan/ai/removeDownloadListener;->getDownloadingList()Ljava/lang/String;

    move-result-object v1

    const-string v2, "commit_id"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Lccsansan/ai/removeDownloadListener;->addDownloadListener()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "sn"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 12
    invoke-virtual {p1}, Lccsansan/ai/removeDownloadListener;->unifiedDownload()Lccsansan/ai/removeDownloadListener$getDownloadingList;

    move-result-object v1

    invoke-virtual {v1}, Lccsansan/ai/removeDownloadListener$getDownloadingList;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 13
    invoke-virtual {p1}, Lccsansan/ai/removeDownloadListener;->removeDownloadListener()Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1}, Lccsansan/ai/removeDownloadListener;->IncentiveDownloadUtils()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v3, "time"

    invoke-virtual {v0, v3, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 15
    invoke-virtual {p1}, Lccsansan/ai/removeDownloadListener;->getDownloadingRecordByUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 16
    invoke-virtual {p1}, Lccsansan/ai/removeDownloadListener;->getDownloadingRecordByUrl()Ljava/lang/String;

    move-result-object v1

    const-string v3, "label"

    invoke-virtual {v0, v3, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_0
    invoke-virtual {p1}, Lccsansan/ai/removeDownloadListener;->getDownloadedRecordByUrl()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v3, "value"

    invoke-virtual {v0, v3, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 19
    invoke-virtual {p1}, Lccsansan/ai/removeDownloadListener;->getDownloadStatusByUrl()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 20
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 24
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

    .line 25
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v4, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
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

.method public static unifiedDownload()Ljava/lang/Boolean;
    .locals 1

    .line 1
    sget-object v0, Lccsansan/cj/getDownloadedList;->unifiedDownload:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public varargs declared-synchronized addDownloadListener(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lccsansan/cj/removeDownloadListener;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 14
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_4

    .line 15
    array-length v1, p2

    if-nez v1, :cond_0

    goto :goto_3

    .line 18
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    .line 19
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_2

    const-string v3, "name = ?"

    .line 20
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    array-length v3, p2

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_1

    const-string v3, " or "

    .line 22
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 28
    :try_start_1
    invoke-virtual {p0}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    iput-object v3, p0, Lccsansan/cj/getDownloadedList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v4, "events"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v5, 0x0

    .line 29
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "time"

    move-object v7, p2

    move-object v11, p1

    invoke-virtual/range {v3 .. v11}, Lccsanandroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object v2

    .line 30
    :goto_1
    invoke-interface {v2}, Lccsanandroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 31
    invoke-static {v2}, Lccsansan/cj/removeDownloadListener;->IncentiveDownloadUtils(Lccsanandroid/database/Cursor;)Lccsansan/cj/removeDownloadListener;

    move-result-object p1

    .line 32
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 38
    :catch_0
    move-exception p1

    goto :goto_2

    .line 32
    :catchall_0
    move-exception p1

    .line 37
    :try_start_4
    invoke-static {v2}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V

    .line 38
    throw p1

    .line 39
    :cond_3
    :goto_2
    invoke-static {v2}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/database/Cursor;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_4
    :goto_3
    monitor-exit p0

    return-object v0

    .line 13
    :catchall_1
    move-exception p1

    monitor-exit p0

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public declared-synchronized addDownloadListener()V
    .locals 3

    monitor-enter p0

    .line 40
    :try_start_0
    invoke-virtual {p0}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lccsansan/cj/getDownloadedList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    const-string v1, "events"

    .line 41
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lccsanandroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 39
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 41
    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "AD.automator.DB"

    const-string v2, "#clear failed!"

    .line 43
    invoke-static {v1, v2, v0}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    .line 39
    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public onCreate(Lccsanandroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    :try_start_0
    const-string v0, "CREATE TABLE IF NOT EXISTS events (_id INTEGER PRIMARY KEY,commit_id TEXT,sn LONG,type INTEGER,name TEXT,time INTEGER,label TEXT,value INTEGER,name1 TEXT,value1 TEXT,name2 TEXT,value2 TEXT,name3 TEXT,value3 TEXT,name4 TEXT,value4 TEXT,name5 TEXT,value5 TEXT,name6 TEXT,value6 TEXT,name7 TEXT,value7 TEXT,name8 TEXT,value8 TEXT,name9 TEXT,value9 TEXT,name10 TEXT,value10 TEXT,name11 TEXT,value11 TEXT,name12 TEXT,value12 TEXT,name13 TEXT,value13 TEXT,name14 TEXT,value14 TEXT,name15 TEXT,value15 TEXT,name16 TEXT,value16 TEXT,name17 TEXT,value17 TEXT,name18 TEXT,value18 TEXT,name19 TEXT,value19 TEXT,name20 TEXT,value20 TEXT,name21 TEXT,value21 TEXT,name22 TEXT,value22 TEXT,name23 TEXT,value23 TEXT,name24 TEXT,value24 TEXT,name25 TEXT,value25 TEXT,name26 TEXT,value26 TEXT,name27 TEXT,value27 TEXT,name28 TEXT,value28 TEXT,name29 TEXT,value29 TEXT,name30 TEXT,value30 TEXT,name31 TEXT,value31 TEXT,name32 TEXT,value32 TEXT );"

    .line 1
    invoke-virtual {p1, v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Lccsanandroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate db Exception = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AD.automator.DB"

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
    invoke-virtual {p0, p1}, Lccsansan/cj/getDownloadedList;->onCreate(Lccsanandroid/database/sqlite/SQLiteDatabase;)V
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

    const-string p2, "AD.automator.DB"

    invoke-static {p2, p1}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onUpgrade(Lccsanandroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method

.method public declared-synchronized removeDownloadListener(Lccsansan/ai/removeDownloadListener;)Z
    .locals 6

    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {}, Lccsansan/cj/getDownloadedList;->unifiedDownload()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lccsansan/ai/removeDownloadListener;->unifiedDownload()Lccsansan/ai/removeDownloadListener$getDownloadingList;

    move-result-object v0

    sget-object v2, Lccsansan/ai/removeDownloadListener$getDownloadingList;->Custom:Lccsansan/ai/removeDownloadListener$getDownloadingList;

    if-eq v0, v2, :cond_1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#addEvent failed: eventType = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsansan/ai/removeDownloadListener;->unifiedDownload()Lccsansan/ai/removeDownloadListener$getDownloadingList;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AD.automator.DB"

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    .line 9
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lccsansan/cj/getDownloadedList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    .line 10
    invoke-direct {p0, p1}, Lccsansan/cj/getDownloadedList;->unifiedDownload(Lccsansan/ai/removeDownloadListener;)Lccsanandroid/content/ContentValues;

    move-result-object p1

    .line 11
    iget-object v0, p0, Lccsansan/cj/getDownloadedList;->IncentiveDownloadUtils:Lccsanandroid/database/sqlite/SQLiteDatabase;

    const-string v2, "events"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, p1}, Lccsanandroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Lccsanandroid/content/ContentValues;)J

    move-result-wide v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v4, -0x1

    cmp-long p1, v2, v4

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    monitor-exit p0

    return v1

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "AD.automator.DB"

    const-string v2, "add event failed!"

    .line 13
    invoke-static {v0, v2, p1}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    :goto_0
    monitor-exit p0

    return v1

    .line 1
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
