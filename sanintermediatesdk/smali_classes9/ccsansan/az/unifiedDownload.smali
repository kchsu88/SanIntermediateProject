.class public Lccsansan/az/unifiedDownload;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/az/unifiedDownload$getDownloadingList;
    }
.end annotation


# instance fields
.field public IncentiveDownloadUtils:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsansan/az/addDownloadListener;",
            ">;"
        }
    .end annotation
.end field

.field private IncentiveSDK:J

.field public addDownloadListener:Ljava/lang/String;

.field private deleteDownItem:Ljava/lang/String;

.field private deleteDownList:J

.field private getDownloadStatusByUrl:Ljava/lang/String;

.field private getDownloadedCount:J

.field private getDownloadedList:Ljava/lang/String;

.field private getDownloadedRecordByUrl:Ljava/lang/String;

.field private getDownloadingCount:Ljava/lang/String;

.field private getDownloadingList:J

.field private getDownloadingRecordByUrl:Ljava/lang/String;

.field private getPackageNameByRecord:J

.field private getThumbPathByRecord:J

.field private pause:J

.field private removeDownloadListener:J

.field private resume:J

.field private trackReportClick:Ljava/lang/String;

.field private trackReportShow:I

.field private unifiedDownload:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addDownloadListener(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lccsansan/az/addDownloadListener;",
            ">;"
        }
    .end annotation

    .line 322
    sget v0, Lccsansan/az/addDownloadListener;->IncentiveDownloadUtils:I

    invoke-static {p0, v0}, Lccsansan/az/unifiedDownload;->getDownloadingList(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    .line 323
    sget v0, Lccsansan/az/addDownloadListener;->addDownloadListener:I

    invoke-static {p1, v0}, Lccsansan/az/unifiedDownload;->getDownloadingList(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    .line 325
    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 327
    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object p0
.end method

.method private static getDownloadingList(Ljava/lang/String;I)Ljava/util/List;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lccsansan/az/addDownloadListener;",
            ">;"
        }
    .end annotation

    .line 328
    move/from16 v0, p1

    const-string v1, "t_c_u_min_t"

    const-string v2, "t_c_u"

    const-string v3, "hb_timeout"

    const-string v4, "ecpm"

    const-string v5, "unit_id"

    const-string v6, "pacing"

    const-string v7, "nw_req_num"

    const-string v8, "nw_timeout"

    const-string v9, "nw_cache_time"

    const-string v10, "ug_id"

    const-string v11, "nw_firm_name"

    const-string v12, "nw_firm_id"

    const-string v13, "content"

    const-string v14, "caps_h"

    const-string v15, "caps_d"

    move-object/from16 v16, v1

    const-string v1, "adapter_class"

    move-object/from16 v17, v2

    sget v2, Lccsansan/az/addDownloadListener;->IncentiveDownloadUtils:I

    move-object/from16 v18, v3

    if-eq v0, v2, :cond_0

    sget v2, Lccsansan/az/addDownloadListener;->addDownloadListener:I

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 329
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 331
    :try_start_0
    new-instance v3, Lccsanorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 p1, v2

    move-object/from16 v2, p0

    :try_start_1
    invoke-direct {v3, v2}, Lccsanorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 335
    :goto_1
    move/from16 v19, v0

    invoke-virtual {v3}, Lccsanorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_22

    .line 336
    invoke-virtual {v3, v2}, Lccsanorg/json/JSONArray;->getJSONObject(I)Lccsanorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_1

    move-object/from16 v22, v1

    move-object/from16 v20, v3

    move-object/from16 v23, v10

    move-object/from16 v24, v11

    move-object/from16 v21, v14

    const/4 v1, 0x1

    move-object v10, v6

    move-object v11, v7

    move-object v14, v8

    move-object/from16 v7, v16

    move-object/from16 v6, v17

    move-object/from16 v16, v4

    move-object v8, v5

    move-object/from16 v4, p1

    goto/16 :goto_21

    .line 340
    :cond_1
    move-object/from16 v20, v3

    new-instance v3, Lccsansan/az/addDownloadListener;

    invoke-direct {v3}, Lccsansan/az/addDownloadListener;-><init>()V

    .line 344
    invoke-virtual {v0, v1}, Lccsanorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_2

    goto :goto_2

    .line 347
    :cond_2
    invoke-virtual {v0, v1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    :goto_2
    nop

    .line 351
    invoke-virtual {v0, v15}, Lccsanorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_3

    goto :goto_3

    .line 354
    :cond_3
    invoke-virtual {v0, v15}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    :goto_3
    nop

    .line 358
    invoke-virtual {v0, v14}, Lccsanorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_4

    goto :goto_4

    .line 361
    :cond_4
    invoke-virtual {v0, v14}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    :goto_4
    nop

    .line 364
    invoke-virtual {v0, v13}, Lccsanorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v21
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v22, v1

    const-string v1, ""

    if-eqz v21, :cond_5

    .line 365
    :try_start_2
    iput-object v1, v3, Lccsansan/az/addDownloadListener;->getDownloadingRecordByUrl:Ljava/lang/String;

    move-object/from16 v21, v14

    goto :goto_5

    :cond_5
    nop

    .line 367
    move-object/from16 v21, v14

    invoke-virtual {v0, v13}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v3, Lccsansan/az/addDownloadListener;->getDownloadingRecordByUrl:Ljava/lang/String;

    :goto_5
    nop

    .line 370
    invoke-virtual {v0, v12}, Lccsanorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    goto :goto_6

    .line 373
    :cond_6
    invoke-virtual {v0, v12}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    :goto_6
    nop

    .line 376
    invoke-virtual {v0, v11}, Lccsanorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 377
    iput-object v1, v3, Lccsansan/az/addDownloadListener;->deleteDownItem:Ljava/lang/String;

    goto :goto_7

    :cond_7
    nop

    .line 379
    invoke-virtual {v0, v11}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v3, Lccsansan/az/addDownloadListener;->deleteDownItem:Ljava/lang/String;

    :goto_7
    nop

    .line 382
    invoke-virtual {v0, v10}, Lccsanorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_8

    goto :goto_8

    .line 385
    :cond_8
    invoke-virtual {v0, v10}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    :goto_8
    nop

    .line 388
    invoke-virtual {v0, v9}, Lccsanorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v23, v10

    move-object/from16 v24, v11

    const-wide/16 v10, 0x0

    if-eqz v14, :cond_9

    .line 389
    invoke-virtual {v3, v10, v11}, Lccsansan/az/addDownloadListener;->addDownloadListener(J)V

    goto :goto_9

    :cond_9
    nop

    .line 391
    invoke-virtual {v0, v9}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v14

    int-to-long v10, v14

    invoke-virtual {v3, v10, v11}, Lccsansan/az/addDownloadListener;->addDownloadListener(J)V

    :goto_9
    nop

    .line 395
    invoke-virtual {v0, v8}, Lccsanorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 396
    const-wide/16 v10, 0x0

    invoke-virtual {v3, v10, v11}, Lccsansan/az/addDownloadListener;->IncentiveDownloadUtils(J)V

    goto :goto_a

    :cond_a
    nop

    .line 398
    invoke-virtual {v0, v8}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    int-to-long v10, v10

    invoke-virtual {v3, v10, v11}, Lccsansan/az/addDownloadListener;->IncentiveDownloadUtils(J)V

    :goto_a
    nop

    .line 401
    invoke-virtual {v0, v7}, Lccsanorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 402
    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Lccsansan/az/addDownloadListener;->getDownloadingList(I)V

    goto :goto_b

    :cond_b
    nop

    .line 404
    invoke-virtual {v0, v7}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v3, v10}, Lccsansan/az/addDownloadListener;->getDownloadingList(I)V

    :goto_b
    nop

    .line 407
    invoke-virtual {v0, v6}, Lccsanorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v10

    move-object v11, v7

    move-object v14, v8

    const-wide/16 v7, -0x1

    if-eqz v10, :cond_c

    .line 408
    invoke-virtual {v3, v7, v8}, Lccsansan/az/addDownloadListener;->removeDownloadListener(J)V

    goto :goto_c

    :cond_c
    nop

    .line 410
    invoke-virtual {v0, v6}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Lccsansan/az/addDownloadListener;->removeDownloadListener(J)V

    :goto_c
    nop

    .line 413
    invoke-virtual {v0, v5}, Lccsanorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 414
    invoke-virtual {v3, v1}, Lccsansan/az/addDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;)V

    goto :goto_d

    :cond_d
    nop

    .line 416
    invoke-virtual {v0, v5}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lccsansan/az/addDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;)V

    :goto_d
    nop

    .line 419
    invoke-virtual {v0, v4}, Lccsanorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    move-object v8, v5

    move-object v10, v6

    const-wide/16 v5, 0x0

    if-eqz v7, :cond_e

    .line 420
    invoke-virtual {v3, v5, v6}, Lccsansan/az/addDownloadListener;->addDownloadListener(D)V

    goto :goto_e

    :cond_e
    if-nez v19, :cond_f

    .line 423
    invoke-virtual {v0, v4}, Lccsanorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lccsansan/az/addDownloadListener;->addDownloadListener(D)V

    :cond_f
    :goto_e
    nop

    .line 427
    move-object/from16 v5, v18

    invoke-virtual {v0, v5}, Lccsanorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    const-wide/16 v6, 0x7d0

    .line 428
    invoke-virtual {v3, v6, v7}, Lccsansan/az/addDownloadListener;->getDownloadingList(J)V

    goto :goto_f

    :cond_10
    nop

    .line 430
    invoke-virtual {v0, v5}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v3, v6, v7}, Lccsansan/az/addDownloadListener;->getDownloadingList(J)V

    :goto_f
    nop

    .line 434
    move-object/from16 v6, v17

    invoke-virtual {v0, v6}, Lccsanorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 435
    invoke-virtual {v3, v1}, Lccsansan/az/addDownloadListener;->unifiedDownload(Ljava/lang/String;)V

    goto :goto_10

    :cond_11
    nop

    .line 437
    invoke-virtual {v0, v6}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lccsansan/az/addDownloadListener;->unifiedDownload(Ljava/lang/String;)V

    :goto_10
    nop

    .line 440
    move-object/from16 v7, v16

    invoke-virtual {v0, v7}, Lccsanorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_12

    .line 441
    move-object/from16 v16, v4

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lccsansan/az/addDownloadListener;->IncentiveDownloadUtils(I)V

    goto :goto_11

    :cond_12
    move-object/from16 v16, v4

    const/4 v4, 0x0

    .line 443
    invoke-virtual {v0, v7}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lccsansan/az/addDownloadListener;->IncentiveDownloadUtils(I)V

    :goto_11
    const-string v4, "t_c_u_max_t"

    .line 446
    invoke-virtual {v0, v4}, Lccsanorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    const/16 v4, 0xbb8

    .line 447
    invoke-virtual {v3, v4}, Lccsansan/az/addDownloadListener;->addDownloadListener(I)V

    goto :goto_12

    :cond_13
    const-string v4, "t_c_u_max_t"

    .line 449
    invoke-virtual {v0, v4}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lccsansan/az/addDownloadListener;->addDownloadListener(I)V

    :goto_12
    const-string v4, "payload"

    .line 452
    invoke-virtual {v0, v4}, Lccsanorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 453
    invoke-virtual {v3, v1}, Lccsansan/az/addDownloadListener;->addDownloadListener(Ljava/lang/String;)V

    goto :goto_13

    :cond_14
    const-string v4, "payload"

    .line 455
    invoke-virtual {v0, v4}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lccsansan/az/addDownloadListener;->addDownloadListener(Ljava/lang/String;)V

    :goto_13
    const-string v4, "error"

    .line 458
    invoke-virtual {v0, v4}, Lccsanorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 459
    invoke-virtual {v3, v1}, Lccsansan/az/addDownloadListener;->getDownloadingList(Ljava/lang/String;)V

    goto :goto_14

    :cond_15
    const-string v1, "error"

    .line 461
    invoke-virtual {v0, v1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lccsansan/az/addDownloadListener;->getDownloadingList(Ljava/lang/String;)V

    :goto_14
    const-string v1, "l_s_t"

    .line 467
    invoke-virtual {v0, v1}, Lccsanorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    move-object/from16 v18, v5

    const-wide/32 v4, 0x1b7740

    .line 468
    invoke-virtual {v3, v4, v5}, Lccsansan/az/addDownloadListener;->getDownloadedList(J)V

    goto :goto_15

    :cond_16
    move-object/from16 v18, v5

    const-string v1, "l_s_t"

    .line 470
    invoke-virtual {v0, v1}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lccsansan/az/addDownloadListener;->getDownloadedList(J)V

    :goto_15
    const-string v1, "n_d_t"

    .line 473
    invoke-virtual {v0, v1}, Lccsanorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 474
    const-wide/16 v4, -0x1

    invoke-virtual {v3, v4, v5}, Lccsansan/az/addDownloadListener;->getDownloadStatusByUrl(J)V

    goto :goto_16

    :cond_17
    const-string v1, "n_d_t"

    .line 476
    invoke-virtual {v0, v1}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lccsansan/az/addDownloadListener;->getDownloadStatusByUrl(J)V

    :goto_16
    const-string v1, "hb_t_c_t"

    .line 479
    invoke-virtual {v0, v1}, Lccsanorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    const-wide/32 v4, 0x1b7740

    .line 480
    invoke-virtual {v3, v4, v5}, Lccsansan/az/addDownloadListener;->unifiedDownload(J)V

    goto :goto_17

    :cond_18
    const-string v1, "hb_t_c_t"

    .line 482
    invoke-virtual {v0, v1}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lccsansan/az/addDownloadListener;->unifiedDownload(J)V

    :goto_17
    const-string v1, "sort_type"

    .line 486
    invoke-virtual {v0, v1}, Lccsanorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 487
    xor-int/lit8 v1, v19, 0x1

    invoke-virtual {v3, v1}, Lccsansan/az/addDownloadListener;->unifiedDownload(I)V

    goto :goto_18

    :cond_19
    const-string v1, "sort_type"

    .line 489
    invoke-virtual {v0, v1}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Lccsansan/az/addDownloadListener;->unifiedDownload(I)V

    :goto_18
    const-string v1, "s_sw"

    .line 493
    invoke-virtual {v0, v1}, Lccsanorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 494
    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Lccsansan/az/addDownloadListener;->removeDownloadListener(I)V

    goto :goto_19

    :cond_1a
    const-string v1, "s_sw"

    .line 496
    invoke-virtual {v0, v1}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Lccsansan/az/addDownloadListener;->removeDownloadListener(I)V

    :goto_19
    const-string v1, "c_sw"

    .line 498
    invoke-virtual {v0, v1}, Lccsanorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 499
    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Lccsansan/az/addDownloadListener;->deleteDownItem(I)V

    goto :goto_1a

    :cond_1b
    const-string v1, "c_sw"

    .line 501
    invoke-virtual {v0, v1}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Lccsansan/az/addDownloadListener;->deleteDownItem(I)V

    :goto_1a
    const-string v1, "ecpm_level"

    .line 505
    invoke-virtual {v0, v1}, Lccsanorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const/4 v1, -0x1

    .line 506
    invoke-virtual {v3, v1}, Lccsansan/az/addDownloadListener;->getDownloadingRecordByUrl(I)V

    goto :goto_1b

    :cond_1c
    const-string v1, "ecpm_level"

    .line 508
    invoke-virtual {v0, v1}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Lccsansan/az/addDownloadListener;->getDownloadingRecordByUrl(I)V

    :goto_1b
    const-string v1, "precision"

    .line 511
    invoke-virtual {v0, v1}, Lccsanorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const-string v1, "publisher_defined"

    .line 512
    invoke-virtual {v3, v1}, Lccsansan/az/addDownloadListener;->removeDownloadListener(Ljava/lang/String;)V

    goto :goto_1c

    :cond_1d
    const-string v1, "precision"

    .line 514
    invoke-virtual {v0, v1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lccsansan/az/addDownloadListener;->removeDownloadListener(Ljava/lang/String;)V

    :goto_1c
    const-string v1, "nx_req_time"

    .line 517
    invoke-virtual {v0, v1}, Lccsanorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 518
    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lccsansan/az/addDownloadListener;->deleteDownItem(J)V

    goto :goto_1d

    :cond_1e
    const-string v1, "nx_req_time"

    .line 520
    invoke-virtual {v0, v1}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lccsansan/az/addDownloadListener;->deleteDownItem(J)V

    :goto_1d
    const-string v1, "bid_fail_interval"

    .line 523
    invoke-virtual {v0, v1}, Lccsanorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 524
    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lccsansan/az/addDownloadListener;->getDownloadedRecordByUrl(J)V

    goto :goto_1e

    :cond_1f
    const-string v1, "bid_fail_interval"

    .line 526
    invoke-virtual {v0, v1}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lccsansan/az/addDownloadListener;->getDownloadedRecordByUrl(J)V

    :goto_1e
    const-string v1, "cy_ecpm"

    .line 532
    invoke-virtual {v0, v1}, Lccsanorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 533
    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lccsansan/az/addDownloadListener;->removeDownloadListener(D)V

    goto :goto_1f

    :cond_20
    const-string v1, "cy_ecpm"

    .line 535
    invoke-virtual {v0, v1}, Lccsanorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lccsansan/az/addDownloadListener;->removeDownloadListener(D)V

    :goto_1f
    const-string v1, "irrf_sw"

    .line 541
    invoke-virtual {v0, v1}, Lccsanorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 542
    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Lccsansan/az/addDownloadListener;->getDownloadedList(I)V

    goto :goto_20

    :cond_21
    const/4 v1, 0x1

    const-string v4, "irrf_sw"

    .line 544
    invoke-virtual {v0, v4}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lccsansan/az/addDownloadListener;->getDownloadedList(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 547
    :goto_20
    move-object/from16 v4, p1

    :try_start_3
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :goto_21
    add-int/lit8 v2, v2, 0x1

    move-object/from16 p1, v4

    move-object/from16 v17, v6

    move-object v5, v8

    move-object v6, v10

    move-object v8, v14

    move-object/from16 v4, v16

    move/from16 v0, v19

    move-object/from16 v3, v20

    move-object/from16 v14, v21

    move-object/from16 v1, v22

    move-object/from16 v10, v23

    move-object/from16 v16, v7

    move-object v7, v11

    move-object/from16 v11, v24

    goto/16 :goto_1

    :catch_0
    move-exception v0

    goto :goto_22

    .line 335
    :cond_22
    move-object/from16 v4, p1

    goto :goto_22

    .line 547
    :catch_1
    move-exception v0

    move-object/from16 v4, p1

    goto :goto_22

    :catch_2
    move-exception v0

    move-object v4, v2

    :goto_22
    return-object v4
.end method

.method public static getDownloadingList(Ljava/lang/String;)Lccsansan/az/unifiedDownload;
    .locals 19

    move-object/from16 v0, p0

    const-string v1, "auto_refresh"

    const-string v2, "format"

    const-string v3, "gro_id"

    const-string v4, "refresh"

    const-string v5, "show_type"

    const-string v6, "wifi_auto_sw"

    const-string v7, "unit_pacing"

    const-string v8, "unit_caps_h"

    const-string v9, "unit_caps_d"

    const-string v10, "req_ug_num"

    const-string v11, "ad_delivery_sw"

    const-string v12, "ps_ct_out"

    const-string v13, "ps_ct"

    const-string v14, "pucs"

    const/4 v15, 0x0

    if-nez v0, :cond_0

    return-object v15

    .line 1
    :cond_0
    :try_start_0
    new-instance v15, Lccsansan/az/unifiedDownload;

    invoke-direct {v15}, Lccsansan/az/unifiedDownload;-><init>()V

    .line 2
    move-object/from16 v16, v1

    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, v0}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1, v13}, Lccsanorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v15, v2, v3}, Lccsansan/az/unifiedDownload;->getDownloadingRecordByUrl(J)V

    goto :goto_0

    :cond_1
    nop

    .line 7
    invoke-virtual {v1, v13}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v15, v2, v3}, Lccsansan/az/unifiedDownload;->getDownloadingRecordByUrl(J)V

    :goto_0
    nop

    .line 10
    invoke-virtual {v1, v12}, Lccsanorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    const-wide/16 v2, 0x0

    invoke-virtual {v15, v2, v3}, Lccsansan/az/unifiedDownload;->getDownloadedList(J)V

    goto :goto_1

    :cond_2
    nop

    .line 13
    invoke-virtual {v1, v12}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v15, v2, v3}, Lccsansan/az/unifiedDownload;->getDownloadedList(J)V

    :goto_1
    nop

    .line 16
    invoke-virtual {v1, v14}, Lccsanorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 17
    invoke-virtual {v15, v2}, Lccsansan/az/unifiedDownload;->deleteDownItem(I)V

    goto :goto_2

    :cond_3
    nop

    .line 19
    invoke-virtual {v1, v14}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v15, v0}, Lccsansan/az/unifiedDownload;->deleteDownItem(I)V

    :goto_2
    nop

    .line 22
    invoke-virtual {v1, v11}, Lccsanorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 23
    invoke-virtual {v15, v2}, Lccsansan/az/unifiedDownload;->getDownloadedRecordByUrl(I)V

    goto :goto_3

    :cond_4
    nop

    .line 25
    invoke-virtual {v1, v11}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v15, v0}, Lccsansan/az/unifiedDownload;->getDownloadedRecordByUrl(I)V

    :goto_3
    nop

    .line 28
    invoke-virtual {v1, v10}, Lccsanorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, -0x1

    if-eqz v0, :cond_5

    .line 29
    invoke-virtual {v15, v2}, Lccsansan/az/unifiedDownload;->getDownloadStatusByUrl(I)V

    goto :goto_4

    :cond_5
    nop

    .line 31
    invoke-virtual {v1, v10}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v15, v0}, Lccsansan/az/unifiedDownload;->getDownloadStatusByUrl(I)V

    :goto_4
    nop

    .line 34
    invoke-virtual {v1, v9}, Lccsanorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v10, -0x1

    if-eqz v0, :cond_6

    .line 35
    invoke-virtual {v15, v10, v11}, Lccsansan/az/unifiedDownload;->deleteDownItem(J)V

    goto :goto_5

    :cond_6
    nop

    .line 37
    invoke-virtual {v1, v9}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-virtual {v15, v12, v13}, Lccsansan/az/unifiedDownload;->deleteDownItem(J)V

    :goto_5
    nop

    .line 40
    invoke-virtual {v1, v8}, Lccsanorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 41
    invoke-virtual {v15, v10, v11}, Lccsansan/az/unifiedDownload;->getDownloadedRecordByUrl(J)V

    goto :goto_6

    :cond_7
    nop

    .line 43
    invoke-virtual {v1, v8}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v15, v8, v9}, Lccsansan/az/unifiedDownload;->getDownloadedRecordByUrl(J)V

    :goto_6
    nop

    .line 46
    invoke-virtual {v1, v7}, Lccsanorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 47
    invoke-virtual {v15, v10, v11}, Lccsansan/az/unifiedDownload;->pause(J)V

    goto :goto_7

    :cond_8
    nop

    .line 49
    invoke-virtual {v1, v7}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v15, v7, v8}, Lccsansan/az/unifiedDownload;->pause(J)V

    :goto_7
    nop

    .line 52
    invoke-virtual {v1, v6}, Lccsanorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_9

    .line 53
    invoke-virtual {v15, v3}, Lccsansan/az/unifiedDownload;->getDownloadingRecordByUrl(I)V

    goto :goto_8

    :cond_9
    nop

    .line 55
    invoke-virtual {v1, v6}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v15, v0}, Lccsansan/az/unifiedDownload;->getDownloadingRecordByUrl(I)V

    :goto_8
    nop

    .line 58
    invoke-virtual {v1, v5}, Lccsanorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 59
    invoke-virtual {v15, v3}, Lccsansan/az/unifiedDownload;->getDownloadingCount(I)V

    goto :goto_9

    :cond_a
    nop

    .line 61
    invoke-virtual {v1, v5}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v15, v0}, Lccsansan/az/unifiedDownload;->getDownloadingCount(I)V

    :goto_9
    nop

    .line 64
    invoke-virtual {v1, v4}, Lccsanorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 65
    invoke-virtual {v15, v3}, Lccsansan/az/unifiedDownload;->getDownloadedCount(I)V

    goto :goto_a

    :cond_b
    nop

    .line 67
    invoke-virtual {v1, v4}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v15, v0}, Lccsansan/az/unifiedDownload;->getDownloadedCount(I)V

    :goto_a
    nop

    .line 70
    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Lccsanorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 71
    invoke-virtual {v15, v3}, Lccsansan/az/unifiedDownload;->pause(I)V

    goto :goto_b

    :cond_c
    nop

    .line 73
    invoke-virtual {v1, v0}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v15, v0}, Lccsansan/az/unifiedDownload;->pause(I)V

    :goto_b
    nop

    .line 76
    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Lccsanorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 77
    invoke-virtual {v15, v3}, Lccsansan/az/unifiedDownload;->getDownloadedList(I)V

    goto :goto_c

    :cond_d
    nop

    .line 79
    invoke-virtual {v1, v0}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v15, v0}, Lccsansan/az/unifiedDownload;->getDownloadedList(I)V

    :goto_c
    nop

    .line 82
    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Lccsanorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 83
    invoke-virtual {v15, v3}, Lccsansan/az/unifiedDownload;->removeDownloadListener(I)V

    goto :goto_d

    :cond_e
    nop

    .line 85
    invoke-virtual {v1, v0}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v15, v0}, Lccsansan/az/unifiedDownload;->removeDownloadListener(I)V

    :goto_d
    const-string v0, "auto_refresh_time"

    .line 89
    invoke-virtual {v1, v0}, Lccsanorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 90
    invoke-virtual {v15, v3}, Lccsansan/az/unifiedDownload;->removeDownloadListener(I)V

    goto :goto_e

    :cond_f
    const-string v0, "auto_refresh_time"

    .line 92
    invoke-virtual {v1, v0}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v15, v4, v5}, Lccsansan/az/unifiedDownload;->getDownloadStatusByUrl(J)V

    :goto_e
    const-string v0, "s_t"

    .line 96
    invoke-virtual {v1, v0}, Lccsanorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-wide/32 v4, 0xdbba0

    .line 97
    invoke-virtual {v15, v4, v5}, Lccsansan/az/unifiedDownload;->addDownloadListener(J)V

    goto :goto_f

    :cond_10
    const-string v0, "s_t"

    .line 99
    invoke-virtual {v1, v0}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v15, v4, v5}, Lccsansan/az/unifiedDownload;->addDownloadListener(J)V

    :goto_f
    const-string v0, "l_s_t"

    .line 102
    invoke-virtual {v1, v0}, Lccsanorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-wide/32 v4, 0x1b7740

    .line 103
    invoke-virtual {v15, v4, v5}, Lccsansan/az/unifiedDownload;->getDownloadingList(J)V

    goto :goto_10

    :cond_11
    const-string v0, "l_s_t"

    .line 105
    invoke-virtual {v1, v0}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v15, v4, v5}, Lccsansan/az/unifiedDownload;->getDownloadingList(J)V

    :goto_10
    const-string v0, "ra"

    .line 108
    invoke-virtual {v1, v0}, Lccsanorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 109
    invoke-virtual {v15, v2}, Lccsansan/az/unifiedDownload;->unifiedDownload(I)V

    goto :goto_11

    :cond_12
    const-string v0, "ra"

    .line 111
    invoke-virtual {v1, v0}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v15, v0}, Lccsansan/az/unifiedDownload;->unifiedDownload(I)V

    :goto_11
    const-string v0, "asid"

    .line 114
    invoke-virtual {v1, v0}, Lccsanorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-string v4, ""

    if-eqz v0, :cond_13

    .line 115
    :try_start_1
    invoke-virtual {v15, v4}, Lccsansan/az/unifiedDownload;->getDownloadedCount(Ljava/lang/String;)V

    goto :goto_12

    :cond_13
    const-string v0, "asid"

    .line 117
    invoke-virtual {v1, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Lccsansan/az/unifiedDownload;->getDownloadedCount(Ljava/lang/String;)V

    :goto_12
    const-string v0, "tp_ps"

    .line 120
    invoke-virtual {v1, v0}, Lccsanorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 121
    const/4 v5, 0x0

    invoke-virtual {v15, v5}, Lccsansan/az/unifiedDownload;->unifiedDownload(Lccsansan/az/unifiedDownload$getDownloadingList;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_13

    .line 124
    :cond_14
    :try_start_2
    new-instance v0, Lccsansan/az/unifiedDownload$getDownloadingList;

    invoke-direct {v0}, Lccsansan/az/unifiedDownload$getDownloadingList;-><init>()V

    const-string v5, "tp_ps"

    .line 125
    invoke-virtual {v1, v5}, Lccsanorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object v5

    .line 126
    invoke-virtual {v5, v14}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    const-string v6, "apdt"

    .line 127
    invoke-virtual {v5, v6}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    const-string v6, "aprn"

    .line 128
    invoke-virtual {v5, v6}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    const-string v6, "puas"

    .line 129
    invoke-virtual {v5, v6}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    const-string v6, "cdt"

    .line 130
    invoke-virtual {v5, v6}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    const-string v6, "ski_swt"

    .line 131
    invoke-virtual {v5, v6}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    const-string v6, "aut_swt"

    .line 132
    invoke-virtual {v5, v6}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 133
    invoke-virtual {v15, v0}, Lccsansan/az/unifiedDownload;->unifiedDownload(Lccsansan/az/unifiedDownload$getDownloadingList;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_13

    :catch_0
    move-exception v0

    :goto_13
    :try_start_3
    const-string v0, "ug_list"

    .line 140
    invoke-virtual {v1, v0}, Lccsanorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    const-string v5, "[]"

    if-eqz v0, :cond_15

    .line 141
    :try_start_4
    invoke-virtual {v15, v5}, Lccsansan/az/unifiedDownload;->getDownloadingCount(Ljava/lang/String;)V

    goto :goto_14

    :cond_15
    const-string v0, "ug_list"

    .line 143
    invoke-virtual {v1, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Lccsansan/az/unifiedDownload;->getDownloadingCount(Ljava/lang/String;)V

    :goto_14
    const-string v0, "ol_list"

    .line 146
    invoke-virtual {v1, v0}, Lccsanorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 147
    invoke-virtual {v15, v5}, Lccsansan/az/unifiedDownload;->resume(Ljava/lang/String;)V

    goto :goto_15

    :cond_16
    const-string v0, "ol_list"

    .line 149
    invoke-virtual {v1, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Lccsansan/az/unifiedDownload;->resume(Ljava/lang/String;)V

    .line 152
    :goto_15
    invoke-virtual {v15}, Lccsansan/az/unifiedDownload;->deleteDownList()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15}, Lccsansan/az/unifiedDownload;->pause()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lccsansan/az/unifiedDownload;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v15, v0}, Lccsansan/az/unifiedDownload;->unifiedDownload(Ljava/util/List;)V

    const-string v0, "s2shb_list"

    .line 154
    invoke-virtual {v1, v0}, Lccsanorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 155
    invoke-virtual {v15, v5}, Lccsansan/az/unifiedDownload;->deleteDownList(Ljava/lang/String;)V

    goto :goto_16

    :cond_17
    const-string v0, "s2shb_list"

    .line 157
    invoke-virtual {v1, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Lccsansan/az/unifiedDownload;->deleteDownList(Ljava/lang/String;)V

    :goto_16
    const-string v0, "adx_list"

    .line 160
    invoke-virtual {v1, v0}, Lccsanorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 161
    invoke-virtual {v15, v5}, Lccsansan/az/unifiedDownload;->getDownloadedRecordByUrl(Ljava/lang/String;)V

    goto :goto_17

    :cond_18
    const-string v0, "adx_list"

    .line 163
    invoke-virtual {v1, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Lccsansan/az/unifiedDownload;->getDownloadedRecordByUrl(Ljava/lang/String;)V

    :goto_17
    const-string v0, "hb_list"

    .line 166
    invoke-virtual {v1, v0}, Lccsanorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 167
    invoke-virtual {v15, v5}, Lccsansan/az/unifiedDownload;->trackReportShow(Ljava/lang/String;)V

    goto :goto_18

    :cond_19
    const-string v0, "hb_list"

    .line 169
    invoke-virtual {v1, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Lccsansan/az/unifiedDownload;->trackReportShow(Ljava/lang/String;)V

    :goto_18
    const-string v0, "inh_list"

    .line 172
    invoke-virtual {v1, v0}, Lccsanorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 173
    invoke-virtual {v15, v5}, Lccsansan/az/unifiedDownload;->removeDownloadListener(Ljava/lang/String;)V

    goto :goto_19

    :cond_1a
    const-string v0, "inh_list"

    .line 175
    invoke-virtual {v1, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Lccsansan/az/unifiedDownload;->removeDownloadListener(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 179
    :goto_19
    :try_start_5
    invoke-virtual {v15}, Lccsansan/az/unifiedDownload;->getDownloadedCount()Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-virtual {v15}, Lccsansan/az/unifiedDownload;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object v5

    .line 181
    invoke-virtual {v15}, Lccsansan/az/unifiedDownload;->resume()Ljava/lang/String;

    move-result-object v6

    .line 182
    invoke-virtual {v15}, Lccsansan/az/unifiedDownload;->getDownloadingList()Ljava/lang/String;

    move-result-object v7

    .line 183
    invoke-static {v0, v5, v6, v7}, Lccsansan/az/unifiedDownload;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v15, v0}, Lccsansan/az/unifiedDownload;->IncentiveDownloadUtils(Ljava/util/List;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1a

    :catch_1
    move-exception v0

    :goto_1a
    :try_start_6
    const-string v0, "updateTime"

    .line 191
    invoke-virtual {v1, v0}, Lccsanorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 192
    const-wide/16 v5, 0x0

    invoke-virtual {v15, v5, v6}, Lccsansan/az/unifiedDownload;->getDownloadingCount(J)V

    goto :goto_1b

    :cond_1b
    const-string v0, "updateTime"

    .line 194
    invoke-virtual {v1, v0}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 195
    invoke-virtual {v15, v5, v6}, Lccsansan/az/unifiedDownload;->getDownloadingCount(J)V

    :goto_1b
    const-string v0, "t_g_id"

    .line 201
    invoke-virtual {v1, v0}, Lccsanorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 202
    invoke-virtual {v15, v2}, Lccsansan/az/unifiedDownload;->addDownloadListener(I)V

    goto :goto_1c

    :cond_1c
    const-string v0, "t_g_id"

    .line 204
    invoke-virtual {v1, v0}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v15, v0}, Lccsansan/az/unifiedDownload;->addDownloadListener(I)V

    :goto_1c
    const-string v0, "s_id"

    .line 207
    invoke-virtual {v1, v0}, Lccsanorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 208
    invoke-virtual {v15, v4}, Lccsansan/az/unifiedDownload;->pause(Ljava/lang/String;)V

    goto :goto_1d

    :cond_1d
    const-string v0, "s_id"

    .line 210
    invoke-virtual {v1, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Lccsansan/az/unifiedDownload;->pause(Ljava/lang/String;)V

    :goto_1d
    const-string v0, "u_n_f_sw"

    .line 213
    invoke-virtual {v1, v0}, Lccsanorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 214
    invoke-virtual {v15, v3}, Lccsansan/az/unifiedDownload;->IncentiveDownloadUtils(I)V

    goto :goto_1e

    :cond_1e
    const-string v0, "u_n_f_sw"

    .line 216
    invoke-virtual {v1, v0}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v15, v0}, Lccsansan/az/unifiedDownload;->IncentiveDownloadUtils(I)V

    :goto_1e
    const-string v0, "p_m_o"

    .line 220
    invoke-virtual {v1, v0}, Lccsanorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 221
    invoke-virtual {v15, v3}, Lccsansan/az/unifiedDownload;->getDownloadingList(I)V

    goto :goto_1f

    :cond_1f
    const-string v0, "p_m_o"

    .line 223
    invoke-virtual {v1, v0}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v15, v0}, Lccsansan/az/unifiedDownload;->getDownloadingList(I)V

    :goto_1f
    const-string v0, "callback"

    .line 227
    invoke-virtual {v1, v0}, Lccsanorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 228
    new-instance v0, Lccsanorg/json/JSONObject;

    const-string v3, "callback"

    invoke-virtual {v1, v3}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "currency"

    .line 229
    invoke-virtual {v0, v3}, Lccsanorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_20

    const-string v3, "currency"

    .line 230
    invoke-virtual {v0, v3}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Lccsansan/az/unifiedDownload;->getDownloadStatusByUrl(Ljava/lang/String;)V

    :cond_20
    const-string v3, "cc"

    .line 233
    invoke-virtual {v0, v3}, Lccsanorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_21

    const-string v3, "cc"

    .line 234
    invoke-virtual {v0, v3}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Lccsansan/az/unifiedDownload;->deleteDownItem(Ljava/lang/String;)V

    :cond_21
    const-string v3, "exch_r"

    .line 237
    invoke-virtual {v0, v3}, Lccsanorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_22

    const-string v3, "exch_r"

    .line 238
    invoke-virtual {v0, v3}, Lccsanorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-virtual {v15, v5, v6}, Lccsansan/az/unifiedDownload;->unifiedDownload(D)V

    :cond_22
    const-string v3, "acct_cy"

    .line 240
    invoke-virtual {v0, v3}, Lccsanorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_23

    const-string v3, "acct_cy"

    .line 241
    invoke-virtual {v0, v3}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Lccsansan/az/unifiedDownload;->addDownloadListener(Ljava/lang/String;)V

    :cond_23
    const-string v0, "hb_start_time"

    .line 247
    invoke-virtual {v1, v0}, Lccsanorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    const-wide/16 v5, 0x7d0

    .line 248
    invoke-virtual {v15, v5, v6}, Lccsansan/az/unifiedDownload;->removeDownloadListener(J)V

    goto :goto_20

    :cond_24
    const-string v0, "hb_start_time"

    .line 250
    invoke-virtual {v1, v0}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v15, v5, v6}, Lccsansan/az/unifiedDownload;->removeDownloadListener(J)V

    :goto_20
    const-string v0, "hb_bid_timeout"

    .line 252
    invoke-virtual {v1, v0}, Lccsanorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    const-wide/16 v5, 0x2710

    .line 253
    invoke-virtual {v15, v5, v6}, Lccsansan/az/unifiedDownload;->unifiedDownload(J)V

    goto :goto_21

    :cond_25
    const-string v0, "hb_bid_timeout"

    .line 255
    invoke-virtual {v1, v0}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v15, v5, v6}, Lccsansan/az/unifiedDownload;->unifiedDownload(J)V

    :goto_21
    const-string v0, "addr_bid"

    .line 259
    invoke-virtual {v1, v0}, Lccsanorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 260
    invoke-virtual {v15, v4}, Lccsansan/az/unifiedDownload;->getDownloadedList(Ljava/lang/String;)V

    goto :goto_22

    :cond_26
    const-string v0, "addr_bid"

    .line 262
    invoke-virtual {v1, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Lccsansan/az/unifiedDownload;->getDownloadedList(Ljava/lang/String;)V

    :goto_22
    const-string v0, "load_fail_wtime"

    .line 268
    invoke-virtual {v1, v0}, Lccsanorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    const-wide/16 v5, 0x2710

    .line 269
    invoke-virtual {v15, v5, v6}, Lccsansan/az/unifiedDownload;->deleteDownList(J)V

    goto :goto_23

    :cond_27
    const-string v0, "load_fail_wtime"

    .line 271
    invoke-virtual {v1, v0}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v15, v5, v6}, Lccsansan/az/unifiedDownload;->deleteDownList(J)V

    :goto_23
    const-string v0, "load_cap"

    .line 274
    invoke-virtual {v1, v0}, Lccsanorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 275
    invoke-virtual {v15, v2}, Lccsansan/az/unifiedDownload;->resume(I)V

    goto :goto_24

    :cond_28
    const-string v0, "load_cap"

    .line 277
    invoke-virtual {v1, v0}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v15, v0}, Lccsansan/az/unifiedDownload;->resume(I)V

    :goto_24
    const-string v0, "load_cap_time"

    .line 280
    invoke-virtual {v1, v0}, Lccsanorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    const-wide/32 v2, 0xdbba0

    .line 281
    invoke-virtual {v15, v2, v3}, Lccsansan/az/unifiedDownload;->resume(J)V

    goto :goto_25

    :cond_29
    const-string v0, "load_cap_time"

    .line 283
    invoke-virtual {v1, v0}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v15, v2, v3}, Lccsansan/az/unifiedDownload;->resume(J)V

    :goto_25
    const-string v0, "cached_offers_num"

    .line 286
    invoke-virtual {v1, v0}, Lccsanorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const/4 v0, 0x2

    .line 287
    invoke-virtual {v15, v0}, Lccsansan/az/unifiedDownload;->deleteDownList(I)V

    goto :goto_26

    :cond_2a
    const-string v0, "cached_offers_num"

    .line 289
    invoke-virtual {v1, v0}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v15, v0}, Lccsansan/az/unifiedDownload;->deleteDownList(I)V

    :goto_26
    const-string v0, "ilrd"

    .line 295
    invoke-virtual {v1, v0}, Lccsanorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 296
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Lccsansan/az/unifiedDownload;->unifiedDownload(Ljava/lang/String;)V

    goto :goto_27

    :cond_2b
    const-string v0, "ilrd"

    .line 298
    invoke-virtual {v1, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Lccsansan/az/unifiedDownload;->unifiedDownload(Ljava/lang/String;)V

    :goto_27
    const-string v0, "adx_st"

    .line 301
    invoke-virtual {v1, v0}, Lccsanorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 302
    invoke-virtual {v15, v4}, Lccsansan/az/unifiedDownload;->getDownloadingRecordByUrl(Ljava/lang/String;)V

    goto :goto_28

    :cond_2c
    const-string v0, "adx_st"

    .line 304
    invoke-virtual {v1, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Lccsansan/az/unifiedDownload;->getDownloadingRecordByUrl(Ljava/lang/String;)V

    :goto_28
    const-string v0, "fbhb_bid_wtime"

    .line 310
    invoke-virtual {v1, v0}, Lccsanorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    const-wide/16 v0, 0xfa0

    .line 311
    invoke-virtual {v15, v0, v1}, Lccsansan/az/unifiedDownload;->IncentiveDownloadUtils(J)V

    goto :goto_29

    :cond_2d
    const-string v0, "fbhb_bid_wtime"

    .line 313
    invoke-virtual {v1, v0}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {v15, v0, v1}, Lccsansan/az/unifiedDownload;->IncentiveDownloadUtils(J)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :goto_29
    return-object v15

    :catch_2
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method public static unifiedDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lccsansan/az/addDownloadListener;",
            ">;"
        }
    .end annotation

    .line 314
    sget v0, Lccsansan/az/addDownloadListener;->unifiedDownload:I

    invoke-static {p0, v0}, Lccsansan/az/unifiedDownload;->getDownloadingList(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    .line 315
    sget v0, Lccsansan/az/addDownloadListener;->removeDownloadListener:I

    invoke-static {p1, v0}, Lccsansan/az/unifiedDownload;->getDownloadingList(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    .line 316
    sget v0, Lccsansan/az/addDownloadListener;->getDownloadingList:I

    invoke-static {p2, v0}, Lccsansan/az/unifiedDownload;->getDownloadingList(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p2

    .line 317
    sget v0, Lccsansan/az/addDownloadListener;->getDownloadStatusByUrl:I

    invoke-static {p3, v0}, Lccsansan/az/unifiedDownload;->getDownloadingList(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p3

    .line 319
    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 320
    invoke-interface {p0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 321
    invoke-interface {p0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method


# virtual methods
.method public IncentiveDownloadUtils()Ljava/lang/String;
    .locals 1

    .line 548
    iget-object v0, p0, Lccsansan/az/unifiedDownload;->trackReportClick:Ljava/lang/String;

    return-object v0
.end method

.method public IncentiveDownloadUtils(I)V
    .locals 0

    return-void
.end method

.method public IncentiveDownloadUtils(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lccsansan/az/unifiedDownload;->IncentiveSDK:J

    return-void
.end method

.method public IncentiveDownloadUtils(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/az/unifiedDownload;->addDownloadListener:Ljava/lang/String;

    return-void
.end method

.method public IncentiveDownloadUtils(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsansan/az/addDownloadListener;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public addDownloadListener()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lccsansan/az/unifiedDownload;->pause:J

    return-wide v0
.end method

.method public addDownloadListener(I)V
    .locals 0

    return-void
.end method

.method public addDownloadListener(J)V
    .locals 0

    .line 3
    iput-wide p1, p0, Lccsansan/az/unifiedDownload;->deleteDownList:J

    return-void
.end method

.method public addDownloadListener(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public deleteDownItem()Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lccsansan/az/unifiedDownload;->getDownloadingCount:Ljava/lang/String;

    return-object v0
.end method

.method public deleteDownItem(I)V
    .locals 0

    return-void
.end method

.method public deleteDownItem(J)V
    .locals 0

    return-void
.end method

.method public deleteDownItem(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lccsansan/az/unifiedDownload;->getDownloadingCount:Ljava/lang/String;

    return-void
.end method

.method public deleteDownList()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/az/unifiedDownload;->getDownloadedRecordByUrl:Ljava/lang/String;

    return-object v0
.end method

.method public deleteDownList(I)V
    .locals 0

    return-void
.end method

.method public deleteDownList(J)V
    .locals 0

    .line 3
    iput-wide p1, p0, Lccsansan/az/unifiedDownload;->getPackageNameByRecord:J

    return-void
.end method

.method public deleteDownList(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lccsansan/az/unifiedDownload;->getDownloadingRecordByUrl:Ljava/lang/String;

    return-void
.end method

.method public getDownloadStatusByUrl()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lccsansan/az/unifiedDownload;->deleteDownList:J

    return-wide v0
.end method

.method public getDownloadStatusByUrl(I)V
    .locals 0

    return-void
.end method

.method public getDownloadStatusByUrl(J)V
    .locals 0

    .line 549
    iput-wide p1, p0, Lccsansan/az/unifiedDownload;->getDownloadedCount:J

    return-void
.end method

.method public getDownloadStatusByUrl(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public getDownloadedCount()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/az/unifiedDownload;->getDownloadingRecordByUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadedCount(I)V
    .locals 0

    return-void
.end method

.method public getDownloadedCount(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public getDownloadedList()J
    .locals 2

    .line 3
    iget-wide v0, p0, Lccsansan/az/unifiedDownload;->getDownloadedCount:J

    return-wide v0
.end method

.method public getDownloadedList(I)V
    .locals 0

    return-void
.end method

.method public getDownloadedList(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lccsansan/az/unifiedDownload;->removeDownloadListener:J

    return-void
.end method

.method public getDownloadedList(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public getDownloadedRecordByUrl()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lccsansan/az/unifiedDownload;->removeDownloadListener:J

    return-wide v0
.end method

.method public getDownloadedRecordByUrl(I)V
    .locals 0

    return-void
.end method

.method public getDownloadedRecordByUrl(J)V
    .locals 0

    return-void
.end method

.method public getDownloadedRecordByUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/az/unifiedDownload;->trackReportClick:Ljava/lang/String;

    return-void
.end method

.method public getDownloadingCount()I
    .locals 1

    .line 1
    iget v0, p0, Lccsansan/az/unifiedDownload;->unifiedDownload:I

    return v0
.end method

.method public getDownloadingCount(I)V
    .locals 0

    return-void
.end method

.method public getDownloadingCount(J)V
    .locals 0

    return-void
.end method

.method public getDownloadingCount(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lccsansan/az/unifiedDownload;->getDownloadedRecordByUrl:Ljava/lang/String;

    return-void
.end method

.method public getDownloadingList()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/az/unifiedDownload;->deleteDownItem:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadingList(I)V
    .locals 0

    return-void
.end method

.method public getDownloadingList(J)V
    .locals 0

    return-void
.end method

.method public getDownloadingRecordByUrl()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lccsansan/az/unifiedDownload;->getDownloadingList:J

    return-wide v0
.end method

.method public getDownloadingRecordByUrl(I)V
    .locals 0

    .line 2
    iput p1, p0, Lccsansan/az/unifiedDownload;->unifiedDownload:I

    return-void
.end method

.method public getDownloadingRecordByUrl(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lccsansan/az/unifiedDownload;->getDownloadingList:J

    return-void
.end method

.method public getDownloadingRecordByUrl(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public getPackageNameByRecord()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lccsansan/az/unifiedDownload;->getPackageNameByRecord:J

    return-wide v0
.end method

.method public pause()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lccsansan/az/unifiedDownload;->getDownloadedList:Ljava/lang/String;

    return-object v0
.end method

.method public pause(I)V
    .locals 0

    return-void
.end method

.method public pause(J)V
    .locals 0

    return-void
.end method

.method public pause(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public removeDownloadListener()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lccsansan/az/unifiedDownload;->resume:J

    return-wide v0
.end method

.method public removeDownloadListener(I)V
    .locals 0

    return-void
.end method

.method public removeDownloadListener(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lccsansan/az/unifiedDownload;->resume:J

    return-void
.end method

.method public removeDownloadListener(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/az/unifiedDownload;->deleteDownItem:Ljava/lang/String;

    return-void
.end method

.method public resume()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lccsansan/az/unifiedDownload;->getDownloadStatusByUrl:Ljava/lang/String;

    return-object v0
.end method

.method public resume(I)V
    .locals 0

    .line 3
    iput p1, p0, Lccsansan/az/unifiedDownload;->trackReportShow:I

    return-void
.end method

.method public resume(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lccsansan/az/unifiedDownload;->getThumbPathByRecord:J

    return-void
.end method

.method public resume(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lccsansan/az/unifiedDownload;->getDownloadedList:Ljava/lang/String;

    return-void
.end method

.method public trackReportClick()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lccsansan/az/unifiedDownload;->getThumbPathByRecord:J

    return-wide v0
.end method

.method public trackReportShow()I
    .locals 1

    .line 3
    iget v0, p0, Lccsansan/az/unifiedDownload;->trackReportShow:I

    return v0
.end method

.method public trackReportShow(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lccsansan/az/unifiedDownload;->getDownloadStatusByUrl:Ljava/lang/String;

    return-void
.end method

.method public unifiedDownload()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lccsansan/az/unifiedDownload;->IncentiveSDK:J

    return-wide v0
.end method

.method public unifiedDownload(D)V
    .locals 0

    return-void
.end method

.method public unifiedDownload(I)V
    .locals 0

    return-void
.end method

.method public unifiedDownload(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lccsansan/az/unifiedDownload;->pause:J

    return-void
.end method

.method public unifiedDownload(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public unifiedDownload(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsansan/az/addDownloadListener;",
            ">;)V"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lccsansan/az/unifiedDownload;->IncentiveDownloadUtils:Ljava/util/List;

    return-void
.end method

.method public unifiedDownload(Lccsansan/az/unifiedDownload$getDownloadingList;)V
    .locals 0

    return-void
.end method
