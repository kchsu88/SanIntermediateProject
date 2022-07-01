.class final Lccsancom/mbridge/msdk/reward/adapter/d$1;
.super Lccsanandroid/os/Handler;
.source "RewardMVVideoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/reward/adapter/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/reward/adapter/d;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/reward/adapter/d;Lccsanandroid/os/Looper;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-direct {p0, p2}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Lccsanandroid/os/Message;)V
    .locals 24

    .line 191
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "_"

    const-string v4, "RewardMVVideoAdapter"

    :try_start_0
    iget v5, v2, Lccsanandroid/os/Message;->what:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const-string v9, ""

    const/4 v10, 0x0

    const/4 v11, 0x6

    const/4 v12, 0x5

    const/4 v13, 0x0

    const/4 v14, 0x1

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_19

    .line 465
    :pswitch_1
    :try_start_1
    iget-object v2, v2, Lccsanandroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    .line 466
    aget-object v3, v2, v13

    move-object/from16 v17, v3

    check-cast v17, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 467
    aget-object v3, v2, v14

    move-object/from16 v18, v3

    check-cast v18, Ljava/lang/String;

    .line 468
    aget-object v3, v2, v8

    move-object/from16 v19, v3

    check-cast v19, Ljava/lang/String;

    .line 469
    aget-object v3, v2, v7

    move-object/from16 v20, v3

    check-cast v20, Lccsancom/mbridge/msdk/videocommon/d/c;

    .line 470
    aget-object v2, v2, v6

    move-object/from16 v16, v2

    check-cast v16, Ljava/lang/String;

    .line 471
    if-eqz v17, :cond_0

    invoke-static/range {v18 .. v18}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 472
    iget-object v15, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static/range {v15 .. v20}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(Lccsancom/mbridge/msdk/reward/adapter/d;Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/videocommon/d/c;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 479
    :cond_0
    goto/16 :goto_19

    .line 474
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 475
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    sget-boolean v3, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 477
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 480
    :cond_1
    goto/16 :goto_19

    .line 435
    :pswitch_2
    :try_start_3
    iget-object v2, v2, Lccsanandroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    .line 436
    aget-object v3, v2, v13

    move-object/from16 v16, v3

    check-cast v16, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 437
    aget-object v3, v2, v8

    move-object/from16 v19, v3

    check-cast v19, Ljava/lang/String;

    .line 438
    aget-object v3, v2, v7

    move-object/from16 v20, v3

    check-cast v20, Lccsancom/mbridge/msdk/videocommon/d/c;

    .line 439
    aget-object v3, v2, v6

    move-object v15, v3

    check-cast v15, Ljava/lang/String;

    .line 440
    nop

    .line 441
    nop

    .line 442
    array-length v3, v2

    const/4 v5, 0x7

    if-ne v3, v5, :cond_2

    .line 443
    aget-object v3, v2, v12

    move-object v9, v3

    check-cast v9, Ljava/lang/String;

    .line 444
    aget-object v2, v2, v11

    move-object v10, v2

    check-cast v10, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    move-object/from16 v21, v9

    move-object v14, v10

    goto :goto_0

    .line 442
    :cond_2
    move-object/from16 v21, v9

    move-object v14, v10

    .line 447
    :goto_0
    if-eqz v16, :cond_4

    .line 448
    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/adapter/d;->j(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    if-nez v2, :cond_3

    .line 449
    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/adapter/d;->e(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 450
    iget-object v13, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v13}, Lccsancom/mbridge/msdk/reward/adapter/d;->e(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/util/List;

    move-result-object v17

    const-string v18, ""

    invoke-static/range {v13 .. v21}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(Lccsancom/mbridge/msdk/reward/adapter/d;Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/videocommon/d/c;Ljava/lang/String;)V

    goto :goto_1

    .line 453
    :cond_3
    iget-object v13, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v13}, Lccsancom/mbridge/msdk/reward/adapter/d;->j(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v17

    const-string v18, ""

    invoke-static/range {v13 .. v21}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(Lccsancom/mbridge/msdk/reward/adapter/d;Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/videocommon/d/c;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 461
    :cond_4
    :goto_1
    goto/16 :goto_19

    .line 456
    :catch_1
    move-exception v0

    move-object v2, v0

    .line 457
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    sget-boolean v3, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v3, :cond_5

    .line 459
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 462
    :cond_5
    goto/16 :goto_19

    .line 423
    :pswitch_3
    iget-object v3, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v3}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsancom/mbridge/msdk/reward/adapter/b;

    move-result-object v3

    if-eqz v3, :cond_2d

    .line 424
    iget-object v2, v2, Lccsanandroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 425
    if-eqz v2, :cond_6

    iget-object v3, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v3}, Lccsancom/mbridge/msdk/reward/adapter/d;->d(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 426
    iget-object v3, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v3}, Lccsancom/mbridge/msdk/reward/adapter/d;->h(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsanandroid/content/Context;

    move-result-object v3

    iget-object v5, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v5}, Lccsancom/mbridge/msdk/reward/adapter/d;->d(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v2, v5}, Lccsancom/mbridge/msdk/reward/b/a;->a(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;)V

    .line 427
    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/reward/adapter/d;->b()Z

    .line 430
    :cond_6
    goto/16 :goto_19

    .line 403
    :pswitch_4
    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/adapter/d;->d(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v5}, Lccsancom/mbridge/msdk/reward/adapter/d;->b(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/util/List;

    move-result-object v5

    iget-object v6, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v6}, Lccsancom/mbridge/msdk/reward/adapter/d;->e(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/util/List;

    move-result-object v6

    iget-object v7, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v7}, Lccsancom/mbridge/msdk/reward/adapter/d;->f(Lccsancom/mbridge/msdk/reward/adapter/d;)Z

    move-result v7

    invoke-static {v2, v3, v5, v6, v7}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(Lccsancom/mbridge/msdk/reward/adapter/d;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Z)V

    .line 404
    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsancom/mbridge/msdk/reward/adapter/b;

    move-result-object v2

    if-eqz v2, :cond_2d

    .line 405
    invoke-virtual {v1, v11}, Lccsancom/mbridge/msdk/reward/adapter/d$1;->removeMessages(I)V

    .line 406
    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/adapter/d;->i(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsanandroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 407
    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/adapter/d;->i(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsanandroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v12}, Lccsanandroid/os/Handler;->removeMessages(I)V

    .line 409
    :cond_7
    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsancom/mbridge/msdk/reward/adapter/b;

    move-result-object v2

    if-eqz v2, :cond_2d

    .line 410
    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    iget-boolean v2, v2, Lccsancom/mbridge/msdk/reward/adapter/d;->g:Z

    if-nez v2, :cond_2d

    .line 411
    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    iput-boolean v14, v2, Lccsancom/mbridge/msdk/reward/adapter/d;->g:Z

    .line 412
    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/adapter/d;->d(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 413
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v5, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v5}, Lccsancom/mbridge/msdk/reward/adapter/d;->g(Lccsancom/mbridge/msdk/reward/adapter/d;)J

    move-result-wide v5

    sub-long/2addr v2, v5

    .line 414
    iget-object v5, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v5}, Lccsancom/mbridge/msdk/reward/adapter/d;->h(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsanandroid/content/Context;

    move-result-object v5

    iget-object v6, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v6}, Lccsancom/mbridge/msdk/reward/adapter/d;->c(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/util/List;

    move-result-object v6

    iget-object v7, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v7}, Lccsancom/mbridge/msdk/reward/adapter/d;->d(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7, v2, v3}, Lccsancom/mbridge/msdk/reward/b/a;->a(Lccsanandroid/content/Context;Ljava/util/List;Ljava/lang/String;J)V

    .line 416
    :cond_8
    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsancom/mbridge/msdk/reward/adapter/b;

    move-result-object v2

    invoke-interface {v2}, Lccsancom/mbridge/msdk/reward/adapter/b;->a()V

    goto/16 :goto_19

    .line 218
    :pswitch_5
    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsancom/mbridge/msdk/reward/adapter/b;

    move-result-object v2

    if-eqz v2, :cond_2d

    .line 219
    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/adapter/d;->b(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_c

    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/adapter/d;->b(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_c

    .line 220
    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/adapter/d;->b(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 221
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMof_template_url()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    const/4 v5, 0x1

    goto :goto_2

    :cond_9
    const/4 v5, 0x0

    .line 222
    :goto_2
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getNscpt()I

    move-result v2

    .line 223
    iget-object v6, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v6}, Lccsancom/mbridge/msdk/reward/adapter/d;->c(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7, v5, v2}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(Ljava/util/List;ZI)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 224
    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/adapter/d;->d(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v5}, Lccsancom/mbridge/msdk/reward/adapter/d;->b(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/util/List;

    move-result-object v5

    iget-object v6, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v6}, Lccsancom/mbridge/msdk/reward/adapter/d;->e(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/util/List;

    move-result-object v6

    iget-object v7, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v7}, Lccsancom/mbridge/msdk/reward/adapter/d;->f(Lccsancom/mbridge/msdk/reward/adapter/d;)Z

    move-result v7

    invoke-static {v2, v3, v5, v6, v7}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(Lccsancom/mbridge/msdk/reward/adapter/d;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Z)V

    .line 225
    invoke-virtual {v1, v11}, Lccsancom/mbridge/msdk/reward/adapter/d$1;->sendEmptyMessage(I)Z

    .line 226
    invoke-virtual {v1, v12}, Lccsancom/mbridge/msdk/reward/adapter/d$1;->removeMessages(I)V

    .line 227
    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    iget-boolean v2, v2, Lccsancom/mbridge/msdk/reward/adapter/d;->g:Z

    if-nez v2, :cond_b

    .line 228
    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/adapter/d;->d(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 229
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v5, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v5}, Lccsancom/mbridge/msdk/reward/adapter/d;->g(Lccsancom/mbridge/msdk/reward/adapter/d;)J

    move-result-wide v5

    sub-long/2addr v2, v5

    .line 230
    iget-object v5, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v5}, Lccsancom/mbridge/msdk/reward/adapter/d;->h(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsanandroid/content/Context;

    move-result-object v5

    iget-object v6, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v6}, Lccsancom/mbridge/msdk/reward/adapter/d;->c(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/util/List;

    move-result-object v6

    iget-object v7, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v7}, Lccsancom/mbridge/msdk/reward/adapter/d;->d(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7, v2, v3}, Lccsancom/mbridge/msdk/reward/b/a;->a(Lccsanandroid/content/Context;Ljava/util/List;Ljava/lang/String;J)V

    .line 232
    :cond_a
    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsancom/mbridge/msdk/reward/adapter/b;

    move-result-object v2

    invoke-interface {v2}, Lccsancom/mbridge/msdk/reward/adapter/b;->a()V

    .line 234
    :cond_b
    return-void

    .line 237
    :cond_c
    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/adapter/d;->d(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v6}, Lccsancom/mbridge/msdk/reward/adapter/d;->b(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/util/List;

    move-result-object v6

    iget-object v7, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v7}, Lccsancom/mbridge/msdk/reward/adapter/d;->f(Lccsancom/mbridge/msdk/reward/adapter/d;)Z

    move-result v7

    invoke-static {v2, v5, v6, v7}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(Lccsancom/mbridge/msdk/reward/adapter/d;Ljava/lang/String;Ljava/util/List;Z)V

    .line 238
    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/adapter/d;->i(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsanandroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 239
    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/adapter/d;->i(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsanandroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v12}, Lccsanandroid/os/Handler;->removeMessages(I)V

    .line 240
    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/adapter/d;->i(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsanandroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v11}, Lccsanandroid/os/Handler;->removeMessages(I)V

    .line 242
    :cond_d
    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    iget-boolean v2, v2, Lccsancom/mbridge/msdk/reward/adapter/d;->h:Z

    if-nez v2, :cond_2d

    .line 243
    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    iput-boolean v14, v2, Lccsancom/mbridge/msdk/reward/adapter/d;->h:Z

    .line 245
    nop

    .line 246
    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/adapter/d;->b(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_e

    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/adapter/d;->b(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_e

    .line 247
    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/adapter/d;->b(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 249
    :cond_e
    if-eqz v10, :cond_12

    .line 250
    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/adapter/d;->h(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsanandroid/content/Context;

    move-result-object v16

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resource load timeout is tpl: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMof_template_url()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_f

    const/4 v5, 0x1

    goto :goto_3

    :cond_f
    const/4 v5, 0x0

    :goto_3
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/adapter/d;->d(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/lang/String;

    move-result-object v18

    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/adapter/d;->f(Lccsancom/mbridge/msdk/reward/adapter/d;)Z

    move-result v19

    if-nez v10, :cond_10

    move-object/from16 v20, v9

    goto :goto_4

    :cond_10
    invoke-virtual {v10}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v20, v2

    :goto_4
    if-nez v10, :cond_11

    goto :goto_5

    :cond_11
    invoke-virtual {v10}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v9

    :goto_5
    move-object/from16 v21, v9

    move-object v15, v10

    invoke-static/range {v15 .. v21}, Lccsancom/mbridge/msdk/reward/b/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 252
    :cond_12
    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsancom/mbridge/msdk/reward/adapter/b;

    move-result-object v2

    const-string v5, "errorCode: 3401 errorMessage: resource load timeout"

    invoke-interface {v2, v5}, Lccsancom/mbridge/msdk/reward/adapter/b;->a(Ljava/lang/String;)V

    .line 253
    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/adapter/d;->c(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1c

    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/adapter/d;->c(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1c

    .line 254
    nop

    .line 255
    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/adapter/d;->c(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v5, 0x0

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_a
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 257
    nop

    .line 259
    if-eqz v6, :cond_14

    :try_start_5
    invoke-virtual {v6}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_14

    .line 260
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/i;->a()Lccsancom/mbridge/msdk/videocommon/download/i;

    move-result-object v7

    invoke-virtual {v6}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lccsancom/mbridge/msdk/videocommon/download/i;->a(Ljava/lang/String;)Z

    move-result v7
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v7, :cond_14

    .line 261
    nop

    .line 263
    :try_start_6
    iget-object v7, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v7}, Lccsancom/mbridge/msdk/reward/adapter/d;->h(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsanandroid/content/Context;

    move-result-object v16

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resource load timeout exception video is tpl: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMof_template_url()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_13

    const/4 v8, 0x1

    goto :goto_7

    :cond_13
    const/4 v8, 0x0

    :goto_7
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    iget-object v7, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v7}, Lccsancom/mbridge/msdk/reward/adapter/d;->d(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/lang/String;

    move-result-object v18

    iget-object v7, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v7}, Lccsancom/mbridge/msdk/reward/adapter/d;->f(Lccsancom/mbridge/msdk/reward/adapter/d;)Z

    move-result v19

    invoke-virtual {v6}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v6}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v21

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-object v9, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v9}, Lccsancom/mbridge/msdk/reward/adapter/d;->g(Lccsancom/mbridge/msdk/reward/adapter/d;)J

    move-result-wide v11

    sub-long v22, v7, v11

    move-object v15, v10

    invoke-static/range {v15 .. v23}, Lccsancom/mbridge/msdk/reward/b/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;J)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 266
    goto :goto_8

    .line 264
    :catch_2
    move-exception v0

    .line 270
    :goto_8
    const/4 v7, 0x1

    goto :goto_9

    .line 320
    :catch_3
    move-exception v0

    goto/16 :goto_12

    .line 270
    :cond_14
    const/4 v7, 0x0

    :goto_9
    if-eqz v6, :cond_16

    :try_start_7
    invoke-virtual {v6}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_16

    .line 271
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/i;->a()Lccsancom/mbridge/msdk/videocommon/download/i;

    move-result-object v8

    invoke-virtual {v6}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lccsancom/mbridge/msdk/videocommon/download/i;->b(Ljava/lang/String;)Z

    move-result v8
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-nez v8, :cond_16

    .line 272
    nop

    .line 274
    :try_start_8
    iget-object v7, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v7}, Lccsancom/mbridge/msdk/reward/adapter/d;->h(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsanandroid/content/Context;

    move-result-object v16

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resource load timeout exception endcard is tpl: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMof_template_url()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_15

    const/4 v8, 0x1

    goto :goto_a

    :cond_15
    const/4 v8, 0x0

    :goto_a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    iget-object v7, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v7}, Lccsancom/mbridge/msdk/reward/adapter/d;->d(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/lang/String;

    move-result-object v18

    iget-object v7, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v7}, Lccsancom/mbridge/msdk/reward/adapter/d;->f(Lccsancom/mbridge/msdk/reward/adapter/d;)Z

    move-result v19

    invoke-virtual {v6}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v6}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v21

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-object v9, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v9}, Lccsancom/mbridge/msdk/reward/adapter/d;->g(Lccsancom/mbridge/msdk/reward/adapter/d;)J

    move-result-wide v11

    sub-long v22, v7, v11

    move-object v15, v10

    invoke-static/range {v15 .. v23}, Lccsancom/mbridge/msdk/reward/b/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;J)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 277
    goto :goto_b

    .line 275
    :catch_4
    move-exception v0

    .line 281
    :goto_b
    const/4 v7, 0x1

    :cond_16
    if-eqz v6, :cond_18

    :try_start_9
    invoke-virtual {v6}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMof_template_url()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_18

    .line 282
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/i;->a()Lccsancom/mbridge/msdk/videocommon/download/i;

    move-result-object v8

    invoke-virtual {v6}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMof_template_url()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lccsancom/mbridge/msdk/videocommon/download/i;->b(Ljava/lang/String;)Z

    move-result v8
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-nez v8, :cond_17

    .line 283
    nop

    .line 285
    :try_start_a
    iget-object v7, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v7}, Lccsancom/mbridge/msdk/reward/adapter/d;->h(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsanandroid/content/Context;

    move-result-object v16

    const-string v17, "resource load timeout exception tpl"

    iget-object v7, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v7}, Lccsancom/mbridge/msdk/reward/adapter/d;->d(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/lang/String;

    move-result-object v18

    iget-object v7, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v7}, Lccsancom/mbridge/msdk/reward/adapter/d;->f(Lccsancom/mbridge/msdk/reward/adapter/d;)Z

    move-result v19

    invoke-virtual {v6}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v6}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v21

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-object v9, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v9}, Lccsancom/mbridge/msdk/reward/adapter/d;->g(Lccsancom/mbridge/msdk/reward/adapter/d;)J

    move-result-wide v11

    sub-long v22, v7, v11

    move-object v15, v10

    invoke-static/range {v15 .. v23}, Lccsancom/mbridge/msdk/reward/b/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;J)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_c

    .line 286
    :catch_5
    move-exception v0

    .line 288
    :goto_c
    nop

    .line 301
    const/4 v7, 0x1

    goto :goto_e

    .line 290
    :cond_17
    if-nez v5, :cond_18

    if-nez v7, :cond_18

    :try_start_b
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v9}, Lccsancom/mbridge/msdk/reward/adapter/d;->d(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMof_template_url()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lccsancom/mbridge/msdk/videocommon/a;->a(Ljava/lang/String;)Lccsancom/mbridge/msdk/videocommon/a$a;

    move-result-object v8
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-nez v8, :cond_18

    .line 291
    nop

    .line 293
    :try_start_c
    iget-object v5, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v5}, Lccsancom/mbridge/msdk/reward/adapter/d;->h(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsanandroid/content/Context;

    move-result-object v16

    const-string v17, "resource load timeout exception tpl preload"

    iget-object v5, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v5}, Lccsancom/mbridge/msdk/reward/adapter/d;->d(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/lang/String;

    move-result-object v18

    iget-object v5, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v5}, Lccsancom/mbridge/msdk/reward/adapter/d;->f(Lccsancom/mbridge/msdk/reward/adapter/d;)Z

    move-result v19

    invoke-virtual {v6}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v6}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v21

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v5, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v5}, Lccsancom/mbridge/msdk/reward/adapter/d;->g(Lccsancom/mbridge/msdk/reward/adapter/d;)J

    move-result-wide v11

    sub-long v22, v8, v11

    move-object v15, v10

    invoke-static/range {v15 .. v23}, Lccsancom/mbridge/msdk/reward/b/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;J)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 296
    goto :goto_d

    .line 294
    :catch_6
    move-exception v0

    .line 301
    :goto_d
    const/4 v5, 0x1

    :cond_18
    :goto_e
    if-eqz v6, :cond_1b

    :try_start_d
    invoke-virtual {v6}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v8

    if-eqz v8, :cond_1b

    invoke-virtual {v6}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v8

    invoke-virtual {v8}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;->d()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1b

    .line 302
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/i;->a()Lccsancom/mbridge/msdk/videocommon/download/i;

    move-result-object v8

    invoke-virtual {v6}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v9

    invoke-virtual {v9}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;->d()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lccsancom/mbridge/msdk/videocommon/download/i;->b(Ljava/lang/String;)Z

    move-result v8
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    if-nez v8, :cond_1a

    .line 304
    :try_start_e
    iget-object v7, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v7}, Lccsancom/mbridge/msdk/reward/adapter/d;->h(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsanandroid/content/Context;

    move-result-object v16

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resource load timeout exception template is tpl: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMof_template_url()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_19

    const/4 v8, 0x1

    goto :goto_f

    :cond_19
    const/4 v8, 0x0

    :goto_f
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    iget-object v7, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v7}, Lccsancom/mbridge/msdk/reward/adapter/d;->d(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/lang/String;

    move-result-object v18

    iget-object v7, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v7}, Lccsancom/mbridge/msdk/reward/adapter/d;->f(Lccsancom/mbridge/msdk/reward/adapter/d;)Z

    move-result v19

    invoke-virtual {v6}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v6}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v21

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v8, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v8}, Lccsancom/mbridge/msdk/reward/adapter/d;->g(Lccsancom/mbridge/msdk/reward/adapter/d;)J

    move-result-wide v8

    sub-long v22, v6, v8

    move-object v15, v10

    invoke-static/range {v15 .. v23}, Lccsancom/mbridge/msdk/reward/b/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;J)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_10

    .line 305
    :catch_7
    move-exception v0

    .line 307
    :goto_10
    goto :goto_11

    .line 309
    :cond_1a
    :try_start_f
    invoke-virtual {v6}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMof_template_url()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1b

    .line 310
    if-nez v7, :cond_1b

    invoke-virtual {v6}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    move-result v7

    invoke-static {v7, v6}, Lccsancom/mbridge/msdk/videocommon/a;->a(ILccsancom/mbridge/msdk/foundation/entity/CampaignEx;)Lccsancom/mbridge/msdk/videocommon/a$a;

    move-result-object v7
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    if-nez v7, :cond_1b

    .line 312
    :try_start_10
    iget-object v7, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v7}, Lccsancom/mbridge/msdk/reward/adapter/d;->h(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsanandroid/content/Context;

    move-result-object v16

    const-string v17, "resource load timeout exception template preload"

    iget-object v7, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v7}, Lccsancom/mbridge/msdk/reward/adapter/d;->d(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/lang/String;

    move-result-object v18

    iget-object v7, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v7}, Lccsancom/mbridge/msdk/reward/adapter/d;->f(Lccsancom/mbridge/msdk/reward/adapter/d;)Z

    move-result v19

    invoke-virtual {v6}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v6}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v21

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v8, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v8}, Lccsancom/mbridge/msdk/reward/adapter/d;->g(Lccsancom/mbridge/msdk/reward/adapter/d;)J

    move-result-wide v8

    sub-long v22, v6, v8

    move-object v15, v10

    invoke-static/range {v15 .. v23}, Lccsancom/mbridge/msdk/reward/b/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;J)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_8
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 315
    goto :goto_11

    .line 313
    :catch_8
    move-exception v0

    .line 322
    :cond_1b
    :goto_11
    nop

    .line 323
    :goto_12
    goto/16 :goto_6

    .line 325
    :cond_1c
    goto/16 :goto_19

    .line 329
    :pswitch_6
    :try_start_11
    iget-object v3, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v3}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsancom/mbridge/msdk/reward/adapter/b;

    move-result-object v3

    if-eqz v3, :cond_2d

    .line 330
    iget-object v3, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v3}, Lccsancom/mbridge/msdk/reward/adapter/d;->d(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v6}, Lccsancom/mbridge/msdk/reward/adapter/d;->b(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/util/List;

    move-result-object v6

    iget-object v7, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v7}, Lccsancom/mbridge/msdk/reward/adapter/d;->f(Lccsancom/mbridge/msdk/reward/adapter/d;)Z

    move-result v7

    invoke-static {v3, v5, v6, v7}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(Lccsancom/mbridge/msdk/reward/adapter/d;Ljava/lang/String;Ljava/util/List;Z)V

    .line 332
    nop

    .line 333
    iget-object v3, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v3}, Lccsancom/mbridge/msdk/reward/adapter/d;->b(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1d

    iget-object v3, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v3}, Lccsancom/mbridge/msdk/reward/adapter/d;->b(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1d

    .line 334
    iget-object v3, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v3}, Lccsancom/mbridge/msdk/reward/adapter/d;->b(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_a
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 337
    :cond_1d
    :try_start_12
    iget-object v3, v2, Lccsanandroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v3, :cond_20

    .line 338
    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/adapter/d;->i(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsanandroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 339
    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/adapter/d;->i(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsanandroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v12}, Lccsanandroid/os/Handler;->removeMessages(I)V

    .line 341
    :cond_1e
    invoke-virtual {v1, v11}, Lccsancom/mbridge/msdk/reward/adapter/d$1;->removeMessages(I)V

    .line 342
    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    iget-boolean v2, v2, Lccsancom/mbridge/msdk/reward/adapter/d;->h:Z

    if-nez v2, :cond_26

    .line 343
    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    iput-boolean v14, v2, Lccsancom/mbridge/msdk/reward/adapter/d;->h:Z

    .line 344
    if-eqz v10, :cond_1f

    .line 345
    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/adapter/d;->h(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsanandroid/content/Context;

    move-result-object v16

    const-string v17, "data load failed"

    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/adapter/d;->d(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/lang/String;

    move-result-object v18

    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/adapter/d;->f(Lccsancom/mbridge/msdk/reward/adapter/d;)Z

    move-result v19

    invoke-virtual {v10}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v10}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v21

    move-object v15, v10

    invoke-static/range {v15 .. v21}, Lccsancom/mbridge/msdk/reward/b/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    .line 347
    :cond_1f
    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/adapter/d;->h(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsanandroid/content/Context;

    move-result-object v16

    const-string v17, "data load failed"

    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/adapter/d;->d(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/lang/String;

    move-result-object v18

    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/adapter/d;->f(Lccsancom/mbridge/msdk/reward/adapter/d;)Z

    move-result v19

    const-string v20, ""

    const-string v21, ""

    move-object v15, v10

    invoke-static/range {v15 .. v21}, Lccsancom/mbridge/msdk/reward/b/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 349
    :goto_13
    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsancom/mbridge/msdk/reward/adapter/b;

    move-result-object v2

    const-string v3, "errorCode: 3506 errorMessage: data load failed"

    invoke-interface {v2, v3}, Lccsancom/mbridge/msdk/reward/adapter/b;->a(Ljava/lang/String;)V

    goto/16 :goto_16

    .line 352
    :cond_20
    iget-object v2, v2, Lccsanandroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 353
    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 354
    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/adapter/d;->i(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsanandroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_21

    .line 355
    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/adapter/d;->i(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsanandroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v12}, Lccsanandroid/os/Handler;->removeMessages(I)V

    .line 357
    :cond_21
    invoke-virtual {v1, v11}, Lccsancom/mbridge/msdk/reward/adapter/d$1;->removeMessages(I)V

    .line 358
    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    iget-boolean v2, v2, Lccsancom/mbridge/msdk/reward/adapter/d;->h:Z

    if-nez v2, :cond_26

    .line 359
    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    iput-boolean v14, v2, Lccsancom/mbridge/msdk/reward/adapter/d;->h:Z

    .line 360
    if-eqz v10, :cond_22

    .line 361
    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/adapter/d;->h(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsanandroid/content/Context;

    move-result-object v16

    const-string v17, "data load failed, errorMsg null"

    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/adapter/d;->d(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/lang/String;

    move-result-object v18

    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/adapter/d;->f(Lccsancom/mbridge/msdk/reward/adapter/d;)Z

    move-result v19

    invoke-virtual {v10}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v10}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v21

    move-object v15, v10

    invoke-static/range {v15 .. v21}, Lccsancom/mbridge/msdk/reward/b/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    .line 363
    :cond_22
    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/adapter/d;->h(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsanandroid/content/Context;

    move-result-object v16

    const-string v17, "data load failed, errorMsg null"

    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/adapter/d;->d(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/lang/String;

    move-result-object v18

    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/adapter/d;->f(Lccsancom/mbridge/msdk/reward/adapter/d;)Z

    move-result v19

    const-string v20, ""

    const-string v21, ""

    move-object v15, v10

    invoke-static/range {v15 .. v21}, Lccsancom/mbridge/msdk/reward/b/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 365
    :goto_14
    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsancom/mbridge/msdk/reward/adapter/b;

    move-result-object v2

    const-string v3, "errorCode: 3507 errorMessage: data load failed, errorMsg null"

    invoke-interface {v2, v3}, Lccsancom/mbridge/msdk/reward/adapter/b;->a(Ljava/lang/String;)V

    goto/16 :goto_16

    .line 369
    :cond_23
    iget-object v3, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v3}, Lccsancom/mbridge/msdk/reward/adapter/d;->i(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsanandroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_24

    .line 370
    iget-object v3, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v3}, Lccsancom/mbridge/msdk/reward/adapter/d;->i(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsanandroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v12}, Lccsanandroid/os/Handler;->removeMessages(I)V

    .line 372
    :cond_24
    invoke-virtual {v1, v11}, Lccsancom/mbridge/msdk/reward/adapter/d$1;->removeMessages(I)V

    .line 373
    iget-object v3, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    iget-boolean v3, v3, Lccsancom/mbridge/msdk/reward/adapter/d;->h:Z

    if-nez v3, :cond_26

    .line 374
    iget-object v3, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    iput-boolean v14, v3, Lccsancom/mbridge/msdk/reward/adapter/d;->h:Z

    .line 375
    if-eqz v10, :cond_25

    .line 376
    iget-object v3, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v3}, Lccsancom/mbridge/msdk/reward/adapter/d;->h(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsanandroid/content/Context;

    move-result-object v16

    iget-object v3, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v3}, Lccsancom/mbridge/msdk/reward/adapter/d;->d(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/lang/String;

    move-result-object v18

    iget-object v3, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v3}, Lccsancom/mbridge/msdk/reward/adapter/d;->f(Lccsancom/mbridge/msdk/reward/adapter/d;)Z

    move-result v19

    invoke-virtual {v10}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v10}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v21

    move-object v15, v10

    move-object/from16 v17, v2

    invoke-static/range {v15 .. v21}, Lccsancom/mbridge/msdk/reward/b/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    .line 378
    :cond_25
    iget-object v3, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v3}, Lccsancom/mbridge/msdk/reward/adapter/d;->h(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsanandroid/content/Context;

    move-result-object v16

    iget-object v3, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v3}, Lccsancom/mbridge/msdk/reward/adapter/d;->d(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/lang/String;

    move-result-object v18

    iget-object v3, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v3}, Lccsancom/mbridge/msdk/reward/adapter/d;->f(Lccsancom/mbridge/msdk/reward/adapter/d;)Z

    move-result v19

    const-string v20, ""

    const-string v21, ""

    move-object v15, v10

    move-object/from16 v17, v2

    invoke-static/range {v15 .. v21}, Lccsancom/mbridge/msdk/reward/b/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 380
    :goto_15
    iget-object v3, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v3}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsancom/mbridge/msdk/reward/adapter/b;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "errorCode: 3507 errorMessage: data load failed, errorMsg is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lccsancom/mbridge/msdk/reward/adapter/b;->a(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_9
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 399
    :cond_26
    :goto_16
    goto/16 :goto_18

    .line 384
    :catch_9
    move-exception v0

    move-object v2, v0

    .line 385
    :try_start_13
    iget-object v3, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v3}, Lccsancom/mbridge/msdk/reward/adapter/d;->i(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsanandroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_27

    .line 386
    iget-object v3, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v3}, Lccsancom/mbridge/msdk/reward/adapter/d;->i(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsanandroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v12}, Lccsanandroid/os/Handler;->removeMessages(I)V

    .line 388
    :cond_27
    invoke-virtual {v1, v11}, Lccsancom/mbridge/msdk/reward/adapter/d$1;->removeMessages(I)V

    .line 389
    iget-object v3, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v3}, Lccsancom/mbridge/msdk/reward/adapter/d;->d(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v6}, Lccsancom/mbridge/msdk/reward/adapter/d;->b(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/util/List;

    move-result-object v6

    iget-object v7, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v7}, Lccsancom/mbridge/msdk/reward/adapter/d;->f(Lccsancom/mbridge/msdk/reward/adapter/d;)Z

    move-result v7

    invoke-static {v3, v5, v6, v7}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(Lccsancom/mbridge/msdk/reward/adapter/d;Ljava/lang/String;Ljava/util/List;Z)V

    .line 390
    iget-object v3, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    iget-boolean v3, v3, Lccsancom/mbridge/msdk/reward/adapter/d;->h:Z

    if-nez v3, :cond_29

    .line 391
    iget-object v3, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    iput-boolean v14, v3, Lccsancom/mbridge/msdk/reward/adapter/d;->h:Z

    .line 392
    if-eqz v10, :cond_28

    .line 393
    iget-object v3, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v3}, Lccsancom/mbridge/msdk/reward/adapter/d;->h(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsanandroid/content/Context;

    move-result-object v16

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v17

    iget-object v3, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v3}, Lccsancom/mbridge/msdk/reward/adapter/d;->d(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/lang/String;

    move-result-object v18

    iget-object v3, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v3}, Lccsancom/mbridge/msdk/reward/adapter/d;->f(Lccsancom/mbridge/msdk/reward/adapter/d;)Z

    move-result v19

    invoke-virtual {v10}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v10}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v21

    move-object v15, v10

    invoke-static/range {v15 .. v21}, Lccsancom/mbridge/msdk/reward/b/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    .line 395
    :cond_28
    iget-object v3, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v3}, Lccsancom/mbridge/msdk/reward/adapter/d;->h(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsanandroid/content/Context;

    move-result-object v16

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v17

    iget-object v3, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v3}, Lccsancom/mbridge/msdk/reward/adapter/d;->d(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/lang/String;

    move-result-object v18

    iget-object v3, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v3}, Lccsancom/mbridge/msdk/reward/adapter/d;->f(Lccsancom/mbridge/msdk/reward/adapter/d;)Z

    move-result v19

    const-string v20, ""

    const-string v21, ""

    move-object v15, v10

    invoke-static/range {v15 .. v21}, Lccsancom/mbridge/msdk/reward/b/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 397
    :goto_17
    iget-object v3, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v3}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsancom/mbridge/msdk/reward/adapter/b;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "errorCode: 3508 errorMessage: data load failed, exception is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lccsancom/mbridge/msdk/reward/adapter/b;->a(Ljava/lang/String;)V

    .line 400
    :cond_29
    :goto_18
    goto :goto_19

    .line 211
    :pswitch_7
    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsancom/mbridge/msdk/reward/adapter/b;

    move-result-object v2

    if-eqz v2, :cond_2a

    .line 212
    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsancom/mbridge/msdk/reward/adapter/b;

    move-result-object v2

    const-string v3, "campaign is ok"

    invoke-interface {v2, v3}, Lccsancom/mbridge/msdk/reward/adapter/b;->b(Ljava/lang/String;)V

    .line 214
    :cond_2a
    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v12, v2, v3}, Lccsancom/mbridge/msdk/reward/adapter/d$1;->sendEmptyMessageDelayed(IJ)Z

    .line 215
    goto :goto_19

    .line 202
    :pswitch_8
    nop

    .line 203
    iget-object v3, v2, Lccsanandroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_2b

    .line 204
    iget-object v2, v2, Lccsanandroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 207
    :cond_2b
    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-virtual {v2, v10}, Lccsancom/mbridge/msdk/reward/adapter/d;->b(Ljava/lang/String;)V

    .line 208
    goto :goto_19

    .line 193
    :pswitch_9
    nop

    .line 194
    iget-object v3, v2, Lccsanandroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_2c

    .line 195
    iget-object v2, v2, Lccsanandroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 198
    :cond_2c
    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/adapter/d$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-virtual {v2, v10}, Lccsancom/mbridge/msdk/reward/adapter/d;->b(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_a
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 200
    goto :goto_19

    .line 487
    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 488
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a

    .line 485
    :catch_a
    move-exception v0

    move-object v2, v0

    .line 486
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 489
    :cond_2d
    :goto_19
    nop

    .line 490
    :goto_1a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
