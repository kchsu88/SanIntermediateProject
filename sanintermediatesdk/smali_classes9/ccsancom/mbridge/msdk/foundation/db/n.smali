.class public final Lccsancom/mbridge/msdk/foundation/db/n;
.super Lccsancom/mbridge/msdk/foundation/db/a;
.source "UnitIDDao.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/mbridge/msdk/foundation/db/a<",
        "Lccsancom/mbridge/msdk/foundation/entity/g;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Lccsancom/mbridge/msdk/foundation/db/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const/4 v0, 0x0

    sput-object v0, Lccsancom/mbridge/msdk/foundation/db/n;->a:Lccsancom/mbridge/msdk/foundation/db/n;

    return-void
.end method

.method private constructor <init>(Lccsancom/mbridge/msdk/foundation/db/e;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/foundation/db/a;-><init>(Lccsancom/mbridge/msdk/foundation/db/e;)V

    .line 18
    return-void
.end method

.method public static declared-synchronized a(Lccsancom/mbridge/msdk/foundation/db/e;)Lccsancom/mbridge/msdk/foundation/db/n;
    .locals 2

    const-class v0, Lccsancom/mbridge/msdk/foundation/db/n;

    monitor-enter v0

    .line 21
    :try_start_0
    sget-object v1, Lccsancom/mbridge/msdk/foundation/db/n;->a:Lccsancom/mbridge/msdk/foundation/db/n;

    if-nez v1, :cond_0

    .line 22
    new-instance v1, Lccsancom/mbridge/msdk/foundation/db/n;

    invoke-direct {v1, p0}, Lccsancom/mbridge/msdk/foundation/db/n;-><init>(Lccsancom/mbridge/msdk/foundation/db/e;)V

    sput-object v1, Lccsancom/mbridge/msdk/foundation/db/n;->a:Lccsancom/mbridge/msdk/foundation/db/n;

    .line 24
    :cond_0
    sget-object p0, Lccsancom/mbridge/msdk/foundation/db/n;->a:Lccsancom/mbridge/msdk/foundation/db/n;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 20
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final declared-synchronized a(I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/h;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 53
    nop

    .line 54
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "select * from unit_id WHERE ad_type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 56
    nop

    .line 58
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/n;->getReadableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lccsanandroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 59
    if-eqz v0, :cond_1

    :try_start_2
    invoke-interface {v0}, Lccsanandroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 60
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Lccsanandroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 61
    :goto_0
    :try_start_3
    invoke-interface {v0}, Lccsanandroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    const-string v1, "placement_id"

    invoke-interface {v0, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 63
    const-string v3, "unitId"

    invoke-interface {v0, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 64
    new-instance v4, Lccsancom/mbridge/msdk/foundation/entity/h;

    invoke-direct {v4, v1, v3, p1}, Lccsancom/mbridge/msdk/foundation/entity/h;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 65
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 66
    goto :goto_0

    .line 61
    :cond_0
    move-object v1, v2

    goto :goto_2

    .line 68
    :catch_0
    move-exception p1

    goto :goto_1

    .line 71
    :catchall_0
    move-exception p1

    move-object v1, v0

    goto :goto_5

    .line 68
    :catch_1
    move-exception p1

    move-object v2, v1

    :goto_1
    move-object v1, v0

    goto :goto_3

    .line 71
    :cond_1
    :goto_2
    if-eqz v0, :cond_3

    .line 72
    :try_start_4
    invoke-interface {v0}, Lccsanandroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    .line 71
    :catchall_1
    move-exception p1

    goto :goto_5

    .line 68
    :catch_2
    move-exception p1

    move-object v2, v1

    .line 69
    :goto_3
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 71
    if-eqz v1, :cond_2

    .line 72
    :try_start_6
    invoke-interface {v1}, Lccsanandroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 75
    :cond_2
    move-object v1, v2

    :cond_3
    :goto_4
    monitor-exit p0

    return-object v1

    .line 71
    :goto_5
    if-eqz v1, :cond_4

    .line 72
    :try_start_7
    invoke-interface {v1}, Lccsanandroid/database/Cursor;->close()V

    .line 74
    :cond_4
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 52
    :catchall_2
    move-exception p1

    monitor-exit p0

    goto :goto_7

    :goto_6
    throw p1

    :goto_7
    goto :goto_6
.end method

.method public final declared-synchronized a(Ljava/lang/String;)V
    .locals 6

    monitor-enter p0

    .line 79
    :try_start_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/n;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/n;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "unit_id"

    const-string v2, "unitId = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lccsanandroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :cond_0
    monitor-exit p0

    return-void

    .line 78
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    monitor-enter p0

    .line 93
    :try_start_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/n;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 94
    monitor-exit p0

    return-void

    .line 96
    :cond_0
    :try_start_1
    new-instance v0, Lccsanandroid/content/ContentValues;

    invoke-direct {v0}, Lccsanandroid/content/ContentValues;-><init>()V

    .line 97
    const-string v1, "placement_id"

    invoke-virtual {v0, v1, p1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string p1, "unitId"

    invoke-virtual {v0, p1, p2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string p1, "ad_type"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 101
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/n;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string p2, "unit_id"

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3, v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Lccsanandroid/content/ContentValues;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    monitor-exit p0

    return-void

    .line 92
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
