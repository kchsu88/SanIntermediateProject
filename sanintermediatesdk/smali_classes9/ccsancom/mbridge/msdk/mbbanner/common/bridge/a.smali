.class public final Lccsancom/mbridge/msdk/mbbanner/common/bridge/a;
.super Lccsancom/mbridge/msdk/mbsignalcommon/communication/a;
.source "BannerSignalCommunicationImpl.java"


# instance fields
.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lccsanandroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Lccsancom/mbridge/msdk/mbbanner/common/b/a;

.field private h:Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;

.field private i:Z


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Lccsancom/mbridge/msdk/mbsignalcommon/communication/a;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/a;->i:Z

    .line 55
    iput-object p2, p0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/a;->d:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/a;->e:Ljava/lang/String;

    .line 57
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/a;->b:Ljava/lang/ref/WeakReference;

    .line 58
    return-void
.end method

.method private static a(Ljava/lang/Object;Lccsanorg/json/JSONObject;)V
    .locals 19

    .line 337
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "resource"

    const-string v3, "type"

    const-string v4, ""

    new-instance v5, Lccsanorg/json/JSONObject;

    invoke-direct {v5}, Lccsanorg/json/JSONObject;-><init>()V

    .line 338
    const-string v6, "message"

    const-string v7, "code"

    const/4 v8, 0x2

    const/4 v9, 0x1

    const-string v10, "BannerSignalCommunicationImpl"

    if-nez v0, :cond_0

    .line 340
    :try_start_0
    invoke-virtual {v5, v7, v9}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 341
    const-string v0, "params is null"

    invoke-virtual {v5, v6, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 342
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object v0

    invoke-virtual {v5}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2, v8}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    goto :goto_0

    .line 343
    :catch_0
    move-exception v0

    .line 344
    invoke-virtual {v0}, Lccsanorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    :goto_0
    return-void

    .line 349
    :cond_0
    const/4 v11, 0x0

    :try_start_1
    invoke-virtual {v5, v7, v11}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 350
    invoke-virtual {v5, v6, v4}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 352
    invoke-virtual {v0, v2}, Lccsanorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object v12

    .line 353
    if-eqz v12, :cond_d

    invoke-virtual {v12}, Lccsanorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_d

    .line 355
    new-instance v13, Lccsanorg/json/JSONArray;

    invoke-direct {v13}, Lccsanorg/json/JSONArray;-><init>()V

    .line 356
    invoke-virtual {v12}, Lccsanorg/json/JSONArray;->length()I

    move-result v14

    .line 357
    const/4 v15, 0x0

    :goto_1
    if-ge v15, v14, :cond_c

    .line 358
    invoke-virtual {v12, v15}, Lccsanorg/json/JSONArray;->getJSONObject(I)Lccsanorg/json/JSONObject;

    move-result-object v0

    .line 359
    const-string v8, "ref"

    invoke-virtual {v0, v8, v4}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 360
    invoke-virtual {v0, v3}, Lccsanorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 361
    new-instance v11, Lccsanorg/json/JSONObject;

    invoke-direct {v11}, Lccsanorg/json/JSONObject;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 362
    move-object/from16 p1, v12

    const-string v12, "path"

    if-ne v0, v9, :cond_4

    :try_start_2
    invoke-static {v8}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_4

    .line 363
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    .line 364
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lccsancom/mbridge/msdk/foundation/db/f;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/db/f;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lccsancom/mbridge/msdk/foundation/db/o;->a(Lccsancom/mbridge/msdk/foundation/db/e;)Lccsancom/mbridge/msdk/foundation/db/o;

    move-result-object v9

    invoke-virtual {v9, v8}, Lccsancom/mbridge/msdk/foundation/db/o;->a(Ljava/lang/String;)Lccsancom/mbridge/msdk/foundation/entity/l;

    move-result-object v9

    .line 365
    if-eqz v9, :cond_3

    .line 366
    move/from16 v16, v14

    const-string v14, "VideoBean not null"

    invoke-static {v10, v14}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const/4 v14, 0x1

    invoke-virtual {v0, v3, v14}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 368
    const-string v14, "videoDataLength"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    move-object/from16 v17, v6

    :try_start_3
    invoke-virtual {v9}, Lccsancom/mbridge/msdk/foundation/entity/l;->c()I

    move-result v6

    invoke-virtual {v0, v14, v6}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 369
    invoke-virtual {v9}, Lccsancom/mbridge/msdk/foundation/entity/l;->e()Ljava/lang/String;

    move-result-object v6

    .line 370
    invoke-static {v6}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v18, v7

    const-string v7, "path4Web"

    if-eqz v14, :cond_1

    .line 371
    :try_start_4
    const-string v6, "VideoPath null"

    invoke-static {v10, v6}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    invoke-virtual {v0, v12, v4}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 373
    invoke-virtual {v0, v7, v4}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    goto :goto_2

    .line 375
    :cond_1
    const-string v14, "VideoPath not null"

    invoke-static {v10, v14}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    invoke-virtual {v0, v12, v6}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 377
    invoke-virtual {v0, v7, v6}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 379
    :goto_2
    invoke-virtual {v9}, Lccsancom/mbridge/msdk/foundation/entity/l;->d()I

    move-result v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/4 v7, 0x5

    const-string v9, "downloaded"

    if-ne v6, v7, :cond_2

    .line 380
    const/4 v6, 0x1

    :try_start_5
    invoke-virtual {v0, v9, v6}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    const/4 v6, 0x0

    goto :goto_3

    .line 382
    :cond_2
    const/4 v6, 0x0

    invoke-virtual {v0, v9, v6}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 384
    :goto_3
    invoke-virtual {v11, v8, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 385
    invoke-virtual {v13, v11}, Lccsanorg/json/JSONArray;->put(Ljava/lang/Object;)Lccsanorg/json/JSONArray;

    .line 386
    goto :goto_4

    .line 432
    :catchall_0
    move-exception v0

    move-object v2, v7

    goto/16 :goto_b

    .line 387
    :cond_3
    move-object/from16 v17, v6

    move-object/from16 v18, v7

    move/from16 v16, v14

    const/4 v6, 0x0

    const-string v0, "VideoBean null"

    invoke-static {v10, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    :goto_4
    goto/16 :goto_a

    .line 362
    :cond_4
    move-object/from16 v17, v6

    move-object/from16 v18, v7

    move/from16 v16, v14

    const/4 v6, 0x0

    .line 389
    const/4 v7, 0x2

    if-ne v0, v7, :cond_6

    invoke-static {v8}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 390
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    .line 391
    const/4 v7, 0x2

    invoke-virtual {v0, v3, v7}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 392
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/g;->a()Lccsancom/mbridge/msdk/videocommon/download/g;

    move-result-object v7

    invoke-virtual {v7, v8}, Lccsancom/mbridge/msdk/videocommon/download/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_5

    move-object v7, v4

    goto :goto_5

    :cond_5
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/g;->a()Lccsancom/mbridge/msdk/videocommon/download/g;

    move-result-object v7

    invoke-virtual {v7, v8}, Lccsancom/mbridge/msdk/videocommon/download/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_5
    invoke-virtual {v0, v12, v7}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 393
    invoke-virtual {v11, v8, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 394
    invoke-virtual {v13, v11}, Lccsanorg/json/JSONArray;->put(Ljava/lang/Object;)Lccsanorg/json/JSONArray;

    .line 395
    goto/16 :goto_a

    :cond_6
    const/4 v7, 0x3

    if-ne v0, v7, :cond_9

    invoke-static {v8}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-nez v9, :cond_9

    .line 396
    nop

    .line 398
    :try_start_6
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 399
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getFileInfo Mraid file "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "file:////"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_6

    .line 407
    :cond_7
    move-object v0, v4

    :goto_6
    goto :goto_7

    .line 403
    :catchall_1
    move-exception v0

    .line 404
    :try_start_7
    sget-boolean v9, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v9, :cond_8

    .line 405
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 408
    :cond_8
    move-object v0, v4

    :goto_7
    new-instance v9, Lccsanorg/json/JSONObject;

    invoke-direct {v9}, Lccsanorg/json/JSONObject;-><init>()V

    .line 409
    invoke-virtual {v9, v3, v7}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 410
    invoke-virtual {v9, v12, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 411
    invoke-virtual {v11, v8, v9}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 412
    invoke-virtual {v13, v11}, Lccsanorg/json/JSONArray;->put(Ljava/lang/Object;)Lccsanorg/json/JSONArray;

    goto :goto_9

    .line 413
    :cond_9
    const/4 v7, 0x4

    if-ne v0, v7, :cond_b

    invoke-static {v8}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 414
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    .line 415
    invoke-virtual {v0, v3, v7}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 416
    invoke-static {v8}, Lccsancom/mbridge/msdk/foundation/tools/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_a

    move-object v7, v4

    goto :goto_8

    :cond_a
    invoke-static {v8}, Lccsancom/mbridge/msdk/foundation/tools/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_8
    invoke-virtual {v0, v12, v7}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 417
    invoke-virtual {v11, v8, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 418
    invoke-virtual {v13, v11}, Lccsanorg/json/JSONArray;->put(Ljava/lang/Object;)Lccsanorg/json/JSONArray;

    goto :goto_a

    .line 413
    :cond_b
    :goto_9
    nop

    .line 357
    :goto_a
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v12, p1

    move/from16 v14, v16

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v11, 0x0

    goto/16 :goto_1

    .line 421
    :cond_c
    move-object/from16 v17, v6

    move-object/from16 v18, v7

    invoke-virtual {v5, v2, v13}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 422
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object v0

    invoke-virtual {v5}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 423
    goto :goto_d

    .line 432
    :catchall_2
    move-exception v0

    move-object/from16 v3, v17

    move-object/from16 v2, v18

    goto :goto_e

    .line 353
    :cond_d
    move-object/from16 v17, v6

    move-object/from16 v18, v7

    .line 425
    move-object/from16 v2, v18

    const/4 v3, 0x1

    :try_start_8
    invoke-virtual {v5, v2, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 426
    const-string v0, "resource is null"
    :try_end_8
    .catch Lccsanorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-object/from16 v3, v17

    :try_start_9
    invoke-virtual {v5, v3, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 427
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object v0

    invoke-virtual {v5}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v6, 0x2

    invoke-static {v4, v6}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_9
    .catch Lccsanorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 430
    goto :goto_d

    .line 428
    :catch_1
    move-exception v0

    goto :goto_c

    .line 432
    :catchall_3
    move-exception v0

    :goto_b
    move-object/from16 v3, v17

    goto :goto_e

    .line 428
    :catch_2
    move-exception v0

    move-object/from16 v3, v17

    .line 429
    :goto_c
    :try_start_a
    invoke-virtual {v0}, Lccsanorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 440
    :goto_d
    goto :goto_f

    .line 432
    :catchall_4
    move-exception v0

    goto :goto_e

    :catchall_5
    move-exception v0

    move-object v3, v6

    move-object v2, v7

    .line 434
    :goto_e
    const/4 v4, 0x1

    :try_start_b
    invoke-virtual {v5, v2, v4}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 435
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v3, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 436
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object v0

    invoke-virtual {v5}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_b
    .catch Lccsanorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_3

    .line 439
    goto :goto_f

    .line 437
    :catch_3
    move-exception v0

    .line 438
    invoke-virtual {v0}, Lccsanorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    :goto_f
    return-void
.end method

.method private b()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;
    .locals 2

    .line 269
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/a;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 270
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/a;->c:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    return-object v0

    .line 271
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 75
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/a;->g:Lccsancom/mbridge/msdk/mbbanner/common/b/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 76
    iput-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/a;->g:Lccsancom/mbridge/msdk/mbbanner/common/b/a;

    .line 79
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/a;->h:Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;

    if-eqz v0, :cond_1

    .line 80
    iput-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/a;->h:Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;

    .line 82
    :cond_1
    return-void
.end method

.method public final a(I)V
    .locals 0

    .line 71
    iput p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/a;->f:I

    .line 72
    return-void
.end method

.method public final a(Lccsancom/mbridge/msdk/mbbanner/common/b/a;)V
    .locals 0

    .line 61
    if-eqz p1, :cond_0

    .line 62
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/a;->g:Lccsancom/mbridge/msdk/mbbanner/common/b/a;

    .line 64
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4

    .line 105
    :try_start_0
    new-instance p2, Lccsanorg/json/JSONObject;

    invoke-direct {p2}, Lccsanorg/json/JSONObject;-><init>()V

    .line 106
    new-instance v0, Lccsancom/mbridge/msdk/foundation/tools/b;

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/b;-><init>(Lccsanandroid/content/Context;)V

    .line 107
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1}, Lccsanorg/json/JSONObject;-><init>()V

    .line 108
    const-string v2, "dev_close_state"

    iget v3, p0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/a;->f:I

    invoke-virtual {v1, v2, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 109
    const-string v2, "sdkSetting"

    invoke-virtual {p2, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 110
    const-string v1, "device"

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/tools/b;->a()Lccsanorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 111
    const-string v0, "campaignList"

    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/a;->c:Ljava/util/List;

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->parseCamplistToJson(Ljava/util/List;)Lccsanorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 112
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object v0

    .line 113
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lccsancom/mbridge/msdk/b/b;->e(Ljava/lang/String;Ljava/lang/String;)Lccsancom/mbridge/msdk/b/d;

    move-result-object v0

    .line 114
    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/a;->e:Ljava/lang/String;

    invoke-static {v0}, Lccsancom/mbridge/msdk/b/d;->d(Ljava/lang/String;)Lccsancom/mbridge/msdk/b/d;

    move-result-object v0

    .line 117
    :cond_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/a;->d:Ljava/lang/String;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 118
    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/b/d;->h(Ljava/lang/String;)V

    .line 120
    :cond_1
    const-string v1, "unitSetting"

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/b/d;->u()Lccsanorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 121
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object v0

    .line 122
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/b/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 124
    const-string v1, "appSetting"

    new-instance v2, Lccsanorg/json/JSONObject;

    invoke-direct {v2, v0}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 127
    :cond_2
    invoke-virtual {p2}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    const/4 v0, 0x2

    invoke-static {p2, v0}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    .line 128
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    goto :goto_0

    .line 129
    :catchall_0
    move-exception p1

    .line 130
    const-string p2, "BannerSignalCommunicationImpl"

    const-string v0, "init"

    invoke-static {p2, v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 132
    :goto_0
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;)V"
        }
    .end annotation

    .line 67
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/a;->c:Ljava/util/List;

    .line 68
    return-void
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 136
    const-string p1, "BannerSignalCommunicationImpl"

    const-string v0, "click"

    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :try_start_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/a;->c:Ljava/util/List;

    if-nez v1, :cond_0

    .line 139
    return-void

    .line 142
    :cond_0
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 143
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 144
    const-string p2, "pt"

    invoke-virtual {v1, p2}, Lccsanorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object p2

    .line 145
    invoke-static {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->parseCampaignWithBackData(Lccsanorg/json/JSONObject;)Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object p2

    .line 147
    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/a;->g:Lccsancom/mbridge/msdk/mbbanner/common/b/a;

    if-eqz v1, :cond_1

    .line 148
    invoke-interface {v1, p2}, Lccsancom/mbridge/msdk/mbbanner/common/b/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    :cond_1
    goto :goto_0

    .line 151
    :catchall_0
    move-exception p2

    .line 152
    invoke-static {p1, v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 154
    :goto_0
    return-void
.end method

.method public final c(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 87
    if-eqz p1, :cond_0

    .line 88
    :try_start_0
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 89
    const-string p2, "isReady"

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p2

    .line 91
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Lccsancom/mbridge/msdk/mbsignalcommon/communication/b;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/a;->g:Lccsancom/mbridge/msdk/mbbanner/common/b/a;

    if-eqz p1, :cond_0

    .line 94
    invoke-interface {p1, p2}, Lccsancom/mbridge/msdk/mbbanner/common/b/a;->b(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 97
    :catchall_0
    move-exception p1

    .line 98
    const-string p2, "BannerSignalCommunicationImpl"

    const-string v0, "readyStatus"

    invoke-static {p2, v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 99
    :cond_0
    :goto_0
    nop

    .line 100
    :goto_1
    return-void
.end method

.method public final close()V
    .locals 3

    .line 252
    const-string v0, "BannerSignalCommunicationImpl"

    const-string v1, "close"

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :try_start_0
    iget-object v2, p0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/a;->g:Lccsancom/mbridge/msdk/mbbanner/common/b/a;

    if-eqz v2, :cond_0

    .line 255
    invoke-interface {v2}, Lccsancom/mbridge/msdk/mbbanner/common/b/a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    :cond_0
    goto :goto_0

    .line 257
    :catchall_0
    move-exception v2

    .line 258
    invoke-static {v0, v1, v2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 260
    :goto_0
    return-void
.end method

.method public final d(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 158
    const-string p1, "BannerSignalCommunicationImpl"

    const-string v0, "toggleCloseBtn"

    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :try_start_0
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 161
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 162
    const-string p2, "state"

    invoke-virtual {v1, p2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    .line 163
    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/a;->g:Lccsancom/mbridge/msdk/mbbanner/common/b/a;

    if-eqz v1, :cond_0

    .line 164
    invoke-interface {v1, p2}, Lccsancom/mbridge/msdk/mbbanner/common/b/a;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    :cond_0
    goto :goto_0

    .line 167
    :catchall_0
    move-exception p2

    .line 168
    invoke-static {p1, v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 170
    :goto_0
    return-void
.end method

.method public final e(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 174
    const-string v0, "BannerSignalCommunicationImpl"

    const-string v1, "triggerCloseBtn"

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :try_start_0
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 177
    new-instance v2, Lccsanorg/json/JSONObject;

    invoke-direct {v2, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 178
    const-string p2, "state"

    invoke-virtual {v2, p2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 179
    iget-object v2, p0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/a;->g:Lccsancom/mbridge/msdk/mbbanner/common/b/a;

    if-eqz v2, :cond_0

    .line 180
    invoke-interface {v2, p2}, Lccsancom/mbridge/msdk/mbbanner/common/b/a;->a(Ljava/lang/String;)V

    .line 182
    :cond_0
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object p2

    const/4 v2, 0x0

    invoke-static {v2}, Lccsancom/mbridge/msdk/mbsignalcommon/communication/b;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, p1, v2}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    :cond_1
    goto :goto_0

    .line 184
    :catchall_0
    move-exception p2

    .line 185
    invoke-static {v0, v1, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 186
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object p2

    const/4 v0, -0x1

    invoke-static {v0}, Lccsancom/mbridge/msdk/mbsignalcommon/communication/b;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    :goto_0
    return-void
.end method

.method public final expand(Ljava/lang/String;Z)V
    .locals 4

    .line 289
    :try_start_0
    const-string v0, ""

    .line 290
    invoke-direct {p0}, Lccsancom/mbridge/msdk/mbbanner/common/bridge/a;->b()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 291
    invoke-direct {p0}, Lccsancom/mbridge/msdk/mbbanner/common/bridge/a;->b()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getBannerHtml()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    invoke-direct {p0}, Lccsancom/mbridge/msdk/mbbanner/common/bridge/a;->b()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getBannerUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 293
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file:////"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lccsancom/mbridge/msdk/mbbanner/common/bridge/a;->b()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getBannerHtml()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 296
    :cond_1
    :goto_0
    new-instance v1, Lccsanandroid/os/Bundle;

    invoke-direct {v1}, Lccsanandroid/os/Bundle;-><init>()V

    .line 297
    const-string v2, "url"

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, p1

    :goto_1
    invoke-virtual {v1, v2, v0}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const-string v0, "shouldUseCustomClose"

    invoke-virtual {v1, v0, p2}, Lccsanandroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 300
    iget-object p2, p0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/a;->b:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_4

    .line 301
    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lccsanandroid/content/Context;

    .line 302
    if-eqz p2, :cond_4

    .line 303
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/a;->h:Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 304
    return-void

    .line 306
    :cond_3
    new-instance v0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;

    iget-object v2, p0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/a;->g:Lccsancom/mbridge/msdk/mbbanner/common/b/a;

    invoke-direct {v0, p2, v1, v2}, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;-><init>(Lccsanandroid/content/Context;Lccsanandroid/os/Bundle;Lccsancom/mbridge/msdk/mbbanner/common/b/a;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/a;->h:Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;

    .line 307
    iget-object p2, p0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/a;->e:Ljava/lang/String;

    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/a;->c:Ljava/util/List;

    invoke-virtual {v0, p2, v1}, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;->setCampaignList(Ljava/lang/String;Ljava/util/List;)V

    .line 308
    iget-object p2, p0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/a;->h:Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;->show()V

    .line 312
    :cond_4
    iget-object p2, p0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/a;->g:Lccsancom/mbridge/msdk/mbbanner/common/b/a;

    if-eqz p2, :cond_5

    .line 313
    const/4 v0, 0x1

    invoke-interface {p2, v0}, Lccsancom/mbridge/msdk/mbbanner/common/b/a;->a(Z)V

    .line 316
    :cond_5
    iget-object p2, p0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/a;->e:Ljava/lang/String;

    invoke-direct {p0}, Lccsancom/mbridge/msdk/mbbanner/common/bridge/a;->b()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v0

    invoke-static {p2, v0, p1}, Lccsancom/mbridge/msdk/mbbanner/common/d/a;->a(Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    goto :goto_2

    .line 318
    :catchall_0
    move-exception p1

    .line 319
    const-string p2, "BannerSignalCommunicationImpl"

    const-string v0, "expand"

    invoke-static {p2, v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 321
    :goto_2
    return-void
.end method

.method public final i(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 7

    .line 192
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sendImpressions:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BannerSignalCommunicationImpl"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :try_start_0
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 195
    new-instance p1, Lccsanorg/json/JSONArray;

    invoke-direct {p1, p2}, Lccsanorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 196
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 197
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lccsanorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 198
    invoke-virtual {p1, v1}, Lccsanorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 199
    iget-object v3, p0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/a;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 200
    invoke-virtual {v4}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 201
    iget-object v5, p0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/a;->e:Ljava/lang/String;

    const-string v6, "banner"

    invoke-static {v5, v4, v6}, Lccsancom/mbridge/msdk/foundation/same/a/d;->b(Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;)V

    .line 203
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    :cond_0
    goto :goto_1

    .line 197
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 208
    :cond_2
    new-instance p1, Ljava/lang/Thread;

    new-instance v1, Lccsancom/mbridge/msdk/mbbanner/common/bridge/a$1;

    invoke-direct {v1, p0, p2}, Lccsancom/mbridge/msdk/mbbanner/common/bridge/a$1;-><init>(Lccsancom/mbridge/msdk/mbbanner/common/bridge/a;Ljava/util/ArrayList;)V

    invoke-direct {p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 222
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    :cond_3
    goto :goto_2

    .line 224
    :catchall_0
    move-exception p1

    .line 225
    const-string p2, "sendImpressions"

    invoke-static {v0, p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 227
    :goto_2
    return-void
.end method

.method public final j(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 325
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    const-string p2, "params is empty"

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/mbsignalcommon/communication/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 327
    return-void

    .line 330
    :cond_0
    :try_start_0
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/mbbanner/common/bridge/a;->a(Ljava/lang/Object;Lccsanorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    goto :goto_0

    .line 331
    :catchall_0
    move-exception p1

    .line 332
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BannerSignalCommunicationImpl"

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    :goto_0
    return-void
.end method

.method public final open(Ljava/lang/String;)V
    .locals 7

    .line 231
    const-string v0, "BannerSignalCommunicationImpl"

    const-string v1, "open"

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    :try_start_0
    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const/4 v2, 0x0

    .line 235
    iget-object v3, p0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/a;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 236
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v3

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v3

    new-instance v5, Lccsanandroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    .line 237
    invoke-static {p1}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object p1

    invoke-direct {v5, v6, p1}, Lccsanandroid/content/Intent;-><init>(Ljava/lang/String;Lccsanandroid/net/Uri;)V

    invoke-virtual {v3, v5}, Lccsanandroid/content/Context;->startActivity(Lccsanandroid/content/Intent;)V

    move-object p1, v2

    goto :goto_0

    .line 239
    :cond_0
    nop

    .line 242
    :goto_0
    iget-object v2, p0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/a;->g:Lccsancom/mbridge/msdk/mbbanner/common/b/a;

    if-eqz v2, :cond_1

    .line 243
    invoke-interface {v2, v4, p1}, Lccsancom/mbridge/msdk/mbbanner/common/b/a;->a(ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    :cond_1
    goto :goto_1

    .line 245
    :catchall_0
    move-exception p1

    .line 246
    invoke-static {v0, v1, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 248
    :goto_1
    return-void
.end method

.method public final unload()V
    .locals 0

    .line 264
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/mbbanner/common/bridge/a;->close()V

    .line 265
    return-void
.end method

.method public final useCustomClose(Z)V
    .locals 2

    .line 277
    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 278
    :goto_0
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/a;->g:Lccsancom/mbridge/msdk/mbbanner/common/b/a;

    if-eqz v0, :cond_1

    .line 279
    invoke-interface {v0, p1}, Lccsancom/mbridge/msdk/mbbanner/common/b/a;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    :cond_1
    goto :goto_1

    .line 281
    :catchall_0
    move-exception p1

    .line 282
    const-string v0, "BannerSignalCommunicationImpl"

    const-string v1, "useCustomClose"

    invoke-static {v0, v1, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 284
    :goto_1
    return-void
.end method
