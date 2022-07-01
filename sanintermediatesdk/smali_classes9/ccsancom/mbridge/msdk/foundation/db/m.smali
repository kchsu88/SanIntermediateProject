.class public final Lccsancom/mbridge/msdk/foundation/db/m;
.super Lccsancom/mbridge/msdk/foundation/db/a;
.source "ReportErrorDao.java"


# static fields
.field private static a:Lccsancom/mbridge/msdk/foundation/db/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    const/4 v0, 0x0

    sput-object v0, Lccsancom/mbridge/msdk/foundation/db/m;->a:Lccsancom/mbridge/msdk/foundation/db/m;

    return-void
.end method

.method private constructor <init>(Lccsancom/mbridge/msdk/foundation/db/e;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/foundation/db/a;-><init>(Lccsancom/mbridge/msdk/foundation/db/e;)V

    .line 16
    return-void
.end method

.method public static declared-synchronized a(Lccsancom/mbridge/msdk/foundation/db/e;)Lccsancom/mbridge/msdk/foundation/db/m;
    .locals 2

    const-class v0, Lccsancom/mbridge/msdk/foundation/db/m;

    monitor-enter v0

    .line 19
    :try_start_0
    sget-object v1, Lccsancom/mbridge/msdk/foundation/db/m;->a:Lccsancom/mbridge/msdk/foundation/db/m;

    if-nez v1, :cond_0

    .line 20
    new-instance v1, Lccsancom/mbridge/msdk/foundation/db/m;

    invoke-direct {v1, p0}, Lccsancom/mbridge/msdk/foundation/db/m;-><init>(Lccsancom/mbridge/msdk/foundation/db/e;)V

    sput-object v1, Lccsancom/mbridge/msdk/foundation/db/m;->a:Lccsancom/mbridge/msdk/foundation/db/m;

    .line 22
    :cond_0
    sget-object p0, Lccsancom/mbridge/msdk/foundation/db/m;->a:Lccsancom/mbridge/msdk/foundation/db/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 18
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final declared-synchronized a()I
    .locals 10

    monitor-enter p0

    .line 26
    const/4 v0, 0x1

    :try_start_0
    new-array v3, v0, [Ljava/lang/String;

    const-string v0, " count(*) "

    const/4 v9, 0x0

    aput-object v0, v3, v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 28
    const/4 v0, 0x0

    .line 29
    nop

    .line 31
    :try_start_1
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/m;->getReadableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "reporterror"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Lccsanandroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    invoke-interface {v0}, Lccsanandroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    invoke-interface {v0, v9}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v9, v1

    .line 40
    :cond_0
    if-eqz v0, :cond_1

    .line 41
    :goto_0
    :try_start_2
    invoke-interface {v0}, Lccsanandroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 40
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 37
    :catch_0
    move-exception v1

    .line 38
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    goto :goto_0

    .line 45
    :cond_1
    :goto_1
    monitor-exit p0

    return v9

    .line 40
    :goto_2
    if-eqz v0, :cond_2

    .line 41
    :try_start_4
    invoke-interface {v0}, Lccsanandroid/database/Cursor;->close()V

    .line 43
    :cond_2
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 25
    :catchall_1
    move-exception v0

    monitor-exit p0

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public final declared-synchronized a(Ljava/lang/String;)I
    .locals 4

    monitor-enter p0

    .line 61
    const/4 v0, -0x1

    :try_start_0
    const-string v1, "url=?"

    .line 62
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 63
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/m;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 64
    monitor-exit p0

    return v0

    .line 66
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/m;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string v3, "reporterror"

    invoke-virtual {p1, v3, v1, v2}, Lccsanandroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    .line 60
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 67
    :catch_0
    move-exception p1

    .line 69
    monitor-exit p0

    return v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    monitor-enter p0

    .line 87
    const/4 v0, -0x1

    :try_start_0
    const-string v1, "url=? and data=?"

    .line 88
    if-nez p1, :cond_0

    .line 89
    const-string p1, ""

    .line 91
    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 p2, 0x1

    aput-object p1, v2, p2

    .line 92
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/m;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    .line 93
    monitor-exit p0

    return v0

    .line 95
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/m;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string p2, "reporterror"

    invoke-virtual {p1, p2, v1, v2}, Lccsanandroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    .line 86
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 96
    :catch_0
    move-exception p1

    .line 98
    monitor-exit p0

    return v0
.end method

.method public final declared-synchronized a(I)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/k;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 133
    nop

    .line 134
    nop

    .line 136
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/m;->getReadableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "reporterror"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v1 .. v9}, Lccsanandroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    if-eqz p1, :cond_1

    :try_start_1
    invoke-interface {p1}, Lccsanandroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 138
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 139
    :goto_0
    :try_start_2
    invoke-interface {p1}, Lccsanandroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    const-string v0, "url"

    invoke-interface {p1, v0}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 141
    const-string v2, "data"

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 142
    const-string v3, "method"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 143
    const-string v4, "unitId"

    invoke-interface {p1, v4}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 144
    new-instance v5, Lccsancom/mbridge/msdk/foundation/entity/k;

    invoke-direct {v5, v0, v3, v2, v4}, Lccsancom/mbridge/msdk/foundation/entity/k;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 146
    goto :goto_0

    .line 139
    :cond_0
    move-object v0, v1

    goto :goto_1

    .line 148
    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_2

    .line 151
    :cond_1
    :goto_1
    if-eqz p1, :cond_3

    .line 152
    :try_start_3
    invoke-interface {p1}, Lccsanandroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    .line 151
    :catchall_0
    move-exception p1

    move-object v10, v0

    move-object v0, p1

    move-object p1, v10

    goto :goto_4

    .line 148
    :catch_2
    move-exception p1

    move-object v1, v0

    move-object v0, p1

    move-object p1, v1

    .line 149
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 151
    if-eqz p1, :cond_2

    .line 152
    :try_start_5
    invoke-interface {p1}, Lccsanandroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 155
    :cond_2
    move-object v0, v1

    :cond_3
    :goto_3
    monitor-exit p0

    return-object v0

    .line 151
    :catchall_1
    move-exception v0

    :goto_4
    if-eqz p1, :cond_4

    .line 152
    :try_start_6
    invoke-interface {p1}, Lccsanandroid/database/Cursor;->close()V

    .line 154
    :cond_4
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 132
    :catchall_2
    move-exception p1

    monitor-exit p0

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method public final declared-synchronized b()I
    .locals 12

    monitor-enter p0

    .line 102
    const/4 v0, 0x0

    .line 103
    nop

    .line 104
    const/4 v1, 0x1

    :try_start_0
    new-array v4, v1, [Ljava/lang/String;

    const-string v1, " count(*) "

    const/4 v11, 0x0

    aput-object v1, v4, v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 106
    :try_start_1
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/m;->getReadableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "reporterror"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Lccsanandroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object v0

    .line 107
    invoke-interface {v0}, Lccsanandroid/database/Cursor;->getCount()I

    move-result v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    if-eqz v0, :cond_0

    .line 112
    :goto_0
    :try_start_2
    invoke-interface {v0}, Lccsanandroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 111
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 108
    :catch_0
    move-exception v1

    .line 109
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 111
    if-eqz v0, :cond_0

    .line 112
    goto :goto_0

    .line 115
    :cond_0
    :goto_1
    monitor-exit p0

    return v11

    .line 111
    :goto_2
    if-eqz v0, :cond_1

    .line 112
    :try_start_4
    invoke-interface {v0}, Lccsanandroid/database/Cursor;->close()V

    .line 114
    :cond_1
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 101
    :catchall_1
    move-exception v0

    monitor-exit p0

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method
