.class final Lccsancom/mbridge/msdk/reward/adapter/c$b;
.super Lccsancom/mbridge/msdk/mbsignalcommon/b/a;
.source "RewardCampaignsResourceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/reward/adapter/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Lccsanandroid/os/Handler;

.field private final b:Ljava/lang/Runnable;

.field private final c:Z

.field private final d:Z

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Lccsancom/mbridge/msdk/videocommon/a$a;

.field private k:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lccsancom/mbridge/msdk/videocommon/d/c;

.field private final n:Lccsancom/mbridge/msdk/reward/adapter/c$j;

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:I

.field private s:Z

.field private t:J


# direct methods
.method public constructor <init>(ZLccsanandroid/os/Handler;Ljava/lang/Runnable;ZZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/videocommon/a$a;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/util/List;Lccsancom/mbridge/msdk/videocommon/d/c;Lccsancom/mbridge/msdk/reward/adapter/c$j;ZJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lccsanandroid/os/Handler;",
            "Ljava/lang/Runnable;",
            "ZZI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lccsancom/mbridge/msdk/videocommon/a$a;",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;",
            "Lccsancom/mbridge/msdk/videocommon/d/c;",
            "Lccsancom/mbridge/msdk/reward/adapter/c$j;",
            "ZJ)V"
        }
    .end annotation

    .line 1551
    move-object v0, p0

    invoke-direct {p0}, Lccsancom/mbridge/msdk/mbsignalcommon/b/a;-><init>()V

    .line 1546
    const/4 v1, 0x0

    iput v1, v0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->r:I

    .line 1552
    move-object v1, p2

    iput-object v1, v0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->a:Lccsanandroid/os/Handler;

    .line 1553
    move-object v1, p3

    iput-object v1, v0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->b:Ljava/lang/Runnable;

    .line 1554
    move v1, p4

    iput-boolean v1, v0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->c:Z

    .line 1555
    move v1, p5

    iput-boolean v1, v0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->d:Z

    .line 1556
    move v1, p6

    iput v1, v0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->e:I

    .line 1557
    move-object v1, p7

    iput-object v1, v0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->f:Ljava/lang/String;

    .line 1558
    move-object v1, p8

    iput-object v1, v0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->h:Ljava/lang/String;

    .line 1559
    move-object v1, p9

    iput-object v1, v0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->g:Ljava/lang/String;

    .line 1560
    move-object v1, p10

    iput-object v1, v0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->i:Ljava/lang/String;

    .line 1561
    move-object v1, p11

    iput-object v1, v0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->j:Lccsancom/mbridge/msdk/videocommon/a$a;

    .line 1563
    move-object v1, p12

    iput-object v1, v0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->k:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 1564
    move-object/from16 v1, p13

    iput-object v1, v0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->l:Ljava/util/List;

    .line 1565
    move-object/from16 v1, p14

    iput-object v1, v0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->m:Lccsancom/mbridge/msdk/videocommon/d/c;

    .line 1566
    move-object/from16 v1, p15

    iput-object v1, v0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->n:Lccsancom/mbridge/msdk/reward/adapter/c$j;

    .line 1567
    move/from16 v1, p16

    iput-boolean v1, v0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->o:Z

    .line 1568
    move v1, p1

    iput-boolean v1, v0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->s:Z

    .line 1569
    move-wide/from16 v1, p17

    iput-wide v1, v0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->t:J

    .line 1570
    return-void
.end method


