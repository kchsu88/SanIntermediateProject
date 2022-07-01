.class final Lccsancom/mbridge/msdk/reward/adapter/d$b;
.super Ljava/lang/Object;
.source "RewardMVVideoAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/reward/adapter/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/reward/adapter/d;

.field private b:Ljava/lang/String;

.field private c:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lccsancom/mbridge/msdk/videocommon/d/c;

.field private g:I

.field private h:Lccsancom/mbridge/msdk/reward/adapter/d;


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/reward/adapter/d;Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/videocommon/d/c;ILccsancom/mbridge/msdk/reward/adapter/d;)V
    .locals 0

    .line 503
    iput-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$b;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 504
    iput-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/d$b;->b:Ljava/lang/String;

    .line 505
    iput-object p3, p0, Lccsancom/mbridge/msdk/reward/adapter/d$b;->c:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 506
    iput-object p4, p0, Lccsancom/mbridge/msdk/reward/adapter/d$b;->d:Ljava/lang/String;

    .line 507
    iput-object p5, p0, Lccsancom/mbridge/msdk/reward/adapter/d$b;->e:Ljava/lang/String;

    .line 508
    iput-object p6, p0, Lccsancom/mbridge/msdk/reward/adapter/d$b;->f:Lccsancom/mbridge/msdk/videocommon/d/c;

    .line 509
    iput p7, p0, Lccsancom/mbridge/msdk/reward/adapter/d$b;->g:I

    .line 510
    iput-object p8, p0, Lccsancom/mbridge/msdk/reward/adapter/d$b;->h:Lccsancom/mbridge/msdk/reward/adapter/d;

    .line 511
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 516
    :try_start_0
    new-instance v3, Lccsancom/mbridge/msdk/videocommon/a$a;

    invoke-direct {v3}, Lccsancom/mbridge/msdk/videocommon/a$a;-><init>()V

    .line 517
    new-instance v8, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-direct {v8, v0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;-><init>(Lccsanandroid/content/Context;)V

    .line 518
    invoke-virtual {v3, v8}, Lccsancom/mbridge/msdk/videocommon/a$a;->a(Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;)V

    .line 519
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/a/c;->a()Lccsancom/mbridge/msdk/video/bt/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/bt/a/c;->b()Ljava/lang/String;

    move-result-object v0

    .line 520
    invoke-virtual {v3, v0}, Lccsancom/mbridge/msdk/videocommon/a$a;->a(Ljava/lang/String;)V

    .line 522
    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$b;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v1}, Lccsancom/mbridge/msdk/reward/adapter/d;->k(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$b;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v1}, Lccsancom/mbridge/msdk/reward/adapter/d;->k(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 523
    new-instance v1, Lccsancom/mbridge/msdk/video/signal/a/j;

    iget-object v4, p0, Lccsancom/mbridge/msdk/reward/adapter/d$b;->c:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v5, p0, Lccsancom/mbridge/msdk/reward/adapter/d$b;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v5}, Lccsancom/mbridge/msdk/reward/adapter/d;->k(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;

    move-result-object v5

    invoke-virtual {v5}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {v1, v2, v4, v5}, Lccsancom/mbridge/msdk/video/signal/a/j;-><init>(Lccsanandroid/app/Activity;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/util/List;)V

    move-object v9, v1

    goto :goto_0

    .line 525
    :cond_0
    new-instance v1, Lccsancom/mbridge/msdk/video/signal/a/j;

    iget-object v4, p0, Lccsancom/mbridge/msdk/reward/adapter/d$b;->c:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-direct {v1, v2, v4}, Lccsancom/mbridge/msdk/video/signal/a/j;-><init>(Lccsanandroid/app/Activity;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    move-object v9, v1

    .line 527
    :goto_0
    iget v1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$b;->g:I

    invoke-virtual {v9, v1}, Lccsancom/mbridge/msdk/video/signal/a/j;->a(I)V

    .line 528
    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$b;->e:Ljava/lang/String;

    invoke-virtual {v9, v1}, Lccsancom/mbridge/msdk/video/signal/a/j;->a(Ljava/lang/String;)V

    .line 529
    invoke-virtual {v9, v0}, Lccsancom/mbridge/msdk/video/signal/a/j;->c(Ljava/lang/String;)V

    .line 530
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/d$b;->f:Lccsancom/mbridge/msdk/videocommon/d/c;

    invoke-virtual {v9, v0}, Lccsancom/mbridge/msdk/video/signal/a/j;->a(Lccsancom/mbridge/msdk/videocommon/d/c;)V

    .line 531
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/d$b;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/adapter/d;->l(Lccsancom/mbridge/msdk/reward/adapter/d;)Z

    move-result v0

    invoke-virtual {v9, v0}, Lccsancom/mbridge/msdk/video/signal/a/j;->d(Z)V

    .line 532
    new-instance v10, Lccsancom/mbridge/msdk/reward/adapter/d$a;

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$b;->d:Ljava/lang/String;

    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/adapter/d$b;->b:Ljava/lang/String;

    iget-object v4, p0, Lccsancom/mbridge/msdk/reward/adapter/d$b;->c:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v5, p0, Lccsancom/mbridge/msdk/reward/adapter/d$b;->h:Lccsancom/mbridge/msdk/reward/adapter/d;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v7}, Lccsancom/mbridge/msdk/reward/adapter/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/videocommon/a$a;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsancom/mbridge/msdk/reward/adapter/d;Lccsancom/mbridge/msdk/reward/adapter/d$b;Lccsanandroid/os/Handler;)V

    .line 533
    invoke-virtual {v8, v10}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->setWebViewListener(Lccsancom/mbridge/msdk/mbsignalcommon/windvane/d;)V

    .line 534
    invoke-virtual {v8, v9}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->setObject(Ljava/lang/Object;)V

    .line 535
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/d$b;->d:Ljava/lang/String;

    invoke-virtual {v8, v0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 540
    :catchall_0
    move-exception v0

    .line 541
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RewardMVVideoAdapter"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 536
    :catch_0
    move-exception v0

    .line 537
    sget-boolean v1, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 538
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 542
    :cond_1
    :goto_1
    nop

    .line 543
    :goto_2
    return-void
.end method
