.class final Lccsancom/mbridge/msdk/reward/adapter/d$3;
.super Ljava/lang/Object;
.source "RewardMVVideoAdapter.java"

# interfaces
.implements Lccsancom/mbridge/msdk/reward/adapter/c$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/reward/adapter/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

.field final synthetic c:I

.field final synthetic d:Lccsancom/mbridge/msdk/reward/adapter/d;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/reward/adapter/d;ZLccsancom/mbridge/msdk/foundation/entity/CampaignEx;I)V
    .locals 0

    .line 1529
    iput-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$3;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    iput-boolean p2, p0, Lccsancom/mbridge/msdk/reward/adapter/d$3;->a:Z

    iput-object p3, p0, Lccsancom/mbridge/msdk/reward/adapter/d$3;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iput p4, p0, Lccsancom/mbridge/msdk/reward/adapter/d$3;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;)V"
        }
    .end annotation

    .line 1532
    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p4

    iget-object v0, v8, Lccsancom/mbridge/msdk/reward/adapter/d$3;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    const/4 v11, 0x1

    iput-boolean v11, v0, Lccsancom/mbridge/msdk/reward/adapter/d;->d:Z

    .line 1534
    const/4 v12, 0x0

    if-eqz v10, :cond_0

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1536
    :try_start_0
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v0, v8, Lccsancom/mbridge/msdk/reward/adapter/d$3;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/adapter/d;->h(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsanandroid/content/Context;

    move-result-object v14

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resource download success is tpl :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v8, Lccsancom/mbridge/msdk/reward/adapter/d$3;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    iget-object v0, v8, Lccsancom/mbridge/msdk/reward/adapter/d$3;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/adapter/d;->d(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/lang/String;

    move-result-object v16

    iget-object v0, v8, Lccsancom/mbridge/msdk/reward/adapter/d$3;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/adapter/d;->f(Lccsancom/mbridge/msdk/reward/adapter/d;)Z

    move-result v17

    iget-object v0, v8, Lccsancom/mbridge/msdk/reward/adapter/d$3;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v19

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, v8, Lccsancom/mbridge/msdk/reward/adapter/d$3;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/adapter/d;->g(Lccsancom/mbridge/msdk/reward/adapter/d;)J

    move-result-wide v2

    sub-long v20, v0, v2

    move-object/from16 v18, p3

    invoke-static/range {v13 .. v21}, Lccsancom/mbridge/msdk/reward/b/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1539
    goto :goto_0

    .line 1537
    :catch_0
    move-exception v0

    .line 1541
    :cond_0
    :goto_0
    iget-boolean v0, v8, Lccsancom/mbridge/msdk/reward/adapter/d$3;->a:Z

    if-nez v0, :cond_9

    .line 1542
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 1543
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v8, Lccsancom/mbridge/msdk/reward/adapter/d$3;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v1}, Lccsancom/mbridge/msdk/reward/adapter/d;->i(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsanandroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1544
    iget-object v1, v8, Lccsancom/mbridge/msdk/reward/adapter/d$3;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v1}, Lccsancom/mbridge/msdk/reward/adapter/d;->i(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsanandroid/os/Handler;

    move-result-object v13

    new-instance v14, Lccsancom/mbridge/msdk/reward/adapter/d$3$1;

    move-object v1, v14

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lccsancom/mbridge/msdk/reward/adapter/d$3$1;-><init>(Lccsancom/mbridge/msdk/reward/adapter/d$3;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v13, v14}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    .line 1617
    :cond_1
    iget-object v1, v8, Lccsancom/mbridge/msdk/reward/adapter/d$3;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v1}, Lccsancom/mbridge/msdk/reward/adapter/d;->c(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/util/List;

    move-result-object v2

    iget-boolean v3, v8, Lccsancom/mbridge/msdk/reward/adapter/d$3;->a:Z

    iget v4, v8, Lccsancom/mbridge/msdk/reward/adapter/d$3;->c:I

    invoke-virtual {v1, v2, v3, v4}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(Ljava/util/List;ZI)Z

    move-result v1

    const/4 v2, 0x5

    if-eqz v1, :cond_4

    .line 1618
    iget-object v1, v8, Lccsancom/mbridge/msdk/reward/adapter/d$3;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v1}, Lccsancom/mbridge/msdk/reward/adapter/d;->d(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v8, Lccsancom/mbridge/msdk/reward/adapter/d$3;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v4}, Lccsancom/mbridge/msdk/reward/adapter/d;->e(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/util/List;

    move-result-object v4

    iget-object v5, v8, Lccsancom/mbridge/msdk/reward/adapter/d$3;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v5}, Lccsancom/mbridge/msdk/reward/adapter/d;->f(Lccsancom/mbridge/msdk/reward/adapter/d;)Z

    move-result v5

    invoke-static {v1, v3, v10, v4, v5}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(Lccsancom/mbridge/msdk/reward/adapter/d;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Z)V

    .line 1619
    iget-object v1, v8, Lccsancom/mbridge/msdk/reward/adapter/d$3;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v1}, Lccsancom/mbridge/msdk/reward/adapter/d;->i(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsanandroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1620
    iget-object v1, v8, Lccsancom/mbridge/msdk/reward/adapter/d$3;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v1}, Lccsancom/mbridge/msdk/reward/adapter/d;->i(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsanandroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Lccsanandroid/os/Handler;->removeMessages(I)V

    .line 1622
    :cond_2
    iget-object v1, v8, Lccsancom/mbridge/msdk/reward/adapter/d$3;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v1}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsancom/mbridge/msdk/reward/adapter/b;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 1623
    iget-object v1, v8, Lccsancom/mbridge/msdk/reward/adapter/d$3;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    iget-boolean v1, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->g:Z

    if-nez v1, :cond_7

    .line 1624
    iget-object v1, v8, Lccsancom/mbridge/msdk/reward/adapter/d$3;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    iput-boolean v11, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->g:Z

    .line 1625
    iget-object v1, v8, Lccsancom/mbridge/msdk/reward/adapter/d$3;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v1}, Lccsancom/mbridge/msdk/reward/adapter/d;->d(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1626
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, v8, Lccsancom/mbridge/msdk/reward/adapter/d$3;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v3}, Lccsancom/mbridge/msdk/reward/adapter/d;->g(Lccsancom/mbridge/msdk/reward/adapter/d;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 1627
    iget-object v3, v8, Lccsancom/mbridge/msdk/reward/adapter/d$3;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v3}, Lccsancom/mbridge/msdk/reward/adapter/d;->h(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsanandroid/content/Context;

    move-result-object v3

    iget-object v4, v8, Lccsancom/mbridge/msdk/reward/adapter/d$3;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v4}, Lccsancom/mbridge/msdk/reward/adapter/d;->c(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/util/List;

    move-result-object v4

    iget-object v5, v8, Lccsancom/mbridge/msdk/reward/adapter/d$3;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v5}, Lccsancom/mbridge/msdk/reward/adapter/d;->d(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5, v1, v2}, Lccsancom/mbridge/msdk/reward/b/a;->a(Lccsanandroid/content/Context;Ljava/util/List;Ljava/lang/String;J)V

    .line 1629
    :cond_3
    iget-object v1, v8, Lccsancom/mbridge/msdk/reward/adapter/d$3;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v1}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsancom/mbridge/msdk/reward/adapter/b;

    move-result-object v1

    invoke-interface {v1}, Lccsancom/mbridge/msdk/reward/adapter/b;->a()V

    goto/16 :goto_2

    .line 1633
    :cond_4
    iget-object v1, v8, Lccsancom/mbridge/msdk/reward/adapter/d$3;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v1}, Lccsancom/mbridge/msdk/reward/adapter/d;->b(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/util/List;

    move-result-object v3

    iget-object v4, v8, Lccsancom/mbridge/msdk/reward/adapter/d$3;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v4}, Lccsancom/mbridge/msdk/reward/adapter/d;->f(Lccsancom/mbridge/msdk/reward/adapter/d;)Z

    move-result v4

    invoke-static {v1, v9, v3, v4}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(Lccsancom/mbridge/msdk/reward/adapter/d;Ljava/lang/String;Ljava/util/List;Z)V

    .line 1634
    iget-object v1, v8, Lccsancom/mbridge/msdk/reward/adapter/d$3;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v1}, Lccsancom/mbridge/msdk/reward/adapter/d;->i(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsanandroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1635
    iget-object v1, v8, Lccsancom/mbridge/msdk/reward/adapter/d$3;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v1}, Lccsancom/mbridge/msdk/reward/adapter/d;->i(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsanandroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Lccsanandroid/os/Handler;->removeMessages(I)V

    .line 1637
    :cond_5
    iget-object v1, v8, Lccsancom/mbridge/msdk/reward/adapter/d$3;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v1}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsancom/mbridge/msdk/reward/adapter/b;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 1638
    iget-object v1, v8, Lccsancom/mbridge/msdk/reward/adapter/d$3;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    iget-boolean v1, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->h:Z

    if-nez v1, :cond_7

    .line 1639
    iget-object v1, v8, Lccsancom/mbridge/msdk/reward/adapter/d$3;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    iput-boolean v11, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->h:Z

    .line 1640
    iget-object v1, v8, Lccsancom/mbridge/msdk/reward/adapter/d$3;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v1}, Lccsancom/mbridge/msdk/reward/adapter/d;->d(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1641
    iget-object v1, v8, Lccsancom/mbridge/msdk/reward/adapter/d$3;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v1}, Lccsancom/mbridge/msdk/reward/adapter/d;->c(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, v8, Lccsancom/mbridge/msdk/reward/adapter/d$3;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v1}, Lccsancom/mbridge/msdk/reward/adapter/d;->c(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 1642
    iget-object v1, v8, Lccsancom/mbridge/msdk/reward/adapter/d$3;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v1}, Lccsancom/mbridge/msdk/reward/adapter/d;->c(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v1, v8, Lccsancom/mbridge/msdk/reward/adapter/d$3;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v1}, Lccsancom/mbridge/msdk/reward/adapter/d;->h(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsanandroid/content/Context;

    move-result-object v14

    iget-object v1, v8, Lccsancom/mbridge/msdk/reward/adapter/d$3;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v1}, Lccsancom/mbridge/msdk/reward/adapter/d;->d(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/lang/String;

    move-result-object v16

    iget-object v1, v8, Lccsancom/mbridge/msdk/reward/adapter/d$3;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v1}, Lccsancom/mbridge/msdk/reward/adapter/d;->f(Lccsancom/mbridge/msdk/reward/adapter/d;)Z

    move-result v17

    iget-object v1, v8, Lccsancom/mbridge/msdk/reward/adapter/d$3;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v19

    const-string v15, "have no temp but isReady false"

    move-object/from16 v18, p3

    invoke-static/range {v13 .. v19}, Lccsancom/mbridge/msdk/reward/b/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1645
    :cond_6
    iget-object v1, v8, Lccsancom/mbridge/msdk/reward/adapter/d$3;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v1}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsancom/mbridge/msdk/reward/adapter/b;

    move-result-object v1

    const-string v2, "errorCode: 3503 errorMessage: have no temp but isReady false"

    invoke-interface {v1, v2}, Lccsancom/mbridge/msdk/reward/adapter/b;->a(Ljava/lang/String;)V

    .line 1650
    :cond_7
    :goto_2
    goto/16 :goto_1

    :cond_8
    goto :goto_3

    .line 1652
    :cond_9
    iget-object v0, v8, Lccsancom/mbridge/msdk/reward/adapter/d$3;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    iget-boolean v0, v0, Lccsancom/mbridge/msdk/reward/adapter/d;->e:Z

    if-eqz v0, :cond_a

    iget-object v0, v8, Lccsancom/mbridge/msdk/reward/adapter/d$3;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    iget-boolean v0, v0, Lccsancom/mbridge/msdk/reward/adapter/d;->f:Z

    if-nez v0, :cond_a

    iget-object v0, v8, Lccsancom/mbridge/msdk/reward/adapter/d$3;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/adapter/d;->i(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsanandroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 1653
    iget-object v0, v8, Lccsancom/mbridge/msdk/reward/adapter/d$3;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    iput-boolean v11, v0, Lccsancom/mbridge/msdk/reward/adapter/d;->f:Z

    .line 1654
    iget-object v0, v8, Lccsancom/mbridge/msdk/reward/adapter/d$3;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/adapter/d;->i(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsanandroid/os/Handler;

    move-result-object v0

    new-instance v1, Lccsancom/mbridge/msdk/reward/adapter/d$3$2;

    move-object/from16 v2, p3

    invoke-direct {v1, v8, v2, v9, v10}, Lccsancom/mbridge/msdk/reward/adapter/d$3$2;-><init>(Lccsancom/mbridge/msdk/reward/adapter/d$3;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1727
    :cond_a
    :goto_3
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1731
    move-object/from16 v7, p0

    move-object/from16 v4, p4

    iget-object v0, v7, Lccsancom/mbridge/msdk/reward/adapter/d$3;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lccsancom/mbridge/msdk/reward/adapter/d;->d:Z

    .line 1732
    if-eqz v4, :cond_0

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1734
    :try_start_0
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v0, v7, Lccsancom/mbridge/msdk/reward/adapter/d$3;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/adapter/d;->h(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsanandroid/content/Context;

    move-result-object v9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resource download failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v5, p5

    :try_start_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is tpl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v7, Lccsancom/mbridge/msdk/reward/adapter/d$3;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v0, v7, Lccsancom/mbridge/msdk/reward/adapter/d$3;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/adapter/d;->d(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/lang/String;

    move-result-object v11

    iget-object v0, v7, Lccsancom/mbridge/msdk/reward/adapter/d$3;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/adapter/d;->f(Lccsancom/mbridge/msdk/reward/adapter/d;)Z

    move-result v12

    iget-object v0, v7, Lccsancom/mbridge/msdk/reward/adapter/d$3;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, v7, Lccsancom/mbridge/msdk/reward/adapter/d$3;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/adapter/d;->g(Lccsancom/mbridge/msdk/reward/adapter/d;)J

    move-result-wide v2

    sub-long v15, v0, v2

    move-object/from16 v13, p3

    invoke-static/range {v8 .. v16}, Lccsancom/mbridge/msdk/reward/b/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1737
    goto :goto_0

    .line 1735
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object/from16 v5, p5

    goto :goto_0

    .line 1732
    :cond_0
    move-object/from16 v5, p5

    .line 1739
    :goto_0
    iget-object v0, v7, Lccsancom/mbridge/msdk/reward/adapter/d$3;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsancom/mbridge/msdk/reward/adapter/b;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v7, Lccsancom/mbridge/msdk/reward/adapter/d$3;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/adapter/d;->i(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsanandroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1740
    iget-object v0, v7, Lccsancom/mbridge/msdk/reward/adapter/d$3;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/adapter/d;->i(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsanandroid/os/Handler;

    move-result-object v0

    new-instance v8, Lccsancom/mbridge/msdk/reward/adapter/d$3$3;

    move-object v1, v8

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Lccsancom/mbridge/msdk/reward/adapter/d$3$3;-><init>(Lccsancom/mbridge/msdk/reward/adapter/d$3;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1759
    :cond_1
    return-void
.end method
