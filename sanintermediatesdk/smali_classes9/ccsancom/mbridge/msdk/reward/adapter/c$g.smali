.class final Lccsancom/mbridge/msdk/reward/adapter/c$g;
.super Ljava/lang/Object;
.source "RewardCampaignsResourceManager.java"

# interfaces
.implements Lccsancom/mbridge/msdk/videocommon/download/g$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/reward/adapter/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "g"
.end annotation


# instance fields
.field private a:Z

.field private b:Lccsanandroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

.field private g:I

.field private h:Lccsanandroid/os/Handler;

.field private i:Lccsancom/mbridge/msdk/reward/adapter/c$i;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;"
        }
    .end annotation
.end field

.field private k:J


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;ILccsanandroid/os/Handler;Lccsancom/mbridge/msdk/reward/adapter/c$i;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            "I",
            "Lccsanandroid/os/Handler;",
            "Lccsancom/mbridge/msdk/reward/adapter/c$i;",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;)V"
        }
    .end annotation

    .line 538
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 526
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/reward/adapter/c$g;->a:Z

    .line 539
    iput-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$g;->b:Lccsanandroid/content/Context;

    .line 540
    iput-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$g;->d:Ljava/lang/String;

    .line 541
    iput-object p3, p0, Lccsancom/mbridge/msdk/reward/adapter/c$g;->c:Ljava/lang/String;

    .line 542
    iput-object p4, p0, Lccsancom/mbridge/msdk/reward/adapter/c$g;->e:Ljava/lang/String;

    .line 543
    iput-object p5, p0, Lccsancom/mbridge/msdk/reward/adapter/c$g;->f:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 544
    iput p6, p0, Lccsancom/mbridge/msdk/reward/adapter/c$g;->g:I

    .line 545
    iput-object p7, p0, Lccsancom/mbridge/msdk/reward/adapter/c$g;->h:Lccsanandroid/os/Handler;

    .line 546
    iput-object p8, p0, Lccsancom/mbridge/msdk/reward/adapter/c$g;->i:Lccsancom/mbridge/msdk/reward/adapter/c$i;

    .line 547
    iput-object p9, p0, Lccsancom/mbridge/msdk/reward/adapter/c$g;->j:Ljava/util/List;

    .line 548
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$g;->k:J

    .line 549
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 13

    .line 557
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/i;->a()Lccsancom/mbridge/msdk/videocommon/download/i;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lccsancom/mbridge/msdk/videocommon/download/i;->b(Ljava/lang/String;Z)V

    .line 558
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lccsancom/mbridge/msdk/reward/adapter/c$g;->k:J

    sub-long/2addr v3, v5

    .line 559
    nop

    .line 560
    iget v1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$g;->g:I

    const-string v5, ""

    const-string v10, "RewardCampaignsResourceManager"

    const-string v6, "url"

    const/16 v7, 0x65

    const-string v8, "request_id"

    const-string v9, "unit_id"

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_2

    .line 605
    :sswitch_0
    invoke-static {}, Lccsanandroid/os/Message;->obtain()Lccsanandroid/os/Message;

    move-result-object v1

    .line 606
    const/16 v3, 0x67

    iput v3, v1, Lccsanandroid/os/Message;->what:I

    .line 607
    new-instance v3, Lccsanandroid/os/Bundle;

    invoke-direct {v3}, Lccsanandroid/os/Bundle;-><init>()V

    .line 608
    iget-object v4, p0, Lccsancom/mbridge/msdk/reward/adapter/c$g;->c:Ljava/lang/String;

    invoke-virtual {v3, v9, v4}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    sget-object v4, Lccsancom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    iget-object v6, p0, Lccsancom/mbridge/msdk/reward/adapter/c$g;->d:Ljava/lang/String;

    invoke-virtual {v3, v4, v6}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    iget-object v4, p0, Lccsancom/mbridge/msdk/reward/adapter/c$g;->e:Ljava/lang/String;

    invoke-virtual {v3, v8, v4}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    invoke-virtual {v1, v3}, Lccsanandroid/os/Message;->setData(Lccsanandroid/os/Bundle;)V

    .line 612
    iget-object v3, p0, Lccsancom/mbridge/msdk/reward/adapter/c$g;->h:Lccsanandroid/os/Handler;

    invoke-virtual {v3, v1}, Lccsanandroid/os/Handler;->sendMessage(Lccsanandroid/os/Message;)Z

    .line 614
    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$g;->i:Lccsancom/mbridge/msdk/reward/adapter/c$i;

    if-eqz v1, :cond_0

    .line 615
    iget-object v3, p0, Lccsancom/mbridge/msdk/reward/adapter/c$g;->d:Ljava/lang/String;

    iget-object v4, p0, Lccsancom/mbridge/msdk/reward/adapter/c$g;->c:Ljava/lang/String;

    iget-object v6, p0, Lccsancom/mbridge/msdk/reward/adapter/c$g;->e:Ljava/lang/String;

    invoke-interface {v1, v3, v4, v6, p1}, Lccsancom/mbridge/msdk/reward/adapter/c$i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    :cond_0
    :try_start_0
    new-instance v1, Lccsancom/mbridge/msdk/foundation/entity/m;

    invoke-direct {v1}, Lccsancom/mbridge/msdk/foundation/entity/m;-><init>()V

    .line 619
    const-string v3, "2000045"

    invoke-virtual {v1, v3}, Lccsancom/mbridge/msdk/foundation/entity/m;->o(Ljava/lang/String;)V

    .line 620
    iget-object v3, p0, Lccsancom/mbridge/msdk/reward/adapter/c$g;->b:Lccsanandroid/content/Context;

    if-eqz v3, :cond_1

    .line 621
    invoke-virtual {v3}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lccsancom/mbridge/msdk/foundation/tools/m;->n(Lccsanandroid/content/Context;)I

    move-result v3

    .line 622
    invoke-virtual {v1, v3}, Lccsancom/mbridge/msdk/foundation/entity/m;->b(I)V

    .line 624
    :cond_1
    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/foundation/entity/m;->c(I)V

    .line 625
    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$g;->f:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v2, :cond_2

    .line 626
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/foundation/entity/m;->n(Ljava/lang/String;)V

    .line 627
    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$g;->f:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/foundation/entity/m;->k(Ljava/lang/String;)V

    .line 628
    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$g;->f:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/foundation/entity/m;->l(Ljava/lang/String;)V

    .line 630
    :cond_2
    invoke-virtual {v1, p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->i(Ljava/lang/String;)V

    .line 631
    invoke-virtual {v1, v5}, Lccsancom/mbridge/msdk/foundation/entity/m;->p(Ljava/lang/String;)V

    .line 632
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/c$g;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lccsancom/mbridge/msdk/foundation/entity/m;->m(Ljava/lang/String;)V

    .line 633
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/db/f;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/db/f;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/db/p;->a(Lccsancom/mbridge/msdk/foundation/db/e;)Lccsancom/mbridge/msdk/foundation/db/p;

    move-result-object v0

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/db/p;->a(Lccsancom/mbridge/msdk/foundation/entity/m;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 638
    goto/16 :goto_2

    .line 634
    :catch_0
    move-exception v0

    .line 635
    sget-boolean v1, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 636
    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    :cond_3
    goto/16 :goto_2

    .line 562
    :sswitch_1
    invoke-static {}, Lccsanandroid/os/Message;->obtain()Lccsanandroid/os/Message;

    move-result-object v1

    .line 563
    iput v7, v1, Lccsanandroid/os/Message;->what:I

    .line 564
    new-instance v2, Lccsanandroid/os/Bundle;

    invoke-direct {v2}, Lccsanandroid/os/Bundle;-><init>()V

    .line 565
    iget-object v7, p0, Lccsancom/mbridge/msdk/reward/adapter/c$g;->c:Ljava/lang/String;

    invoke-virtual {v2, v9, v7}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    sget-object v7, Lccsancom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    iget-object v9, p0, Lccsancom/mbridge/msdk/reward/adapter/c$g;->d:Ljava/lang/String;

    invoke-virtual {v2, v7, v9}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    iget-object v7, p0, Lccsancom/mbridge/msdk/reward/adapter/c$g;->e:Ljava/lang/String;

    invoke-virtual {v2, v8, v7}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    invoke-virtual {v2, v6, p1}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    invoke-virtual {v1, v2}, Lccsanandroid/os/Message;->setData(Lccsanandroid/os/Bundle;)V

    .line 570
    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$g;->h:Lccsanandroid/os/Handler;

    invoke-virtual {v2, v1}, Lccsanandroid/os/Handler;->sendMessage(Lccsanandroid/os/Message;)Z

    .line 572
    iget-boolean v1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$g;->a:Z

    if-eqz v1, :cond_7

    .line 574
    :try_start_1
    new-instance v11, Lccsancom/mbridge/msdk/foundation/entity/m;

    const-string v2, "2000043"

    const/16 v6, 0xe

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$g;->f:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lccsancom/mbridge/msdk/reward/adapter/c$g;->c:Ljava/lang/String;

    const-string v9, ""

    const-string v12, "1"

    move-object v1, v11

    move v3, v6

    move-object v5, p1

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v12

    invoke-direct/range {v1 .. v9}, Lccsancom/mbridge/msdk/foundation/entity/m;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/c$g;->f:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lccsancom/mbridge/msdk/foundation/entity/m;->k(Ljava/lang/String;)V

    .line 576
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/c$g;->f:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lccsancom/mbridge/msdk/foundation/entity/m;->l(Ljava/lang/String;)V

    .line 577
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/c$g;->f:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lccsancom/mbridge/msdk/foundation/entity/m;->n(Ljava/lang/String;)V

    .line 578
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/c$g;->f:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    move-result v0

    const/16 v1, 0x11f

    if-ne v0, v1, :cond_4

    .line 579
    const-string v0, "3"

    invoke-virtual {v11, v0}, Lccsancom/mbridge/msdk/foundation/entity/m;->h(Ljava/lang/String;)V

    goto :goto_0

    .line 580
    :cond_4
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/c$g;->f:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    move-result v0

    const/16 v1, 0x5e

    if-ne v0, v1, :cond_5

    .line 581
    const-string v0, "1"

    invoke-virtual {v11, v0}, Lccsancom/mbridge/msdk/foundation/entity/m;->h(Ljava/lang/String;)V

    .line 583
    :cond_5
    :goto_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/c$g;->c:Ljava/lang/String;

    invoke-static {v11, v0}, Lccsancom/mbridge/msdk/foundation/same/report/b;->a(Lccsancom/mbridge/msdk/foundation/entity/m;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 584
    :catch_1
    move-exception v0

    .line 585
    sget-boolean v1, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v1, :cond_6

    .line 586
    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    :cond_6
    :goto_1
    goto :goto_2

    .line 593
    :sswitch_2
    invoke-static {}, Lccsanandroid/os/Message;->obtain()Lccsanandroid/os/Message;

    move-result-object v1

    .line 594
    iput v7, v1, Lccsanandroid/os/Message;->what:I

    .line 595
    new-instance v2, Lccsanandroid/os/Bundle;

    invoke-direct {v2}, Lccsanandroid/os/Bundle;-><init>()V

    .line 596
    iget-object v3, p0, Lccsancom/mbridge/msdk/reward/adapter/c$g;->c:Ljava/lang/String;

    invoke-virtual {v2, v9, v3}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    sget-object v3, Lccsancom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    iget-object v4, p0, Lccsancom/mbridge/msdk/reward/adapter/c$g;->d:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    iget-object v3, p0, Lccsancom/mbridge/msdk/reward/adapter/c$g;->e:Ljava/lang/String;

    invoke-virtual {v2, v8, v3}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    invoke-virtual {v2, v6, p1}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    invoke-virtual {v1, v2}, Lccsanandroid/os/Message;->setData(Lccsanandroid/os/Bundle;)V

    .line 601
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/c$g;->h:Lccsanandroid/os/Handler;

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->sendMessage(Lccsanandroid/os/Message;)Z

    .line 602
    nop

    .line 642
    :cond_7
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x139 -> :sswitch_2
        0x1f1 -> :sswitch_1
        0x35b -> :sswitch_0
    .end sparse-switch
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13

    .line 646
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/i;->a()Lccsancom/mbridge/msdk/videocommon/download/i;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lccsancom/mbridge/msdk/videocommon/download/i;->b(Ljava/lang/String;Z)V

    .line 647
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$g;->k:J

    sub-long/2addr v0, v2

    .line 648
    nop

    .line 650
    iget v2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$g;->g:I

    const-string v3, "RewardCampaignsResourceManager"

    const-string v4, "message"

    const-string v5, "url"

    const-string v6, "request_id"

    const-string v7, "unit_id"

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_2

    .line 697
    :sswitch_0
    invoke-static {}, Lccsanandroid/os/Message;->obtain()Lccsanandroid/os/Message;

    move-result-object v0

    .line 698
    const/16 v1, 0xcb

    iput v1, v0, Lccsanandroid/os/Message;->what:I

    .line 699
    new-instance v1, Lccsanandroid/os/Bundle;

    invoke-direct {v1}, Lccsanandroid/os/Bundle;-><init>()V

    .line 700
    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$g;->c:Ljava/lang/String;

    invoke-virtual {v1, v7, v2}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    sget-object v2, Lccsancom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    iget-object v7, p0, Lccsancom/mbridge/msdk/reward/adapter/c$g;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v7}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$g;->e:Ljava/lang/String;

    invoke-virtual {v1, v6, v2}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    invoke-virtual {v1, v5, p2}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    invoke-virtual {v1, v4, p1}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    invoke-virtual {v0, v1}, Lccsanandroid/os/Message;->setData(Lccsanandroid/os/Bundle;)V

    .line 706
    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$g;->h:Lccsanandroid/os/Handler;

    invoke-virtual {v1, v0}, Lccsanandroid/os/Handler;->sendMessage(Lccsanandroid/os/Message;)Z

    .line 708
    iget-object v4, p0, Lccsancom/mbridge/msdk/reward/adapter/c$g;->i:Lccsancom/mbridge/msdk/reward/adapter/c$i;

    if-eqz v4, :cond_0

    .line 709
    iget-object v5, p0, Lccsancom/mbridge/msdk/reward/adapter/c$g;->d:Ljava/lang/String;

    iget-object v6, p0, Lccsancom/mbridge/msdk/reward/adapter/c$g;->c:Ljava/lang/String;

    iget-object v7, p0, Lccsancom/mbridge/msdk/reward/adapter/c$g;->e:Ljava/lang/String;

    move-object v8, p2

    move-object v9, p1

    invoke-interface/range {v4 .. v9}, Lccsancom/mbridge/msdk/reward/adapter/c$i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    :cond_0
    :try_start_0
    new-instance v0, Lccsancom/mbridge/msdk/foundation/entity/m;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/foundation/entity/m;-><init>()V

    .line 713
    const-string v1, "2000045"

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/entity/m;->o(Ljava/lang/String;)V

    .line 714
    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$g;->b:Lccsanandroid/content/Context;

    if-eqz v1, :cond_1

    .line 715
    invoke-virtual {v1}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/tools/m;->n(Lccsanandroid/content/Context;)I

    move-result v1

    .line 716
    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/entity/m;->b(I)V

    .line 718
    :cond_1
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/entity/m;->c(I)V

    .line 719
    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$g;->f:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v1, :cond_2

    .line 720
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/entity/m;->n(Ljava/lang/String;)V

    .line 721
    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$g;->f:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/entity/m;->k(Ljava/lang/String;)V

    .line 722
    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$g;->f:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/entity/m;->l(Ljava/lang/String;)V

    .line 724
    :cond_2
    invoke-virtual {v0, p2}, Lccsancom/mbridge/msdk/foundation/entity/m;->i(Ljava/lang/String;)V

    .line 725
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->p(Ljava/lang/String;)V

    .line 726
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$g;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->m(Ljava/lang/String;)V

    .line 727
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/db/f;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/db/f;

    move-result-object p1

    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/db/p;->a(Lccsancom/mbridge/msdk/foundation/db/e;)Lccsancom/mbridge/msdk/foundation/db/p;

    move-result-object p1

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/foundation/db/p;->a(Lccsancom/mbridge/msdk/foundation/entity/m;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 732
    goto/16 :goto_2

    .line 728
    :catch_0
    move-exception p1

    .line 729
    sget-boolean p2, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz p2, :cond_3

    .line 730
    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    :cond_3
    goto/16 :goto_2

    .line 652
    :sswitch_1
    invoke-static {}, Lccsanandroid/os/Message;->obtain()Lccsanandroid/os/Message;

    move-result-object v2

    .line 653
    const/16 v8, 0xc9

    iput v8, v2, Lccsanandroid/os/Message;->what:I

    .line 654
    new-instance v8, Lccsanandroid/os/Bundle;

    invoke-direct {v8}, Lccsanandroid/os/Bundle;-><init>()V

    .line 655
    iget-object v9, p0, Lccsancom/mbridge/msdk/reward/adapter/c$g;->c:Ljava/lang/String;

    invoke-virtual {v8, v7, v9}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    sget-object v7, Lccsancom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    iget-object v9, p0, Lccsancom/mbridge/msdk/reward/adapter/c$g;->d:Ljava/lang/String;

    invoke-virtual {v8, v7, v9}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    iget-object v7, p0, Lccsancom/mbridge/msdk/reward/adapter/c$g;->e:Ljava/lang/String;

    invoke-virtual {v8, v6, v7}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    invoke-virtual {v8, v5, p2}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    invoke-virtual {v8, v4, p1}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    invoke-virtual {v2, v8}, Lccsanandroid/os/Message;->setData(Lccsanandroid/os/Bundle;)V

    .line 661
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$g;->h:Lccsanandroid/os/Handler;

    invoke-virtual {p1, v2}, Lccsanandroid/os/Handler;->sendMessage(Lccsanandroid/os/Message;)Z

    .line 662
    iget-boolean p1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$g;->a:Z

    if-eqz p1, :cond_7

    .line 664
    :try_start_1
    new-instance p1, Lccsancom/mbridge/msdk/foundation/entity/m;

    const-string v5, "2000043"

    const/4 v6, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/c$g;->f:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lccsancom/mbridge/msdk/reward/adapter/c$g;->c:Ljava/lang/String;

    const-string v11, "zip download failed"

    const-string v12, "1"

    move-object v4, p1

    move-object v8, p2

    invoke-direct/range {v4 .. v12}, Lccsancom/mbridge/msdk/foundation/entity/m;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$g;->f:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/foundation/entity/m;->k(Ljava/lang/String;)V

    .line 666
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$g;->f:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/foundation/entity/m;->l(Ljava/lang/String;)V

    .line 667
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$g;->f:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/foundation/entity/m;->n(Ljava/lang/String;)V

    .line 668
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$g;->f:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    move-result p2

    const/16 v0, 0x11f

    if-ne p2, v0, :cond_4

    .line 669
    const-string p2, "3"

    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/foundation/entity/m;->h(Ljava/lang/String;)V

    goto :goto_0

    .line 670
    :cond_4
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$g;->f:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    move-result p2

    const/16 v0, 0x5e

    if-ne p2, v0, :cond_5

    .line 671
    const-string p2, "1"

    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/foundation/entity/m;->h(Ljava/lang/String;)V

    .line 673
    :cond_5
    :goto_0
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$g;->c:Ljava/lang/String;

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/foundation/same/report/b;->a(Lccsancom/mbridge/msdk/foundation/entity/m;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 674
    :catch_1
    move-exception p1

    .line 675
    sget-boolean p2, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz p2, :cond_6

    .line 676
    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    :cond_6
    :goto_1
    goto :goto_2

    .line 683
    :sswitch_2
    invoke-static {}, Lccsanandroid/os/Message;->obtain()Lccsanandroid/os/Message;

    move-result-object v0

    .line 684
    const/16 v1, 0x65

    iput v1, v0, Lccsanandroid/os/Message;->what:I

    .line 685
    new-instance v1, Lccsanandroid/os/Bundle;

    invoke-direct {v1}, Lccsanandroid/os/Bundle;-><init>()V

    .line 686
    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$g;->c:Ljava/lang/String;

    invoke-virtual {v1, v7, v2}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    sget-object v2, Lccsancom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    iget-object v3, p0, Lccsancom/mbridge/msdk/reward/adapter/c$g;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$g;->e:Ljava/lang/String;

    invoke-virtual {v1, v6, v2}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    invoke-virtual {v1, v5, p2}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    invoke-virtual {v1, v4, p1}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    invoke-virtual {v0, v1}, Lccsanandroid/os/Message;->setData(Lccsanandroid/os/Bundle;)V

    .line 692
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$g;->h:Lccsanandroid/os/Handler;

    invoke-virtual {p1, v0}, Lccsanandroid/os/Handler;->sendMessage(Lccsanandroid/os/Message;)Z

    .line 694
    nop

    .line 736
    :cond_7
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0x139 -> :sswitch_2
        0x1f1 -> :sswitch_1
        0x35b -> :sswitch_0
    .end sparse-switch
.end method

.method public final a(Z)V
    .locals 0

    .line 552
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$g;->a:Z

    .line 553
    return-void
.end method
