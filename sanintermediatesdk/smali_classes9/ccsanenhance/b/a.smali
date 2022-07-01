.class public Lccsanenhance/b/a;
.super Lccsanandroid/database/sqlite/SQLiteOpenHelper;
.source ""


# static fields
.field public static a:Lccsanenhance/b/a;


# instance fields
.field public b:Lccsanenhance/b/d;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 3

    .line 1
    const-string v0, "db_launch"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 2
    new-instance p1, Lccsanenhance/b/d;

    invoke-direct {p1}, Lccsanenhance/b/d;-><init>()V

    iput-object p1, p0, Lccsanenhance/b/a;->b:Lccsanenhance/b/d;

    return-void
.end method

.method public static a()Lccsanenhance/b/a;
    .locals 3

    .line 1
    sget-object v0, Lccsanenhance/b/a;->a:Lccsanenhance/b/a;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lccsanenhance/b/a;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lccsanenhance/b/a;->a:Lccsanenhance/b/a;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lccsanenhance/b/a;

    invoke-static {}, Lccsanenhance/g/b;->a()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lccsanenhance/b/a;-><init>(Lccsanandroid/content/Context;)V

    sput-object v1, Lccsanenhance/b/a;->a:Lccsanenhance/b/a;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 7
    :cond_1
    :goto_0
    sget-object v0, Lccsanenhance/b/a;->a:Lccsanenhance/b/a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lccsanenhance/b/b;",
            ">;"
        }
    .end annotation

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 67
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v3, "tb_launch"

    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 68
    :try_start_1
    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "last_submit_time DESC"

    move-object v2, v10

    move-object v5, p1

    invoke-virtual/range {v2 .. v9}, Lccsanandroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object v1

    .line 69
    :goto_0
    invoke-interface {v1}, Lccsanandroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 70
    invoke-virtual {p0, v1}, Lccsanenhance/b/a;->b(Lccsanandroid/database/Cursor;)Lccsanenhance/b/b;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {p0, v10}, Lccsanenhance/b/a;->a(Lccsanandroid/database/sqlite/SQLiteDatabase;)V

    .line 80
    invoke-virtual {p0, v1}, Lccsanenhance/b/a;->a(Lccsanandroid/database/Cursor;)V

    goto :goto_2

    .line 81
    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v10, v1

    :goto_1
    :try_start_2
    invoke-static {p1}, Lccsanenhance/g/i;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "query exception"

    .line 83
    invoke-static {p2, p1}, Lccsanenhance/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "query exception:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lccsanenhance/g/e;->b(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 87
    invoke-virtual {p0, v10}, Lccsanenhance/b/a;->a(Lccsanandroid/database/sqlite/SQLiteDatabase;)V

    .line 88
    invoke-virtual {p0, v1}, Lccsanenhance/b/a;->a(Lccsanandroid/database/Cursor;)V

    .line 90
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "query db finished:taskIntents size="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lccsanenhance/g/e;->a(Ljava/lang/String;)V

    return-object v0

    :catchall_2
    move-exception p1

    .line 91
    invoke-virtual {p0, v10}, Lccsanenhance/b/a;->a(Lccsanandroid/database/sqlite/SQLiteDatabase;)V

    .line 92
    invoke-virtual {p0, v1}, Lccsanenhance/b/a;->a(Lccsanandroid/database/Cursor;)V

    .line 93
    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public final a(Lccsanandroid/database/Cursor;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 98
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lccsanandroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :goto_0
    return-void
.end method

.method public final a(Lccsanandroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 94
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lccsanandroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 97
    :cond_1
    invoke-virtual {p1}, Lccsanandroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :goto_0
    return-void
.end method

.method public a(Lccsanenhance/b/b;)Z
    .locals 8

    .line 8
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    :try_start_1
    new-instance v3, Lccsanandroid/content/ContentValues;

    invoke-direct {v3}, Lccsanandroid/content/ContentValues;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v4, "task_id"

    .line 11
    :try_start_2
    invoke-virtual {p1}, Lccsanenhance/b/b;->n()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v4, "task_state"

    .line 12
    :try_start_3
    invoke-virtual {p1}, Lccsanenhance/b/b;->o()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v4, "create_time"

    .line 13
    :try_start_4
    invoke-virtual {p1}, Lccsanenhance/b/b;->f()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string v4, "last_submit_time"

    .line 14
    :try_start_5
    invoke-virtual {p1}, Lccsanenhance/b/b;->i()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const-string v4, "package_name"

    .line 15
    :try_start_6
    invoke-virtual {p1}, Lccsanenhance/b/b;->m()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const-string v4, "icon_path"

    .line 16
    :try_start_7
    invoke-virtual {p1}, Lccsanenhance/b/b;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const-string v4, "cover_path"

    .line 17
    :try_start_8
    invoke-virtual {p1}, Lccsanenhance/b/b;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const-string v4, "title"

    .line 18
    :try_start_9
    invoke-virtual {p1}, Lccsanenhance/b/b;->p()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    const-string v4, "description"

    .line 19
    :try_start_a
    invoke-virtual {p1}, Lccsanenhance/b/b;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    const-string v4, "action_name"

    .line 20
    :try_start_b
    invoke-virtual {p1}, Lccsanenhance/b/b;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    const-string v4, "trigger_scene"

    .line 21
    :try_start_c
    invoke-virtual {p1}, Lccsanenhance/b/b;->q()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    const-string v4, "action_source"

    .line 22
    :try_start_d
    invoke-virtual {p1}, Lccsanenhance/b/b;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    const-string v4, "launch_action_time"

    .line 23
    :try_start_e
    invoke-virtual {p1}, Lccsanenhance/b/b;->j()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    const-string v4, "launch_succeed_time"

    .line 24
    :try_start_f
    invoke-virtual {p1}, Lccsanenhance/b/b;->k()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    const-string v4, "network_connected_retry_count"

    .line 25
    :try_start_10
    invoke-virtual {p1}, Lccsanenhance/b/b;->l()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    const-string v4, "activity_resumed_retry_count"

    .line 26
    :try_start_11
    invoke-virtual {p1}, Lccsanenhance/b/b;->c()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    const-string v4, "activity_stopped_retry_count"

    .line 27
    :try_start_12
    invoke-virtual {p1}, Lccsanenhance/b/b;->d()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    const-string v4, "user_present_retry_count"

    .line 28
    :try_start_13
    invoke-virtual {p1}, Lccsanenhance/b/b;->r()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "tb_launch"

    .line 30
    invoke-virtual {v2, v4, v1, v3}, Lccsanandroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Lccsanandroid/content/ContentValues;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v1, v3, v5

    if-nez v1, :cond_0

    const-string v1, "insert error"

    .line 32
    invoke-static {v1, p1}, Lccsanenhance/a/f;->a(Ljava/lang/String;Lccsanenhance/b/b;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 44
    invoke-virtual {p0, v2}, Lccsanenhance/b/a;->a(Lccsanandroid/database/sqlite/SQLiteDatabase;)V

    return v0

    .line 45
    :cond_0
    :try_start_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insert db succeed:the row ID of the newly inserted row="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ",TaskIntent="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsanenhance/b/b;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsanenhance/g/e;->a(Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 54
    invoke-virtual {p0, v2}, Lccsanenhance/b/a;->a(Lccsanandroid/database/sqlite/SQLiteDatabase;)V

    const/4 p1, 0x1

    return p1

    .line 55
    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v2

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    :goto_0
    :try_start_15
    invoke-static {v1}, Lccsanenhance/g/i;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "insert exception"

    .line 57
    invoke-static {v3, v1, p1}, Lccsanenhance/a/f;->b(Ljava/lang/String;Ljava/lang/String;Lccsanenhance/b/b;)V

    .line 59
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insert exception:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lccsanenhance/g/e;->b(Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    .line 61
    invoke-virtual {p0, v2}, Lccsanenhance/b/a;->a(Lccsanandroid/database/sqlite/SQLiteDatabase;)V

    return v0

    :catchall_2
    move-exception p1

    invoke-virtual {p0, v2}, Lccsanenhance/b/a;->a(Lccsanandroid/database/sqlite/SQLiteDatabase;)V

    .line 62
    throw p1
.end method

.method public final b(Lccsanandroid/database/Cursor;)Lccsanenhance/b/b;
    .locals 5

    .line 59
    new-instance v0, Lccsanenhance/b/b;

    invoke-direct {v0}, Lccsanenhance/b/b;-><init>()V

    .line 61
    const-string v1, "task_id"

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 63
    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanenhance/b/b;->g(Ljava/lang/String;)V

    :cond_0
    nop

    .line 66
    const-string v1, "task_state"

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 68
    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanenhance/b/b;->h(Ljava/lang/String;)V

    :cond_1
    nop

    .line 71
    const-string v1, "create_time"

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_2

    .line 73
    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lccsanenhance/b/b;->a(J)V

    :cond_2
    nop

    .line 76
    const-string v1, "last_submit_time"

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_3

    .line 78
    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lccsanenhance/b/b;->b(J)V

    :cond_3
    nop

    .line 81
    const-string v1, "package_name"

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_4

    .line 83
    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanenhance/b/b;->f(Ljava/lang/String;)V

    :cond_4
    nop

    .line 86
    const-string v1, "icon_path"

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_5

    .line 88
    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanenhance/b/b;->e(Ljava/lang/String;)V

    :cond_5
    nop

    .line 91
    const-string v1, "cover_path"

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_6

    .line 93
    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanenhance/b/b;->c(Ljava/lang/String;)V

    :cond_6
    nop

    .line 96
    const-string v1, "title"

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_7

    .line 98
    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanenhance/b/b;->i(Ljava/lang/String;)V

    :cond_7
    nop

    .line 101
    const-string v1, "description"

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_8

    .line 103
    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanenhance/b/b;->d(Ljava/lang/String;)V

    :cond_8
    nop

    .line 106
    const-string v1, "action_name"

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_9

    .line 108
    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanenhance/b/b;->a(Ljava/lang/String;)V

    :cond_9
    nop

    .line 111
    const-string v1, "trigger_scene"

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_a

    .line 113
    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanenhance/b/b;->j(Ljava/lang/String;)V

    :cond_a
    nop

    .line 116
    const-string v1, "action_source"

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_b

    .line 118
    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanenhance/b/b;->b(Ljava/lang/String;)V

    :cond_b
    nop

    .line 121
    const-string v1, "launch_action_time"

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_c

    .line 123
    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lccsanenhance/b/b;->c(J)V

    :cond_c
    nop

    .line 126
    const-string v1, "launch_succeed_time"

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_d

    .line 128
    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lccsanenhance/b/b;->c(J)V

    :cond_d
    nop

    .line 131
    const-string v1, "network_connected_retry_count"

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_e

    .line 133
    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanenhance/b/b;->c(I)V

    :cond_e
    nop

    .line 136
    const-string v1, "activity_resumed_retry_count"

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_f

    .line 138
    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanenhance/b/b;->a(I)V

    :cond_f
    nop

    .line 141
    const-string v1, "activity_stopped_retry_count"

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_10

    .line 143
    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanenhance/b/b;->b(I)V

    :cond_10
    nop

    .line 146
    const-string v1, "user_present_retry_count"

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_11

    .line 148
    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lccsanenhance/b/b;->d(I)V

    :cond_11
    return-object v0
.end method

.method public b(Lccsanenhance/b/b;)Z
    .locals 8

    .line 1
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    new-instance v2, Lccsanandroid/content/ContentValues;

    invoke-direct {v2}, Lccsanandroid/content/ContentValues;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v3, "task_id"

    .line 4
    :try_start_2
    invoke-virtual {p1}, Lccsanenhance/b/b;->n()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v3, "task_state"

    .line 5
    :try_start_3
    invoke-virtual {p1}, Lccsanenhance/b/b;->o()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v3, "create_time"

    .line 6
    :try_start_4
    invoke-virtual {p1}, Lccsanenhance/b/b;->f()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string v3, "last_submit_time"

    .line 7
    :try_start_5
    invoke-virtual {p1}, Lccsanenhance/b/b;->i()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const-string v3, "package_name"

    .line 8
    :try_start_6
    invoke-virtual {p1}, Lccsanenhance/b/b;->m()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const-string v3, "icon_path"

    .line 9
    :try_start_7
    invoke-virtual {p1}, Lccsanenhance/b/b;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const-string v3, "cover_path"

    .line 10
    :try_start_8
    invoke-virtual {p1}, Lccsanenhance/b/b;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const-string v3, "title"

    .line 11
    :try_start_9
    invoke-virtual {p1}, Lccsanenhance/b/b;->p()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    const-string v3, "description"

    .line 12
    :try_start_a
    invoke-virtual {p1}, Lccsanenhance/b/b;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    const-string v3, "action_name"

    .line 13
    :try_start_b
    invoke-virtual {p1}, Lccsanenhance/b/b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    const-string v3, "trigger_scene"

    .line 14
    :try_start_c
    invoke-virtual {p1}, Lccsanenhance/b/b;->q()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    const-string v3, "action_source"

    .line 15
    :try_start_d
    invoke-virtual {p1}, Lccsanenhance/b/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    const-string v3, "launch_action_time"

    .line 16
    :try_start_e
    invoke-virtual {p1}, Lccsanenhance/b/b;->j()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    const-string v3, "launch_succeed_time"

    .line 17
    :try_start_f
    invoke-virtual {p1}, Lccsanenhance/b/b;->k()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    const-string v3, "network_connected_retry_count"

    .line 18
    :try_start_10
    invoke-virtual {p1}, Lccsanenhance/b/b;->l()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    const-string v3, "activity_resumed_retry_count"

    .line 19
    :try_start_11
    invoke-virtual {p1}, Lccsanenhance/b/b;->c()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    const-string v3, "activity_stopped_retry_count"

    .line 20
    :try_start_12
    invoke-virtual {p1}, Lccsanenhance/b/b;->d()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    const-string v3, "user_present_retry_count"

    .line 21
    :try_start_13
    invoke-virtual {p1}, Lccsanenhance/b/b;->r()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    const-string v3, "tb_launch"

    const-string v4, "task_id=?"

    .line 23
    const/4 v5, 0x1

    :try_start_14
    new-array v6, v5, [Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Lccsanenhance/b/b;->n()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    .line 25
    invoke-virtual {v1, v3, v2, v4, v6}, Lccsanandroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Lccsanandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v6, -0x1

    cmp-long v4, v2, v6

    if-nez v4, :cond_0

    const-string v2, "update error"

    .line 28
    invoke-static {v2, p1}, Lccsanenhance/a/f;->a(Ljava/lang/String;Lccsanenhance/b/b;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 40
    invoke-virtual {p0, v1}, Lccsanenhance/b/a;->a(Lccsanandroid/database/sqlite/SQLiteDatabase;)V

    return v0

    .line 41
    :cond_0
    :try_start_15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update db succeed:the number of rows affected="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ",TaskIntent="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsanenhance/b/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lccsanenhance/g/e;->a(Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 50
    invoke-virtual {p0, v1}, Lccsanenhance/b/a;->a(Lccsanandroid/database/sqlite/SQLiteDatabase;)V

    return v5

    .line 51
    :catchall_0
    move-exception v2

    goto :goto_0

    :catchall_1
    move-exception v2

    const/4 v1, 0x0

    :goto_0
    :try_start_16
    invoke-static {v2}, Lccsanenhance/g/i;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "update exception"

    .line 53
    invoke-static {v3, v2, p1}, Lccsanenhance/a/f;->b(Ljava/lang/String;Ljava/lang/String;Lccsanenhance/b/b;)V

    .line 55
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update exception:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lccsanenhance/g/e;->b(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    .line 57
    invoke-virtual {p0, v1}, Lccsanenhance/b/a;->a(Lccsanandroid/database/sqlite/SQLiteDatabase;)V

    return v0

    :catchall_2
    move-exception p1

    invoke-virtual {p0, v1}, Lccsanenhance/b/a;->a(Lccsanandroid/database/sqlite/SQLiteDatabase;)V

    .line 58
    throw p1
.end method

.method public onCreate(Lccsanandroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lccsanenhance/b/d;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3
    :catchall_0
    move-exception p1

    invoke-static {p1}, Lccsanenhance/g/i;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    .line 5
    const-string v0, "create db exception"

    invoke-static {v0, p1}, Lccsanenhance/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "create db exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lccsanenhance/g/e;->b(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onUpgrade(Lccsanandroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method