# virtual methods
.method public final a(Lccsanandroid/webkit/WebView;I)V
    .locals 11

    .line 1574
    iget-boolean p1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->q:Z

    if-nez p1, :cond_6

    .line 1576
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->k:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preload tpl readyState: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->g:Ljava/lang/String;

    iget-boolean v4, p0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->d:Z

    iget-object v5, p0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->i:Ljava/lang/String;

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->k:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->t:J

    sub-long/2addr v7, v9

    invoke-static/range {v0 .. v8}, Lccsancom/mbridge/msdk/reward/b/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1579
    goto :goto_0

    .line 1577
    :catch_0
    move-exception p1

    .line 1580
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->f:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1581
    const/4 p1, 0x1

    if-ne p2, p1, :cond_3

    .line 1582
    iget-boolean p2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->o:Z

    if-eqz p2, :cond_0

    .line 1583
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->g:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->i:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lccsancom/mbridge/msdk/videocommon/a;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 1585
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->g:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->i:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lccsancom/mbridge/msdk/videocommon/a;->c(Ljava/lang/String;)V

    .line 1587
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->g:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->i:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->f:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->j:Lccsancom/mbridge/msdk/videocommon/a$a;

    iget-boolean v2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->o:Z

    invoke-static {p2, v1, p1, v2}, Lccsancom/mbridge/msdk/videocommon/a;->a(Ljava/lang/String;Lccsancom/mbridge/msdk/videocommon/a$a;ZZ)V

    .line 1588
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->a:Lccsanandroid/os/Handler;

    if-eqz p2, :cond_1

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->b:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    .line 1589
    invoke-virtual {p2, v1}, Lccsanandroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1591
    :cond_1
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/i;->a()Lccsancom/mbridge/msdk/videocommon/download/i;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->f:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lccsancom/mbridge/msdk/videocommon/download/i;->d(Ljava/lang/String;Z)V

    .line 1592
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->j:Lccsancom/mbridge/msdk/videocommon/a$a;

    if-eqz p2, :cond_2

    .line 1593
    invoke-virtual {p2, p1}, Lccsancom/mbridge/msdk/videocommon/a$a;->a(Z)V

    .line 1596
    :cond_2
    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->n:Lccsancom/mbridge/msdk/reward/adapter/c$j;

    if-eqz v2, :cond_5

    .line 1597
    iget-object v4, p0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->h:Ljava/lang/String;

    iget-object v5, p0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->g:Ljava/lang/String;

    iget-object v6, p0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->i:Ljava/lang/String;

    iget-object v7, p0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->f:Ljava/lang/String;

    iget-object v8, p0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->j:Lccsancom/mbridge/msdk/videocommon/a$a;

    invoke-interface/range {v2 .. v8}, Lccsancom/mbridge/msdk/reward/adapter/c$j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/videocommon/a$a;)V

    goto :goto_2

    .line 1601
    :cond_3
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/i;->a()Lccsancom/mbridge/msdk/videocommon/download/i;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->f:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lccsancom/mbridge/msdk/videocommon/download/i;->d(Ljava/lang/String;Z)V

    .line 1602
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->j:Lccsancom/mbridge/msdk/videocommon/a$a;

    if-eqz p2, :cond_4

    .line 1603
    invoke-virtual {p2, v1}, Lccsancom/mbridge/msdk/videocommon/a$a;->a(Z)V

    .line 1605
    :cond_4
    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->n:Lccsancom/mbridge/msdk/reward/adapter/c$j;

    if-eqz v2, :cond_5

    .line 1606
    iget-object v4, p0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->h:Ljava/lang/String;

    iget-object v5, p0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->g:Ljava/lang/String;

    iget-object v6, p0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->i:Ljava/lang/String;

    iget-object v7, p0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->f:Ljava/lang/String;

    iget-object v8, p0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->j:Lccsancom/mbridge/msdk/videocommon/a$a;

    const-string v9, "state 2"

    invoke-interface/range {v2 .. v9}, Lccsancom/mbridge/msdk/reward/adapter/c$j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/videocommon/a$a;Ljava/lang/String;)V

    .line 1609
    :cond_5
    :goto_2
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->q:Z

    .line 1611
    :cond_6
    return-void
.end method

