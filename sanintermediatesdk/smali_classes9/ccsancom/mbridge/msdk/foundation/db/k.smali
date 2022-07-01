.class public final Lccsancom/mbridge/msdk/foundation/db/k;
.super Lccsancom/mbridge/msdk/foundation/db/a;
.source "LoadTimeDao.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/mbridge/msdk/foundation/db/a<",
        "Lccsancom/mbridge/msdk/foundation/entity/g;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Lccsancom/mbridge/msdk/foundation/db/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    const/4 v0, 0x0

    sput-object v0, Lccsancom/mbridge/msdk/foundation/db/k;->a:Lccsancom/mbridge/msdk/foundation/db/k;

    return-void
.end method

.method private constructor <init>(Lccsancom/mbridge/msdk/foundation/db/e;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/foundation/db/a;-><init>(Lccsancom/mbridge/msdk/foundation/db/e;)V

    .line 17
    return-void
.end method

.method public static declared-synchronized a(Lccsancom/mbridge/msdk/foundation/db/e;)Lccsancom/mbridge/msdk/foundation/db/k;
    .locals 2

    const-class v0, Lccsancom/mbridge/msdk/foundation/db/k;

    monitor-enter v0

    .line 20
    :try_start_0
    sget-object v1, Lccsancom/mbridge/msdk/foundation/db/k;->a:Lccsancom/mbridge/msdk/foundation/db/k;

    if-nez v1, :cond_0

    .line 21
    new-instance v1, Lccsancom/mbridge/msdk/foundation/db/k;

    invoke-direct {v1, p0}, Lccsancom/mbridge/msdk/foundation/db/k;-><init>(Lccsancom/mbridge/msdk/foundation/db/e;)V

    sput-object v1, Lccsancom/mbridge/msdk/foundation/db/k;->a:Lccsancom/mbridge/msdk/foundation/db/k;

    .line 23
    :cond_0
    sget-object p0, Lccsancom/mbridge/msdk/foundation/db/k;->a:Lccsancom/mbridge/msdk/foundation/db/k;
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

    .line 28
    nop

    .line 29
    nop

    .line 31
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "select count(*) from load_stat"

    .line 32
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/k;->getReadableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    invoke-interface {v0}, Lccsanandroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 35
    invoke-interface {v0, v1}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    :cond_0
    if-eqz v0, :cond_1

    .line 42
    :goto_0
    :try_start_1
    invoke-interface {v0}, Lccsanandroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 41
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 38
    :catch_0
    move-exception v2

    .line 39
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    goto :goto_0

    .line 46
    :cond_1
    :goto_1
    monitor-exit p0

    return v1

    .line 41
    :goto_2
    if-eqz v0, :cond_2

    .line 42
    :try_start_3
    invoke-interface {v0}, Lccsanandroid/database/Cursor;->close()V

    .line 44
    :cond_2
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 27
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
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/g;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 50
    nop

    .line 51
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "select * from load_stat LIMIT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 53
    nop

    .line 55
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/k;->getReadableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lccsanandroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 56
    if-eqz v0, :cond_3

    :try_start_2
    invoke-interface {v0}, Lccsanandroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_3

    .line 57
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 58
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 59
    :goto_0
    :try_start_3
    invoke-interface {v0}, Lccsanandroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 61
    if-lt v3, p1, :cond_0

    .line 62
    goto/16 :goto_1

    .line 64
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 65
    const-string v4, "ad_source_id"

    invoke-interface {v0, v4}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 66
    const-string v4, "time"

    invoke-interface {v0, v4}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 67
    const-string v4, "adNum"

    invoke-interface {v0, v4}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 68
    const-string v4, "unitId"

    .line 69
    invoke-interface {v0, v4}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 68
    invoke-interface {v0, v4}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 70
    const-string v4, "fb"

    invoke-interface {v0, v4}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 71
    const-string v4, "timeout"

    invoke-interface {v0, v4}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 72
    const-string v4, "network_type"

    invoke-interface {v0, v4}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 73
    const-string v4, "hb"

    invoke-interface {v0, v4}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 74
    new-instance v13, Lccsancom/mbridge/msdk/foundation/entity/g;

    move-object v5, v13

    invoke-direct/range {v5 .. v12}, Lccsancom/mbridge/msdk/foundation/entity/g;-><init>(ILjava/lang/String;ILjava/lang/String;III)V

    .line 75
    invoke-virtual {v13, v4}, Lccsancom/mbridge/msdk/foundation/entity/g;->a(I)V

    .line 76
    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    const-string v4, "id"

    invoke-interface {v0, v4}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 78
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/k;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 79
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/k;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string v6, "load_stat"

    const-string v7, "id = ?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v1

    invoke-virtual {v5, v6, v7, v8}, Lccsanandroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 82
    :cond_1
    goto/16 :goto_0

    .line 87
    :cond_2
    :goto_1
    move-object v1, v2

    goto :goto_3

    .line 84
    :catch_0
    move-exception p1

    goto :goto_2

    .line 87
    :catchall_0
    move-exception p1

    move-object v1, v0

    goto :goto_6

    .line 84
    :catch_1
    move-exception p1

    move-object v2, v1

    :goto_2
    move-object v1, v0

    goto :goto_4

    .line 87
    :cond_3
    :goto_3
    if-eqz v0, :cond_5

    .line 88
    :try_start_4
    invoke-interface {v0}, Lccsanandroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_5

    .line 87
    :catchall_1
    move-exception p1

    goto :goto_6

    .line 84
    :catch_2
    move-exception p1

    move-object v2, v1

    .line 85
    :goto_4
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 87
    if-eqz v1, :cond_4

    .line 88
    :try_start_6
    invoke-interface {v1}, Lccsanandroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 91
    :cond_4
    move-object v1, v2

    :cond_5
    :goto_5
    monitor-exit p0

    return-object v1

    .line 87
    :goto_6
    if-eqz v1, :cond_6

    .line 88
    :try_start_7
    invoke-interface {v1}, Lccsanandroid/database/Cursor;->close()V

    .line 90
    :cond_6
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 49
    :catchall_2
    move-exception p1

    monitor-exit p0

    goto :goto_8

    :goto_7
    throw p1

    :goto_8
    goto :goto_7
.end method

.method public final declared-synchronized a(Lccsancom/mbridge/msdk/foundation/entity/g;)V
    .locals 3

    monitor-enter p0

    .line 102
    :try_start_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/k;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 103
    monitor-exit p0

    return-void

    .line 105
    :cond_0
    :try_start_1
    new-instance v0, Lccsanandroid/content/ContentValues;

    invoke-direct {v0}, Lccsanandroid/content/ContentValues;-><init>()V

    .line 106
    const-string v1, "time"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/g;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v1, "ad_source_id"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/g;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 108
    const-string v1, "adNum"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/g;->d()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 109
    const-string v1, "unitId"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/g;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v1, "fb"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/g;->f()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 111
    const-string v1, "hb"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/g;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 112
    const-string v1, "timeout"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/g;->g()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 113
    const-string v1, "network_type"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/g;->h()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 115
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/k;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string v1, "load_stat"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Lccsanandroid/content/ContentValues;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    monitor-exit p0

    return-void

    .line 101
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
