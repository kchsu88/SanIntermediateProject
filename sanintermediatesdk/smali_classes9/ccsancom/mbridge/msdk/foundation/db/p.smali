.class public Lccsancom/mbridge/msdk/foundation/db/p;
.super Lccsancom/mbridge/msdk/foundation/db/a;
.source "VideoReportDataDao.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/mbridge/msdk/foundation/db/a<",
        "Lccsancom/mbridge/msdk/foundation/entity/m;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lccsancom/mbridge/msdk/foundation/db/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-class v0, Lccsancom/mbridge/msdk/foundation/db/p;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/foundation/db/p;->a:Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    sput-object v0, Lccsancom/mbridge/msdk/foundation/db/p;->b:Lccsancom/mbridge/msdk/foundation/db/p;

    return-void
.end method

.method private constructor <init>(Lccsancom/mbridge/msdk/foundation/db/e;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/foundation/db/a;-><init>(Lccsancom/mbridge/msdk/foundation/db/e;)V

    .line 21
    return-void
.end method

.method public static declared-synchronized a(Lccsancom/mbridge/msdk/foundation/db/e;)Lccsancom/mbridge/msdk/foundation/db/p;
    .locals 2

    const-class v0, Lccsancom/mbridge/msdk/foundation/db/p;

    monitor-enter v0

    .line 26
    :try_start_0
    sget-object v1, Lccsancom/mbridge/msdk/foundation/db/p;->b:Lccsancom/mbridge/msdk/foundation/db/p;

    if-nez v1, :cond_0

    .line 27
    new-instance v1, Lccsancom/mbridge/msdk/foundation/db/p;

    invoke-direct {v1, p0}, Lccsancom/mbridge/msdk/foundation/db/p;-><init>(Lccsancom/mbridge/msdk/foundation/db/e;)V

    sput-object v1, Lccsancom/mbridge/msdk/foundation/db/p;->b:Lccsancom/mbridge/msdk/foundation/db/p;

    .line 29
    :cond_0
    sget-object p0, Lccsancom/mbridge/msdk/foundation/db/p;->b:Lccsancom/mbridge/msdk/foundation/db/p;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 25
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final declared-synchronized a()I
    .locals 4

    monitor-enter p0

    .line 166
    nop

    .line 167
    nop

    .line 169
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "select count(*) from reward_report"

    .line 170
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/p;->getReadableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object v0

    .line 171
    if-eqz v0, :cond_0

    .line 172
    invoke-interface {v0}, Lccsanandroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 173
    invoke-interface {v0, v1}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    :cond_0
    if-eqz v0, :cond_1

    .line 180
    :goto_0
    :try_start_1
    invoke-interface {v0}, Lccsanandroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 179
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 176
    :catch_0
    move-exception v2

    .line 177
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 179
    if-eqz v0, :cond_1

    .line 180
    goto :goto_0

    .line 184
    :cond_1
    :goto_1
    monitor-exit p0

    return v1

    .line 179
    :goto_2
    if-eqz v0, :cond_2

    .line 180
    :try_start_3
    invoke-interface {v0}, Lccsanandroid/database/Cursor;->close()V

    .line 182
    :cond_2
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 165
    :catchall_1
    move-exception v0

    monitor-exit p0

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public final declared-synchronized a(Lccsancom/mbridge/msdk/foundation/entity/m;)J
    .locals 4

    monitor-enter p0

    .line 235
    if-eqz p1, :cond_d

    .line 236
    :try_start_0
    new-instance v0, Lccsanandroid/content/ContentValues;

    invoke-direct {v0}, Lccsanandroid/content/ContentValues;-><init>()V

    .line 237
    const-string v1, "key"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const-string v1, "networkType"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->u()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 239
    const-string v1, "network_str"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->v()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string v1, "isCompleteView"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->w()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 241
    const-string v1, "watchedMillis"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->o()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 242
    const-string v1, "videoLength"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->p()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 243
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->q()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 244
    const-string v1, "offerUrl"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    :cond_0
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->r()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 247
    const-string v1, "reason"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->r()Ljava/lang/String;

    move-result-object v2

    const-string v3, "utf-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    :cond_1
    const-string v1, "result"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->x()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 250
    const-string v1, "duration"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const-string v1, "videoSize"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->t()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 252
    const-string v1, "type"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->f()Ljava/lang/String;

    move-result-object v1

    .line 254
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 255
    const-string v2, "endcard_url"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    :cond_2
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->e()Ljava/lang/String;

    move-result-object v1

    .line 258
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 259
    const-string v2, "video_url"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    :cond_3
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->j()Ljava/lang/String;

    move-result-object v1

    .line 262
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 263
    const-string v2, "rid"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    :cond_4
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->k()Ljava/lang/String;

    move-result-object v1

    .line 266
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 267
    const-string v2, "rid_n"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :cond_5
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->i()Ljava/lang/String;

    move-result-object v1

    .line 270
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 271
    const-string v2, "template_url"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    :cond_6
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->d()Ljava/lang/String;

    move-result-object v1

    .line 275
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 276
    const-string v2, "image_url"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    :cond_7
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->h()Ljava/lang/String;

    move-result-object v1

    .line 279
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 280
    const-string v2, "ad_type"

    const-string v3, "utf-8"

    invoke-static {v1, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    :cond_8
    const-string v1, "unitId"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const-string v1, "campaignId"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string v1, "2000039"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 285
    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->f(Lccsancom/mbridge/msdk/foundation/entity/m;)Ljava/lang/String;

    move-result-object v1

    .line 286
    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/tools/x;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 287
    const-string v2, "h5_click_data"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    :cond_9
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->a()Ljava/lang/String;

    move-result-object v1

    .line 292
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 293
    const-string v2, "resource_type"

    const-string v3, "utf-8"

    invoke-static {v1, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    :cond_a
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->b()Ljava/lang/String;

    move-result-object v1

    .line 297
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 298
    const-string v2, "device_id"

    const-string v3, "utf-8"

    invoke-static {v1, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    :cond_b
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->c()Ljava/lang/String;

    move-result-object p1

    .line 302
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 303
    const-string v1, "creative"

    const-string v2, "utf-8"

    invoke-static {p1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    :cond_c
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/p;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string v1, "reward_report"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Lccsanandroid/content/ContentValues;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 234
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 308
    :catch_0
    move-exception p1

    .line 309
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 310
    sget-object v0, Lccsancom/mbridge/msdk/foundation/db/p;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 234
    :goto_0
    monitor-exit p0

    throw p1

    .line 311
    :cond_d
    nop

    .line 312
    :goto_1
    const-wide/16 v0, -0x1

    monitor-exit p0

    return-wide v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;)Ljava/util/List;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/m;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    monitor-enter p0

    .line 33
    :try_start_0
    invoke-static/range {p1 .. p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    if-nez v1, :cond_f

    .line 34
    nop

    .line 35
    nop

    .line 37
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/foundation/db/p;->getReadableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "reward_report"

    const/4 v4, 0x0

    const-string v5, "key=?"

    const/4 v11, 0x1

    new-array v6, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v0, v6, v12

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lccsanandroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object v13
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 39
    if-eqz v13, :cond_d

    :try_start_2
    invoke-interface {v13}, Lccsanandroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_d

    .line 40
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 41
    :goto_0
    invoke-interface {v13}, Lccsanandroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 42
    const-string v1, "key"

    invoke-interface {v13, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 43
    const-string v1, "networkType"

    invoke-interface {v13, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 44
    const-string v1, "network_str"

    invoke-interface {v13, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 45
    const-string v1, "isCompleteView"

    invoke-interface {v13, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Lccsanandroid/database/Cursor;->getInt(I)I

    .line 46
    const-string v1, "watchedMillis"

    invoke-interface {v13, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Lccsanandroid/database/Cursor;->getInt(I)I

    .line 47
    const-string v1, "videoLength"

    invoke-interface {v13, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 48
    const-string v1, "offerUrl"

    invoke-interface {v13, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 49
    const-string v1, "reason"

    invoke-interface {v13, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 50
    const-string v1, "result"

    invoke-interface {v13, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 51
    const-string v1, "duration"

    invoke-interface {v13, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 52
    const-string v1, "videoSize"

    invoke-interface {v13, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 53
    const-string v1, "campaignId"

    invoke-interface {v13, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 54
    const-string v1, "video_url"

    invoke-interface {v13, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 55
    const-string v2, "unitId"

    invoke-interface {v13, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 56
    const-string v2, "rid"

    invoke-interface {v13, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 57
    const-string v10, "rid_n"

    invoke-interface {v13, v10}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v13, v10}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 58
    const-string v12, "ad_type"

    invoke-interface {v13, v12}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v13, v12}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 59
    const-string v11, "resource_type"

    invoke-interface {v13, v11}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v13, v11}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 60
    move-object/from16 v16, v2

    const-string v2, "device_id"

    invoke-interface {v13, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 61
    move-object/from16 v17, v2

    const-string v2, "creative"

    invoke-interface {v13, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 63
    nop

    .line 64
    move-object/from16 v19, v2

    const-string v2, "2000021"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    if-eqz v2, :cond_0

    .line 65
    :try_start_3
    new-instance v11, Lccsancom/mbridge/msdk/foundation/entity/m;

    move-object/from16 v12, v16

    move-object v2, v11

    move-object v6, v8

    invoke-direct/range {v2 .. v7}, Lccsancom/mbridge/msdk/foundation/entity/m;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {v11, v9}, Lccsancom/mbridge/msdk/foundation/entity/m;->n(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v11, v1}, Lccsancom/mbridge/msdk/foundation/entity/m;->e(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v11, v12}, Lccsancom/mbridge/msdk/foundation/entity/m;->k(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v11, v10}, Lccsancom/mbridge/msdk/foundation/entity/m;->l(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v11, v15}, Lccsancom/mbridge/msdk/foundation/entity/m;->m(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    move-object v1, v0

    move-object v3, v13

    move-object/from16 v24, v14

    goto/16 :goto_2

    .line 151
    :catch_0
    move-exception v0

    goto/16 :goto_6

    .line 71
    :cond_0
    move-object/from16 v2, v16

    move-object/from16 v16, v15

    :try_start_4
    const-string v15, "2000022"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-eqz v15, :cond_1

    .line 72
    :try_start_5
    new-instance v11, Lccsancom/mbridge/msdk/foundation/entity/m;

    move-object/from16 v24, v14

    move-object/from16 v14, v16

    move-object v15, v11

    move-object/from16 v16, v3

    move/from16 v17, v4

    move-object/from16 v19, v5

    move/from16 v20, v6

    move-object/from16 v23, v7

    invoke-direct/range {v15 .. v23}, Lccsancom/mbridge/msdk/foundation/entity/m;-><init>(Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 74
    invoke-virtual {v11, v9}, Lccsancom/mbridge/msdk/foundation/entity/m;->n(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v11, v1}, Lccsancom/mbridge/msdk/foundation/entity/m;->e(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v11, v2}, Lccsancom/mbridge/msdk/foundation/entity/m;->k(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v11, v10}, Lccsancom/mbridge/msdk/foundation/entity/m;->l(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v11, v14}, Lccsancom/mbridge/msdk/foundation/entity/m;->m(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v11, v8}, Lccsancom/mbridge/msdk/foundation/entity/m;->p(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v11, v12}, Lccsancom/mbridge/msdk/foundation/entity/m;->h(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    move-object v1, v0

    move-object v3, v13

    goto/16 :goto_2

    .line 81
    :cond_1
    move-object/from16 v24, v14

    move-object/from16 v14, v16

    :try_start_6
    const-string v1, "2000025"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-eqz v1, :cond_2

    .line 82
    :try_start_7
    new-instance v11, Lccsancom/mbridge/msdk/foundation/entity/m;

    move-object v15, v11

    move-object/from16 v16, v3

    move/from16 v17, v4

    move-object/from16 v19, v5

    move/from16 v20, v6

    move-object/from16 v23, v7

    invoke-direct/range {v15 .. v23}, Lccsancom/mbridge/msdk/foundation/entity/m;-><init>(Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    move-object v1, v0

    move-object v3, v13

    goto/16 :goto_2

    .line 84
    :cond_2
    :try_start_8
    const-string v1, "2000024"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    if-eqz v1, :cond_3

    .line 85
    :try_start_9
    new-instance v11, Lccsancom/mbridge/msdk/foundation/entity/m;

    move-object v2, v11

    move-object v6, v8

    invoke-direct/range {v2 .. v7}, Lccsancom/mbridge/msdk/foundation/entity/m;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    move-object v1, v0

    move-object v3, v13

    goto/16 :goto_2

    .line 86
    :cond_3
    :try_start_a
    const-string v1, "2000039"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    if-eqz v1, :cond_4

    .line 87
    :try_start_b
    const-string v1, "h5_click_data"

    invoke-interface {v13, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 88
    new-instance v11, Lccsancom/mbridge/msdk/foundation/entity/m;

    invoke-direct {v11, v1}, Lccsancom/mbridge/msdk/foundation/entity/m;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 89
    move-object v1, v0

    move-object v3, v13

    goto/16 :goto_2

    :cond_4
    :try_start_c
    const-string v1, "2000043"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    if-eqz v1, :cond_6

    .line 90
    :try_start_d
    const-string v1, "type"

    invoke-interface {v13, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 91
    const-string v1, "endcard_url"

    invoke-interface {v13, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 93
    new-instance v7, Lccsancom/mbridge/msdk/foundation/entity/m;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    move-object v1, v7

    move-object v4, v2

    move-object/from16 v16, v13

    move-object/from16 v3, v17

    move-object/from16 v13, v19

    move-object/from16 v2, p1

    move-object v0, v3

    move v3, v6

    move-object v6, v4

    move-object/from16 v4, v21

    move-object v13, v6

    move-object v6, v9

    move-object/from16 v17, v0

    move-object v0, v7

    move-object v7, v14

    move-object v14, v9

    move-object v9, v15

    :try_start_e
    invoke-direct/range {v1 .. v9}, Lccsancom/mbridge/msdk/foundation/entity/m;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0, v13}, Lccsancom/mbridge/msdk/foundation/entity/m;->k(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v0, v10}, Lccsancom/mbridge/msdk/foundation/entity/m;->l(Ljava/lang/String;)V

    .line 96
    invoke-static {v14}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 97
    invoke-virtual {v0, v14}, Lccsancom/mbridge/msdk/foundation/entity/m;->n(Ljava/lang/String;)V

    .line 99
    :cond_5
    invoke-virtual {v0, v12}, Lccsancom/mbridge/msdk/foundation/entity/m;->h(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v0, v11}, Lccsancom/mbridge/msdk/foundation/entity/m;->a(Ljava/lang/String;)V

    .line 101
    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/entity/m;->b(Ljava/lang/String;)V

    .line 102
    move-object/from16 v2, v19

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/entity/m;->c(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 104
    move-object/from16 v1, p1

    move-object v11, v0

    move-object/from16 v3, v16

    goto/16 :goto_2

    .line 155
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 151
    :catch_1
    move-exception v0

    move-object/from16 v13, v16

    goto/16 :goto_6

    .line 155
    :catchall_1
    move-exception v0

    move-object/from16 v16, v13

    :goto_1
    move-object/from16 v10, v16

    goto/16 :goto_7

    .line 151
    :catch_2
    move-exception v0

    move-object/from16 v16, v13

    goto/16 :goto_6

    .line 104
    :cond_6
    move-object v0, v9

    move-object/from16 v16, v13

    move-object/from16 v1, v17

    move-object v13, v2

    move-object/from16 v2, v19

    :try_start_f
    const-string v3, "2000045"

    move-object v5, v1

    move-object/from16 v1, p1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 105
    new-instance v11, Lccsancom/mbridge/msdk/foundation/entity/m;

    invoke-direct {v11}, Lccsancom/mbridge/msdk/foundation/entity/m;-><init>()V

    .line 106
    invoke-virtual {v11, v1}, Lccsancom/mbridge/msdk/foundation/entity/m;->o(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v11, v4}, Lccsancom/mbridge/msdk/foundation/entity/m;->b(I)V

    .line 108
    invoke-virtual {v11, v6}, Lccsancom/mbridge/msdk/foundation/entity/m;->c(I)V

    .line 109
    invoke-virtual {v11, v0}, Lccsancom/mbridge/msdk/foundation/entity/m;->n(Ljava/lang/String;)V

    .line 110
    const-string v0, "template_url"
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    move-object/from16 v3, v16

    :try_start_10
    invoke-interface {v3, v0}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-virtual {v11, v0}, Lccsancom/mbridge/msdk/foundation/entity/m;->i(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v11, v8}, Lccsancom/mbridge/msdk/foundation/entity/m;->p(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v11, v13}, Lccsancom/mbridge/msdk/foundation/entity/m;->k(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v11, v10}, Lccsancom/mbridge/msdk/foundation/entity/m;->l(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v11, v14}, Lccsancom/mbridge/msdk/foundation/entity/m;->m(Ljava/lang/String;)V

    .line 116
    goto :goto_2

    :cond_7
    move-object/from16 v3, v16

    const-string v7, "2000044"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 117
    new-instance v11, Lccsancom/mbridge/msdk/foundation/entity/m;

    invoke-direct {v11}, Lccsancom/mbridge/msdk/foundation/entity/m;-><init>()V

    .line 118
    invoke-virtual {v11, v1}, Lccsancom/mbridge/msdk/foundation/entity/m;->o(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v11, v4}, Lccsancom/mbridge/msdk/foundation/entity/m;->b(I)V

    .line 120
    invoke-virtual {v11, v0}, Lccsancom/mbridge/msdk/foundation/entity/m;->n(Ljava/lang/String;)V

    .line 121
    const-string v0, "image_url"

    invoke-interface {v3, v0}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-virtual {v11, v0}, Lccsancom/mbridge/msdk/foundation/entity/m;->d(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v11, v8}, Lccsancom/mbridge/msdk/foundation/entity/m;->p(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v11, v13}, Lccsancom/mbridge/msdk/foundation/entity/m;->k(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v11, v10}, Lccsancom/mbridge/msdk/foundation/entity/m;->l(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v11, v14}, Lccsancom/mbridge/msdk/foundation/entity/m;->m(Ljava/lang/String;)V

    .line 127
    goto :goto_2

    :cond_8
    const-string v7, "2000054"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 128
    new-instance v7, Lccsancom/mbridge/msdk/foundation/entity/m;

    invoke-direct {v7}, Lccsancom/mbridge/msdk/foundation/entity/m;-><init>()V

    .line 129
    invoke-virtual {v7, v1}, Lccsancom/mbridge/msdk/foundation/entity/m;->o(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v7, v11}, Lccsancom/mbridge/msdk/foundation/entity/m;->a(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v7, v14}, Lccsancom/mbridge/msdk/foundation/entity/m;->m(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v7, v5}, Lccsancom/mbridge/msdk/foundation/entity/m;->b(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v7, v12}, Lccsancom/mbridge/msdk/foundation/entity/m;->h(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v7, v0}, Lccsancom/mbridge/msdk/foundation/entity/m;->n(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v7, v13}, Lccsancom/mbridge/msdk/foundation/entity/m;->k(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v7, v10}, Lccsancom/mbridge/msdk/foundation/entity/m;->l(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v7, v6}, Lccsancom/mbridge/msdk/foundation/entity/m;->c(I)V

    .line 138
    invoke-virtual {v7, v8}, Lccsancom/mbridge/msdk/foundation/entity/m;->p(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v7, v4}, Lccsancom/mbridge/msdk/foundation/entity/m;->b(I)V

    .line 140
    invoke-virtual {v7, v2}, Lccsancom/mbridge/msdk/foundation/entity/m;->c(Ljava/lang/String;)V

    move-object v11, v7

    goto :goto_2

    .line 127
    :cond_9
    const/4 v11, 0x0

    .line 142
    :goto_2
    if-eqz v11, :cond_a

    .line 143
    move-object/from16 v0, v24

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 142
    :cond_a
    move-object/from16 v0, v24

    .line 145
    :goto_3
    const-string v2, "id"

    invoke-interface {v3, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 146
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/foundation/db/p;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "reward_report"

    const-string v6, "id = ?"

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x0

    aput-object v2, v8, v9

    invoke-virtual {v4, v5, v6, v8}, Lccsanandroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 148
    move-object v14, v0

    move-object v0, v1

    move-object v13, v3

    const/4 v11, 0x1

    const/4 v12, 0x0

    goto/16 :goto_0

    .line 155
    :catchall_2
    move-exception v0

    goto :goto_5

    .line 151
    :catch_3
    move-exception v0

    :goto_4
    move-object v13, v3

    goto :goto_6

    .line 155
    :catchall_3
    move-exception v0

    move-object/from16 v3, v16

    goto :goto_5

    .line 151
    :catch_4
    move-exception v0

    move-object/from16 v3, v16

    goto :goto_4

    .line 149
    :cond_b
    move-object v3, v13

    move-object v0, v14

    .line 155
    if-eqz v3, :cond_c

    .line 156
    :try_start_11
    invoke-interface {v3}, Lccsanandroid/database/Cursor;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    .line 149
    :cond_c
    monitor-exit p0

    return-object v0

    .line 155
    :catchall_4
    move-exception v0

    move-object v3, v13

    :goto_5
    move-object v10, v3

    goto :goto_7

    .line 151
    :catch_5
    move-exception v0

    move-object v3, v13

    goto :goto_6

    .line 39
    :cond_d
    move-object v3, v13

    .line 155
    if-eqz v3, :cond_f

    .line 156
    :try_start_12
    invoke-interface {v3}, Lccsanandroid/database/Cursor;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    goto :goto_8

    .line 155
    :catchall_5
    move-exception v0

    const/4 v10, 0x0

    goto :goto_7

    .line 151
    :catch_6
    move-exception v0

    const/4 v13, 0x0

    .line 152
    :goto_6
    :try_start_13
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 153
    sget-object v1, Lccsancom/mbridge/msdk/foundation/db/p;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    .line 155
    if-eqz v13, :cond_f

    .line 156
    :try_start_14
    invoke-interface {v13}, Lccsanandroid/database/Cursor;->close()V

    goto :goto_8

    .line 155
    :catchall_6
    move-exception v0

    move-object v10, v13

    :goto_7
    if-eqz v10, :cond_e

    .line 156
    invoke-interface {v10}, Lccsanandroid/database/Cursor;->close()V

    .line 158
    :cond_e
    throw v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    .line 161
    :cond_f
    :goto_8
    monitor-exit p0

    const/4 v1, 0x0

    return-object v1

    .line 32
    :catchall_7
    move-exception v0

    monitor-exit p0

    goto :goto_a

    :goto_9
    throw v0

    :goto_a
    goto :goto_9
.end method