.method public final a(Lccsanandroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1688
    invoke-super {p0, p1, p2, p3, p4}, Lccsancom/mbridge/msdk/mbsignalcommon/b/a;->a(Lccsanandroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 1689
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/i;->a()Lccsancom/mbridge/msdk/videocommon/download/i;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p4, p0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->g:Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "_"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->i:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->f:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lccsancom/mbridge/msdk/videocommon/download/i;->d(Ljava/lang/String;Z)V

    .line 1690
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->n:Lccsancom/mbridge/msdk/reward/adapter/c$j;

    if-eqz p1, :cond_1

    .line 1691
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->g:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1692
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->j:Lccsancom/mbridge/msdk/videocommon/a$a;

    if-eqz p1, :cond_0

    .line 1693
    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/videocommon/a$a;->a(Z)V

    .line 1695
    :cond_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->n:Lccsancom/mbridge/msdk/reward/adapter/c$j;

    iget-object v3, p0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->h:Ljava/lang/String;

    iget-object v4, p0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->g:Ljava/lang/String;

    iget-object v5, p0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->i:Ljava/lang/String;

    iget-object v6, p0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->f:Ljava/lang/String;

    iget-object v7, p0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->j:Lccsancom/mbridge/msdk/videocommon/a$a;

    move-object v8, p3

    invoke-interface/range {v1 .. v8}, Lccsancom/mbridge/msdk/reward/adapter/c$j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/videocommon/a$a;Ljava/lang/String;)V

    .line 1697
    :cond_1
    return-void
.end method

.method public final a(Lccsanandroid/webkit/WebView;Ljava/lang/String;)V
    .locals 12

    .line 1660
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/mbsignalcommon/b/a;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;)V

    .line 1661
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->p:Z

    if-nez v0, :cond_3

    .line 1663
    :try_start_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->k:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v2

    const-string v3, "preload tpl onPageFinish"

    iget-object v4, p0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->g:Ljava/lang/String;

    iget-boolean v5, p0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->d:Z

    iget-object v6, p0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->i:Ljava/lang/String;

    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->k:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->t:J

    sub-long/2addr v8, v10

    invoke-static/range {v1 .. v9}, Lccsancom/mbridge/msdk/reward/b/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1666
    goto :goto_0

    .line 1664
    :catch_0
    move-exception v0

    .line 1667
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1668
    const-string v0, "wfr=1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_2

    .line 1669
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/i;->a()Lccsancom/mbridge/msdk/videocommon/download/i;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->f:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Lccsancom/mbridge/msdk/videocommon/download/i;->d(Ljava/lang/String;Z)V

    .line 1670
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->a:Lccsanandroid/os/Handler;

    if-eqz p2, :cond_0

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->b:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 1671
    invoke-virtual {p2, v1}, Lccsanandroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1673
    :cond_0
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->j:Lccsancom/mbridge/msdk/videocommon/a$a;

    if-eqz p2, :cond_1

    .line 1674
    invoke-virtual {p2, v0}, Lccsancom/mbridge/msdk/videocommon/a$a;->a(Z)V

    .line 1677
    :cond_1
    iget-object v3, p0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->n:Lccsancom/mbridge/msdk/reward/adapter/c$j;

    if-eqz v3, :cond_2

    .line 1678
    iget-object v5, p0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->h:Ljava/lang/String;

    iget-object v6, p0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->g:Ljava/lang/String;

    iget-object v7, p0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->i:Ljava/lang/String;

    iget-object v8, p0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->f:Ljava/lang/String;

    iget-object v9, p0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->j:Lccsancom/mbridge/msdk/videocommon/a$a;

    invoke-interface/range {v3 .. v9}, Lccsancom/mbridge/msdk/reward/adapter/c$j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/videocommon/a$a;)V

    .line 1681
    :cond_2
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object p2

    invoke-virtual {p2, p1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Lccsanandroid/webkit/WebView;)V

    .line 1682
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/reward/adapter/c$b;->p:Z

    .line 1684
    :cond_3
    return-void
.end method

