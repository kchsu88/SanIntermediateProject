.class final Lccsancom/mbridge/msdk/reward/a/a$1;
.super Lccsanandroid/os/Handler;
.source "RewardVideoController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/reward/a/a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/reward/a/a;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/reward/a/a;Lccsanandroid/os/Looper;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-direct {p0, p2}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Lccsanandroid/os/Message;)V
    .locals 19

    .line 264
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget v2, v0, Lccsanandroid/os/Message;->what:I

    .line 265
    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_a

    .line 367
    :sswitch_0
    nop

    .line 368
    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/a/a;->l(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/videocommon/d/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/a/a;->l(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/videocommon/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/videocommon/d/c;->D()I

    move-result v0

    goto :goto_0

    .line 368
    :cond_0
    const/4 v0, 0x0

    .line 371
    :goto_0
    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/a/a;->c(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/reward/adapter/d;

    move-result-object v2

    const-string v5, "RewardVideoController"

    if-eqz v2, :cond_e

    .line 372
    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/a/a;->c(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/reward/adapter/d;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/reward/adapter/d;->b()Z

    move-result v2

    const-wide/16 v6, 0x0

    const-string v8, "load timeout task called onVideoLoadSuccess after "

    const-string v9, "s exception"

    if-eqz v2, :cond_2

    .line 373
    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/a/a;->d(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/reward/a/a$c;

    move-result-object v2

    if-eqz v2, :cond_1c

    .line 374
    const-string v2, "load timeout task called for onVideoLoadSuccess by isReady exception"

    invoke-static {v5, v2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/a/a;->a(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/a/a;->a(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 377
    :try_start_0
    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/a/a;->a(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v11

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/a/a;->g(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/lang/String;

    move-result-object v13

    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/a/a;->i(Lccsancom/mbridge/msdk/reward/a/a;)Z

    move-result v14

    const-string v15, ""

    const-string v16, ""

    int-to-long v2, v0

    move-wide/from16 v17, v2

    invoke-static/range {v10 .. v18}, Lccsancom/mbridge/msdk/reward/b/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;J)V

    .line 378
    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/a/a;->m(Lccsancom/mbridge/msdk/reward/a/a;)Lccsanandroid/content/Context;

    move-result-object v0

    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/a/a;->a(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/util/List;

    move-result-object v2

    iget-object v3, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v3}, Lccsancom/mbridge/msdk/reward/a/a;->g(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3, v6, v7}, Lccsancom/mbridge/msdk/reward/b/a;->a(Lccsanandroid/content/Context;Ljava/util/List;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    goto :goto_1

    .line 379
    :catch_0
    move-exception v0

    .line 383
    :cond_1
    :goto_1
    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/a/a;->d(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/reward/a/a$c;

    move-result-object v0

    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/a/a;->f(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v3}, Lccsancom/mbridge/msdk/reward/a/a;->g(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lccsancom/mbridge/msdk/reward/a/a$c;->b(Lccsancom/mbridge/msdk/reward/a/a$c;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 386
    :cond_2
    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/a/a;->c(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/reward/adapter/d;

    move-result-object v2

    invoke-virtual {v2, v4}, Lccsancom/mbridge/msdk/reward/adapter/d;->f(Z)Z

    move-result v2

    const-string v10, "load timeout task called for onVideoLoadFail after "

    if-eqz v2, :cond_9

    .line 387
    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/a/a;->c(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/reward/adapter/d;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/reward/adapter/d;->b()Z

    move-result v2

    const-string v11, "load timeout task called for onVideoLoadSuccess by isReady but updateCampaignsLoadTimeoutState exception"

    if-eqz v2, :cond_4

    .line 388
    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/a/a;->d(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/reward/a/a$c;

    move-result-object v2

    if-eqz v2, :cond_1c

    .line 389
    invoke-static {v5, v11}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/a/a;->c(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/reward/adapter/d;

    move-result-object v2

    invoke-virtual {v2, v4}, Lccsancom/mbridge/msdk/reward/adapter/d;->d(Z)V

    .line 391
    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/a/a;->a(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/a/a;->a(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 393
    :try_start_1
    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/a/a;->a(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v11

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/a/a;->g(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/lang/String;

    move-result-object v13

    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/a/a;->i(Lccsancom/mbridge/msdk/reward/a/a;)Z

    move-result v14

    const-string v15, ""

    const-string v16, ""

    int-to-long v2, v0

    move-wide/from16 v17, v2

    invoke-static/range {v10 .. v18}, Lccsancom/mbridge/msdk/reward/b/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;J)V

    .line 394
    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/a/a;->m(Lccsancom/mbridge/msdk/reward/a/a;)Lccsanandroid/content/Context;

    move-result-object v0

    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/a/a;->a(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/util/List;

    move-result-object v2

    iget-object v3, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v3}, Lccsancom/mbridge/msdk/reward/a/a;->g(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3, v6, v7}, Lccsancom/mbridge/msdk/reward/b/a;->a(Lccsanandroid/content/Context;Ljava/util/List;Ljava/lang/String;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 397
    goto :goto_2

    .line 395
    :catch_1
    move-exception v0

    .line 399
    :cond_3
    :goto_2
    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/a/a;->d(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/reward/a/a$c;

    move-result-object v0

    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/a/a;->f(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v3}, Lccsancom/mbridge/msdk/reward/a/a;->g(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lccsancom/mbridge/msdk/reward/a/a$c;->b(Lccsancom/mbridge/msdk/reward/a/a$c;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 402
    :cond_4
    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/a/a;->c(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/reward/adapter/d;

    move-result-object v2

    invoke-virtual {v2, v4}, Lccsancom/mbridge/msdk/reward/adapter/d;->e(Z)V

    .line 404
    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/a/a;->c(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/reward/adapter/d;

    move-result-object v2

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/reward/adapter/d;->f(Z)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 405
    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/a/a;->c(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/reward/adapter/d;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/reward/adapter/d;->b()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 406
    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/a/a;->d(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/reward/a/a$c;

    move-result-object v2

    if-eqz v2, :cond_1c

    .line 407
    invoke-static {v5, v11}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/a/a;->c(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/reward/adapter/d;

    move-result-object v2

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/reward/adapter/d;->d(Z)V

    .line 409
    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/a/a;->a(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/a/a;->a(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 411
    :try_start_2
    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/a/a;->a(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v11

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/a/a;->g(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/lang/String;

    move-result-object v13

    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/a/a;->i(Lccsancom/mbridge/msdk/reward/a/a;)Z

    move-result v14

    const-string v15, ""

    const-string v16, ""

    int-to-long v2, v0

    move-wide/from16 v17, v2

    invoke-static/range {v10 .. v18}, Lccsancom/mbridge/msdk/reward/b/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;J)V

    .line 412
    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/a/a;->m(Lccsancom/mbridge/msdk/reward/a/a;)Lccsanandroid/content/Context;

    move-result-object v0

    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/a/a;->a(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/util/List;

    move-result-object v2

    iget-object v3, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v3}, Lccsancom/mbridge/msdk/reward/a/a;->g(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3, v6, v7}, Lccsancom/mbridge/msdk/reward/b/a;->a(Lccsanandroid/content/Context;Ljava/util/List;Ljava/lang/String;J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 415
    goto :goto_3

    .line 413
    :catch_2
    move-exception v0

    .line 417
    :cond_5
    :goto_3
    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/a/a;->d(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/reward/a/a$c;

    move-result-object v0

    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/a/a;->f(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v3}, Lccsancom/mbridge/msdk/reward/a/a;->g(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lccsancom/mbridge/msdk/reward/a/a$c;->b(Lccsancom/mbridge/msdk/reward/a/a$c;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 420
    :cond_6
    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/a/a;->d(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/reward/a/a$c;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 421
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    :cond_7
    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/a/a;->c(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/reward/adapter/d;

    move-result-object v0

    invoke-virtual {v0, v3}, Lccsancom/mbridge/msdk/reward/adapter/d;->e(Z)V

    goto/16 :goto_a

    .line 426
    :cond_8
    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/a/a;->d(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/reward/a/a$c;

    move-result-object v2

    if-eqz v2, :cond_1c

    .line 427
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 432
    :cond_9
    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/a/a;->c(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/reward/adapter/d;

    move-result-object v2

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/reward/adapter/d;->f(Z)Z

    move-result v2

    const-string v11, " s"

    if-eqz v2, :cond_d

    .line 433
    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/a/a;->c(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/reward/adapter/d;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/reward/adapter/d;->b()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 434
    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/a/a;->d(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/reward/a/a$c;

    move-result-object v2

    if-eqz v2, :cond_1c

    .line 435
    const-string v2, "load timeout task called for onVideoLoadSuccess by isReady but updateCampaignsLoadTimeoutState"

    invoke-static {v5, v2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/a/a;->c(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/reward/adapter/d;

    move-result-object v2

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/reward/adapter/d;->d(Z)V

    .line 437
    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/a/a;->a(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_a

    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/a/a;->a(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_a

    .line 439
    :try_start_3
    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/a/a;->a(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v11

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/a/a;->g(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/lang/String;

    move-result-object v13

    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/a/a;->i(Lccsancom/mbridge/msdk/reward/a/a;)Z

    move-result v14

    const-string v15, ""

    const-string v16, ""

    int-to-long v2, v0

    move-wide/from16 v17, v2

    invoke-static/range {v10 .. v18}, Lccsancom/mbridge/msdk/reward/b/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;J)V

    .line 440
    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/a/a;->m(Lccsancom/mbridge/msdk/reward/a/a;)Lccsanandroid/content/Context;

    move-result-object v0

    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/a/a;->a(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/util/List;

    move-result-object v2

    iget-object v3, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v3}, Lccsancom/mbridge/msdk/reward/a/a;->g(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3, v6, v7}, Lccsancom/mbridge/msdk/reward/b/a;->a(Lccsanandroid/content/Context;Ljava/util/List;Ljava/lang/String;J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 443
    goto :goto_4

    .line 441
    :catch_3
    move-exception v0

    .line 445
    :cond_a
    :goto_4
    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/a/a;->d(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/reward/a/a$c;

    move-result-object v0

    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/a/a;->f(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v3}, Lccsancom/mbridge/msdk/reward/a/a;->g(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lccsancom/mbridge/msdk/reward/a/a$c;->b(Lccsancom/mbridge/msdk/reward/a/a$c;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 448
    :cond_b
    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/a/a;->d(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/reward/a/a$c;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 449
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    :cond_c
    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/a/a;->c(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/reward/adapter/d;

    move-result-object v0

    invoke-virtual {v0, v3}, Lccsancom/mbridge/msdk/reward/adapter/d;->e(Z)V

    goto/16 :goto_a

    .line 454
    :cond_d
    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/a/a;->d(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/reward/a/a$c;

    move-result-object v2

    if-eqz v2, :cond_1c

    .line 455
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 461
    :cond_e
    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/a/a;->d(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/reward/a/a$c;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 462
    const-string v0, "load timeout task called for onVideoLoadFail by mRewardMvVideoAdapter is null exception"

    invoke-static {v5, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 468
    :sswitch_1
    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-virtual {v0, v4}, Lccsancom/mbridge/msdk/reward/a/a;->d(Z)V

    .line 469
    goto/16 :goto_a

    .line 338
    :sswitch_2
    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/a/a;->h(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/videocommon/listener/InterVideoOutListener;

    move-result-object v2

    if-eqz v2, :cond_1c

    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/a/a;->e(Lccsancom/mbridge/msdk/reward/a/a;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 339
    iget-object v2, v0, Lccsanandroid/os/Message;->obj:Ljava/lang/Object;

    .line 340
    nop

    .line 341
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_f

    .line 342
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 345
    :cond_f
    nop

    .line 346
    invoke-virtual/range {p1 .. p1}, Lccsanandroid/os/Message;->getData()Lccsanandroid/os/Bundle;

    move-result-object v0

    .line 347
    if-eqz v0, :cond_10

    sget-object v2, Lccsancom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lccsanandroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 348
    sget-object v2, Lccsancom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lccsanandroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 349
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 354
    :cond_10
    :try_start_4
    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/a/a;->i(Lccsancom/mbridge/msdk/reward/a/a;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 355
    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/a/a;->j(Lccsancom/mbridge/msdk/reward/a/a;)V

    .line 357
    :cond_11
    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/a/a;->h(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/videocommon/listener/InterVideoOutListener;

    move-result-object v0

    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/a/a;->k(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/out/MBridgeIds;

    move-result-object v2

    invoke-interface {v0, v2}, Lccsancom/mbridge/msdk/videocommon/listener/InterVideoOutListener;->onLoadSuccess(Lccsancom/mbridge/msdk/out/MBridgeIds;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 362
    goto :goto_5

    .line 358
    :catch_4
    move-exception v0

    .line 359
    sget-boolean v2, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v2, :cond_12

    .line 360
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 363
    :cond_12
    :goto_5
    goto/16 :goto_a

    .line 317
    :sswitch_3
    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/a/a;->h(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/videocommon/listener/InterVideoOutListener;

    move-result-object v2

    if-eqz v2, :cond_1c

    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/a/a;->e(Lccsancom/mbridge/msdk/reward/a/a;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 318
    iget-object v0, v0, Lccsanandroid/os/Message;->obj:Ljava/lang/Object;

    .line 319
    nop

    .line 320
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_13

    .line 321
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 320
    :cond_13
    const-string v0, ""

    .line 323
    :goto_6
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/a;->a()V

    .line 324
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/a;->b()V

    .line 326
    :try_start_5
    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/a/a;->i(Lccsancom/mbridge/msdk/reward/a/a;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 327
    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/a/a;->j(Lccsancom/mbridge/msdk/reward/a/a;)V

    .line 329
    :cond_14
    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/a/a;->h(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/videocommon/listener/InterVideoOutListener;

    move-result-object v2

    iget-object v3, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v3}, Lccsancom/mbridge/msdk/reward/a/a;->k(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/out/MBridgeIds;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lccsancom/mbridge/msdk/videocommon/listener/InterVideoOutListener;->onVideoLoadFail(Lccsancom/mbridge/msdk/out/MBridgeIds;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 334
    goto :goto_7

    .line 330
    :catch_5
    move-exception v0

    .line 331
    sget-boolean v2, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v2, :cond_15

    .line 332
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 335
    :cond_15
    :goto_7
    goto/16 :goto_a

    .line 287
    :sswitch_4
    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/a/a;->h(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/videocommon/listener/InterVideoOutListener;

    move-result-object v2

    if-eqz v2, :cond_1c

    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/a/a;->e(Lccsancom/mbridge/msdk/reward/a/a;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 288
    iget-object v2, v0, Lccsanandroid/os/Message;->obj:Ljava/lang/Object;

    .line 289
    nop

    .line 290
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_16

    .line 291
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 294
    :cond_16
    nop

    .line 295
    invoke-virtual/range {p1 .. p1}, Lccsanandroid/os/Message;->getData()Lccsanandroid/os/Bundle;

    move-result-object v0

    .line 296
    if-eqz v0, :cond_17

    sget-object v2, Lccsancom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lccsanandroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 297
    sget-object v2, Lccsancom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lccsanandroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 298
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 304
    :cond_17
    :try_start_6
    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/a/a;->i(Lccsancom/mbridge/msdk/reward/a/a;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 305
    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/a/a;->j(Lccsancom/mbridge/msdk/reward/a/a;)V

    .line 307
    :cond_18
    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/a/a;->h(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/videocommon/listener/InterVideoOutListener;

    move-result-object v0

    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/a/a;->k(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/out/MBridgeIds;

    move-result-object v2

    invoke-interface {v0, v2}, Lccsancom/mbridge/msdk/videocommon/listener/InterVideoOutListener;->onVideoLoadSuccess(Lccsancom/mbridge/msdk/out/MBridgeIds;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 312
    goto :goto_8

    .line 308
    :catch_6
    move-exception v0

    .line 309
    sget-boolean v2, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v2, :cond_19

    .line 310
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 313
    :cond_19
    :goto_8
    goto/16 :goto_a

    .line 267
    :sswitch_5
    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/a/a;->a(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/a/a;->a(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1c

    .line 268
    nop

    .line 269
    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/a/a;->b(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/a/a;->b(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1a

    .line 270
    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/a/a;->b(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMof_template_url()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v3

    goto :goto_9

    .line 272
    :cond_1a
    const/4 v0, 0x0

    :goto_9
    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/a/a;->a(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getNscpt()I

    move-result v2

    .line 273
    iget-object v3, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v3}, Lccsancom/mbridge/msdk/reward/a/a;->c(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/reward/adapter/d;

    move-result-object v3

    if-eqz v3, :cond_1b

    iget-object v3, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v3}, Lccsancom/mbridge/msdk/reward/a/a;->c(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/reward/adapter/d;

    move-result-object v3

    iget-object v4, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v4}, Lccsancom/mbridge/msdk/reward/a/a;->a(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4, v0, v2}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(Ljava/util/List;ZI)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 274
    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/a/a;->d(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/reward/a/a$c;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/a/a;->e(Lccsancom/mbridge/msdk/reward/a/a;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 275
    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/a/a;->d(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/reward/a/a$c;

    move-result-object v0

    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/a/a;->f(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v3}, Lccsancom/mbridge/msdk/reward/a/a;->g(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lccsancom/mbridge/msdk/reward/a/a$c;->a(Lccsancom/mbridge/msdk/reward/a/a$c;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 278
    :cond_1b
    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/a/a;->d(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/reward/a/a$c;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/a/a;->e(Lccsancom/mbridge/msdk/reward/a/a;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 279
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/a;->a()V

    .line 280
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/a;->b()V

    .line 281
    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/a/a$1;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/a/a;->d(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/reward/a/a$c;

    move-result-object v0

    const-string v2, "load timeout"

    invoke-static {v0, v2}, Lccsancom/mbridge/msdk/reward/a/a$c;->a(Lccsancom/mbridge/msdk/reward/a/a$c;Ljava/lang/String;)V

    .line 473
    :cond_1c
    :goto_a
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_5
        0x9 -> :sswitch_4
        0x10 -> :sswitch_3
        0x11 -> :sswitch_2
        0x12 -> :sswitch_3
        0xf4629 -> :sswitch_1
        0xf462a -> :sswitch_0
    .end sparse-switch
.end method
