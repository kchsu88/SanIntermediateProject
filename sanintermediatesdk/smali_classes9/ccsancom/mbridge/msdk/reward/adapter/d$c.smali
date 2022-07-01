.class final Lccsancom/mbridge/msdk/reward/adapter/d$c;
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
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/reward/adapter/d;

.field private b:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

.field private c:Ljava/lang/String;

.field private d:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lccsancom/mbridge/msdk/videocommon/d/c;

.field private i:I

.field private j:Lccsancom/mbridge/msdk/reward/adapter/d;


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/reward/adapter/d;Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/videocommon/d/c;ILccsancom/mbridge/msdk/reward/adapter/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;",
            "Ljava/lang/String;",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lccsancom/mbridge/msdk/videocommon/d/c;",
            "I",
            "Lccsancom/mbridge/msdk/reward/adapter/d;",
            ")V"
        }
    .end annotation

    .line 600
    iput-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$c;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 601
    iput-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/d$c;->b:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 602
    iput-object p3, p0, Lccsancom/mbridge/msdk/reward/adapter/d$c;->c:Ljava/lang/String;

    .line 603
    iput-object p4, p0, Lccsancom/mbridge/msdk/reward/adapter/d$c;->d:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 604
    iput-object p5, p0, Lccsancom/mbridge/msdk/reward/adapter/d$c;->e:Ljava/util/List;

    .line 605
    iput-object p6, p0, Lccsancom/mbridge/msdk/reward/adapter/d$c;->f:Ljava/lang/String;

    .line 606
    iput-object p7, p0, Lccsancom/mbridge/msdk/reward/adapter/d$c;->g:Ljava/lang/String;

    .line 607
    iput-object p8, p0, Lccsancom/mbridge/msdk/reward/adapter/d$c;->h:Lccsancom/mbridge/msdk/videocommon/d/c;

    .line 608
    iput p9, p0, Lccsancom/mbridge/msdk/reward/adapter/d$c;->i:I

    .line 609
    iput-object p10, p0, Lccsancom/mbridge/msdk/reward/adapter/d$c;->j:Lccsancom/mbridge/msdk/reward/adapter/d;

    .line 610
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 615
    :try_start_0
    new-instance v4, Lccsancom/mbridge/msdk/videocommon/a$a;

    invoke-direct {v4}, Lccsancom/mbridge/msdk/videocommon/a$a;-><init>()V

    .line 616
    new-instance v9, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-direct {v9, v0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;-><init>(Lccsanandroid/content/Context;)V

    .line 617
    invoke-virtual {v4, v9}, Lccsancom/mbridge/msdk/videocommon/a$a;->a(Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;)V

    .line 619
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/d$c;->e:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 620
    new-instance v0, Lccsancom/mbridge/msdk/video/signal/a/j;

    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/adapter/d$c;->d:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v3, p0, Lccsancom/mbridge/msdk/reward/adapter/d$c;->e:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, Lccsancom/mbridge/msdk/video/signal/a/j;-><init>(Lccsanandroid/app/Activity;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/util/List;)V

    move-object v10, v0

    goto :goto_0

    .line 622
    :cond_0
    new-instance v0, Lccsancom/mbridge/msdk/video/signal/a/j;

    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/adapter/d$c;->d:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-direct {v0, v1, v2}, Lccsancom/mbridge/msdk/video/signal/a/j;-><init>(Lccsanandroid/app/Activity;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    move-object v10, v0

    .line 624
    :goto_0
    iget v0, p0, Lccsancom/mbridge/msdk/reward/adapter/d$c;->i:I

    invoke-virtual {v10, v0}, Lccsancom/mbridge/msdk/video/signal/a/j;->a(I)V

    .line 625
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/d$c;->g:Ljava/lang/String;

    invoke-virtual {v10, v0}, Lccsancom/mbridge/msdk/video/signal/a/j;->a(Ljava/lang/String;)V

    .line 626
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/d$c;->h:Lccsancom/mbridge/msdk/videocommon/d/c;

    invoke-virtual {v10, v0}, Lccsancom/mbridge/msdk/video/signal/a/j;->a(Lccsancom/mbridge/msdk/videocommon/d/c;)V

    .line 627
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/d$c;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/adapter/d;->l(Lccsancom/mbridge/msdk/reward/adapter/d;)Z

    move-result v0

    invoke-virtual {v10, v0}, Lccsancom/mbridge/msdk/video/signal/a/j;->d(Z)V

    .line 628
    new-instance v11, Lccsancom/mbridge/msdk/reward/adapter/d$f;

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$c;->b:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/adapter/d$c;->f:Ljava/lang/String;

    iget-object v3, p0, Lccsancom/mbridge/msdk/reward/adapter/d$c;->c:Ljava/lang/String;

    iget-object v5, p0, Lccsancom/mbridge/msdk/reward/adapter/d$c;->d:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v6, p0, Lccsancom/mbridge/msdk/reward/adapter/d$c;->j:Lccsancom/mbridge/msdk/reward/adapter/d;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v8}, Lccsancom/mbridge/msdk/reward/adapter/d$f;-><init>(Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/videocommon/a$a;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsancom/mbridge/msdk/reward/adapter/d;Lccsancom/mbridge/msdk/reward/adapter/d$c;Lccsanandroid/os/Handler;)V

    .line 629
    invoke-virtual {v9, v11}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->setWebViewListener(Lccsancom/mbridge/msdk/mbsignalcommon/windvane/d;)V

    .line 630
    invoke-virtual {v9, v10}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->setObject(Ljava/lang/Object;)V

    .line 631
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/d$c;->f:Ljava/lang/String;

    invoke-virtual {v9, v0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 636
    :catchall_0
    move-exception v0

    .line 637
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RewardMVVideoAdapter"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 632
    :catch_0
    move-exception v0

    .line 633
    sget-boolean v1, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 634
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 638
    :cond_1
    :goto_1
    nop

    .line 639
    :goto_2
    return-void
.end method