.method public final a(Lccsanandroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2

    .line 1615
    const/4 p1, 0x1

    if-ne p4, p1, :cond_1

    .line 1617
    :try_start_0
    new-instance p4, Lccsancom/mbridge/msdk/reward/a/a;

    invoke-direct {p4}, Lccsancom/mbridge/msdk/reward/a/a;-><init>()V

    .line 1618
    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Lccsancom/mbridge/msdk/reward/a/a;->b(Z)V

    .line 1619
    const/4 v1, 0x2

    if-ne p5, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p4, p1}, Lccsancom/mbridge/msdk/reward/a/a;->a(Z)V

    .line 1620
    invoke-virtual {p4, p2, p3}, Lccsancom/mbridge/msdk/reward/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1621
    new-instance p1, Lccsancom/mbridge/msdk/video/bt/module/b/a;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lccsancom/mbridge/msdk/video/bt/module/b/a;-><init>(Lccsancom/mbridge/msdk/video/bt/module/b/g;)V

    invoke-virtual {p4, p1}, Lccsancom/mbridge/msdk/reward/a/a;->a(Lccsancom/mbridge/msdk/videocommon/listener/InterVideoOutListener;)V

    .line 1622
    invoke-virtual {p4, v0}, Lccsancom/mbridge/msdk/reward/a/a;->d(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1625
    goto :goto_1

    .line 1623
    :catch_0
    move-exception p1

    .line 1627
    :cond_1
    :goto_1
    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 17

    .line 1637
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "id"

    if-eqz v0, :cond_7

    :try_start_0
    invoke-static/range {p2 .. p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1638
    new-instance v3, Lccsanorg/json/JSONObject;

    move-object/from16 v4, p2

    invoke-direct {v3, v4}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1639
    invoke-virtual {v3, v2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1640
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/a/c;->a()Lccsancom/mbridge/msdk/video/bt/a/c;

    move-result-object v3

    invoke-virtual {v3, v0, v12}, Lccsancom/mbridge/msdk/video/bt/a/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1641
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/a/c;->a()Lccsancom/mbridge/msdk/video/bt/a/c;

    move-result-object v3

    invoke-virtual {v3, v12}, Lccsancom/mbridge/msdk/video/bt/a/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1642
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/a/c;->a()Lccsancom/mbridge/msdk/video/bt/a/c;

    move-result-object v3

    invoke-virtual {v3, v12}, Lccsancom/mbridge/msdk/video/bt/a/c;->a(Ljava/lang/String;)Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v8

    .line 1643
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/a/c;->a()Lccsancom/mbridge/msdk/video/bt/a/c;

    move-result-object v3

    invoke-virtual {v3, v12}, Lccsancom/mbridge/msdk/video/bt/a/c;->b(Ljava/lang/String;)Lccsancom/mbridge/msdk/videocommon/d/c;

    move-result-object v11

    .line 1644
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1645
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1646
    check-cast v0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;

    .line 1647
    iget-object v3, v0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    instance-of v3, v3, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    if-eqz v3, :cond_7

    .line 1648
    iget-object v7, v0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 2081
    invoke-static {}, Lccsancom/mbridge/msdk/reward/adapter/c$m;->a()Lccsancom/mbridge/msdk/reward/adapter/c;

    move-result-object v5

    .line 1649
    iget-boolean v6, v1, Lccsancom/mbridge/msdk/reward/adapter/c$b;->s:Z

    iget v0, v1, Lccsancom/mbridge/msdk/reward/adapter/c$b;->r:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    .line 3062
    :goto_0
    nop

    .line 3705
    if-eqz v7, :cond_6

    .line 3707
    const-string v4, "onSubPlayTemplateViewLoad"

    const-string v13, "data"

    const-string v14, "data is null"

    const-string v15, "error"

    const-string v3, "result"

    const-string v1, "RewardCampaignsResourceManager"

    move/from16 p2, v0

    const/4 v0, 0x2

    if-eqz v8, :cond_4

    if-eqz v11, :cond_4

    :try_start_1
    invoke-virtual {v8}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v16

    if-eqz v16, :cond_4

    invoke-static {v10}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_1

    goto :goto_2

    .line 3723
    :cond_1
    invoke-virtual {v8}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;->d()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 3724
    new-instance v5, Lccsanorg/json/JSONObject;

    invoke-direct {v5}, Lccsanorg/json/JSONObject;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3726
    :try_start_2
    invoke-virtual {v5, v2, v12}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 3727
    new-instance v2, Lccsanorg/json/JSONObject;

    invoke-direct {v2}, Lccsanorg/json/JSONObject;-><init>()V

    .line 3728
    const/4 v6, 0x1

    invoke-virtual {v2, v3, v6}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 3729
    invoke-virtual {v2, v15, v14}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 3730
    invoke-virtual {v5, v13, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 3731
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object v2

    invoke-virtual {v5}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3, v0}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v7, v4, v0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3736
    goto :goto_1

    .line 3732
    :catch_0
    move-exception v0

    .line 3733
    :try_start_3
    sget-boolean v2, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 3734
    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3737
    :cond_2
    :goto_1
    goto :goto_4

    .line 3739
    :cond_3
    new-instance v0, Lccsanandroid/os/Handler;

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    .line 3740
    new-instance v1, Lccsancom/mbridge/msdk/reward/adapter/c$3;

    move-object v4, v1

    invoke-direct/range {v4 .. v12}, Lccsancom/mbridge/msdk/reward/adapter/c$3;-><init>(Lccsancom/mbridge/msdk/reward/adapter/c;ZLccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/util/List;Ljava/lang/String;Lccsancom/mbridge/msdk/videocommon/d/c;Ljava/lang/String;)V

    move/from16 v2, p2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lccsanandroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    .line 3708
    :cond_4
    :goto_2
    new-instance v5, Lccsanorg/json/JSONObject;

    invoke-direct {v5}, Lccsanorg/json/JSONObject;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3710
    :try_start_4
    invoke-virtual {v5, v2, v12}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 3711
    new-instance v2, Lccsanorg/json/JSONObject;

    invoke-direct {v2}, Lccsanorg/json/JSONObject;-><init>()V

    .line 3712
    invoke-virtual {v2, v3, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 3713
    invoke-virtual {v2, v15, v14}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 3714
    invoke-virtual {v5, v13, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 3715
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object v2

    invoke-virtual {v5}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3, v0}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v7, v4, v0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3720
    goto :goto_3

    .line 3716
    :catch_1
    move-exception v0

    .line 3717
    :try_start_5
    sget-boolean v2, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v2, :cond_5

    .line 3718
    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3721
    :cond_5
    :goto_3
    goto :goto_4

    .line 1653
    :catchall_0
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_5

    .line 1650
    :cond_6
    :goto_4
    move-object/from16 v1, p0

    :try_start_6
    iget v0, v1, Lccsancom/mbridge/msdk/reward/adapter/c$b;->r:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, v1, Lccsancom/mbridge/msdk/reward/adapter/c$b;->r:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_6

    .line 1653
    :catchall_1
    move-exception v0

    .line 1654
    :goto_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "RVWindVaneWebView"

    invoke-static {v2, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 1655
    :cond_7
    :goto_6
    nop

    .line 1656
    :goto_7
    return-void
.end method
