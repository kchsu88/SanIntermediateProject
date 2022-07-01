.class public Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;
.super Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;
.source "MBridgeContainerView.java"

# interfaces
.implements Lccsancom/mbridge/msdk/video/signal/e;
.implements Lccsancom/mbridge/msdk/video/signal/g;


# instance fields
.field private A:Z

.field private B:I

.field private C:Z

.field private D:I

.field private E:I

.field private F:I

.field private G:I

.field private H:I

.field private I:Ljava/lang/String;

.field private J:Lccsancom/mbridge/msdk/video/signal/factory/b;

.field private K:Z

.field private L:Z

.field private j:Lccsancom/mbridge/msdk/video/module/MBridgePlayableView;

.field private k:Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;

.field private l:Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;

.field private m:Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;

.field private n:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

.field private o:Lccsancom/mbridge/msdk/video/module/MBridgeVastEndCardView;

.field private p:Lccsancom/mbridge/msdk/video/module/MBridgeLandingPageView;

.field private q:Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview;

.field private r:Ljava/lang/String;

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1

    .line 94
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;-><init>(Lccsanandroid/content/Context;)V

    .line 53
    const/4 p1, 0x1

    iput p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->t:I

    .line 55
    iput p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->u:I

    .line 57
    iput p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->v:I

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->w:Z

    .line 61
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->x:Z

    .line 63
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->y:Z

    .line 65
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->z:Z

    .line 67
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->A:Z

    .line 71
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->C:Z

    .line 82
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->K:Z

    .line 83
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->L:Z

    .line 95
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 0

    .line 98
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 53
    const/4 p1, 0x1

    iput p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->t:I

    .line 55
    iput p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->u:I

    .line 57
    iput p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->v:I

    .line 59
    const/4 p2, 0x0

    iput-boolean p2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->w:Z

    .line 61
    iput-boolean p2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->x:Z

    .line 63
    iput-boolean p2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->y:Z

    .line 65
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->z:Z

    .line 67
    iput-boolean p2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->A:Z

    .line 71
    iput-boolean p2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->C:Z

    .line 82
    iput-boolean p2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->K:Z

    .line 83
    iput-boolean p2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->L:Z

    .line 99
    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;)Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->r:Ljava/lang/String;

    return-object p0
.end method

.method private a()V
    .locals 2

    .line 528
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMof_template_url()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/u;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 530
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->e()V

    .line 531
    return-void

    .line 534
    :cond_0
    iget v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->t:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->C:Z

    if-nez v0, :cond_1

    .line 535
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->b()V

    goto :goto_0

    .line 537
    :cond_1
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->e()V

    .line 539
    :goto_0
    return-void
.end method

.method private a(Lccsanandroid/view/View;)V
    .locals 2

    .line 506
    if-eqz p1, :cond_0

    .line 507
    :try_start_0
    invoke-virtual {p1}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/ViewGroup;

    .line 508
    if-eqz v0, :cond_0

    .line 509
    invoke-virtual {v0, p1}, Lccsanandroid/view/ViewGroup;->removeView(Lccsanandroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 512
    :catchall_0
    move-exception p1

    .line 513
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MBridgeBaseView"

    invoke-static {v1, v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 514
    :cond_0
    :goto_0
    nop

    .line 515
    :goto_1
    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;Lccsancom/mbridge/msdk/video/signal/factory/b;Ljava/lang/Integer;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->a(Lccsancom/mbridge/msdk/video/signal/factory/b;Ljava/lang/Integer;)V

    return-void
.end method

.method private a(Lccsancom/mbridge/msdk/video/signal/factory/b;Ljava/lang/Integer;)V
    .locals 7

    .line 688
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->J:Lccsancom/mbridge/msdk/video/signal/factory/b;

    .line 689
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_9

    .line 690
    if-nez p2, :cond_0

    .line 691
    iget-object p2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideo_end_type()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 693
    :cond_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->isLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 694
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->h()V

    .line 696
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    packed-switch p2, :pswitch_data_0

    .line 702
    :pswitch_0
    iget p2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->t:I

    const/4 v0, 0x2

    if-ne p2, v0, :cond_6

    .line 703
    iget-object p2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz p2, :cond_4

    iget-object p2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMof_template_url()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lccsancom/mbridge/msdk/foundation/tools/u;->f(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 704
    return-void

    .line 744
    :pswitch_1
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->p:Lccsancom/mbridge/msdk/video/module/MBridgeLandingPageView;

    if-nez p1, :cond_2

    .line 745
    new-instance p1, Lccsancom/mbridge/msdk/video/module/MBridgeLandingPageView;

    iget-object p2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->a:Lccsanandroid/content/Context;

    invoke-direct {p1, p2}, Lccsancom/mbridge/msdk/video/module/MBridgeLandingPageView;-><init>(Lccsanandroid/content/Context;)V

    iput-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->p:Lccsancom/mbridge/msdk/video/module/MBridgeLandingPageView;

    .line 747
    :cond_2
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->p:Lccsancom/mbridge/msdk/video/module/MBridgeLandingPageView;

    iget-object p2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/video/module/MBridgeLandingPageView;->setCampaign(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 748
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->p:Lccsancom/mbridge/msdk/video/module/MBridgeLandingPageView;

    new-instance p2, Lccsancom/mbridge/msdk/video/module/a/a/i;

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->e:Lccsancom/mbridge/msdk/video/module/a/a;

    invoke-direct {p2, v0}, Lccsancom/mbridge/msdk/video/module/a/a/i;-><init>(Lccsancom/mbridge/msdk/video/module/a/a;)V

    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/video/module/MBridgeLandingPageView;->setNotifyListener(Lccsancom/mbridge/msdk/video/module/a/a;)V

    .line 749
    goto/16 :goto_1

    .line 736
    :pswitch_2
    iget-object p2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->o:Lccsancom/mbridge/msdk/video/module/MBridgeVastEndCardView;

    if-nez p2, :cond_3

    .line 737
    new-instance p2, Lccsancom/mbridge/msdk/video/module/MBridgeVastEndCardView;

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->a:Lccsanandroid/content/Context;

    invoke-direct {p2, v0}, Lccsancom/mbridge/msdk/video/module/MBridgeVastEndCardView;-><init>(Lccsanandroid/content/Context;)V

    iput-object p2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->o:Lccsancom/mbridge/msdk/video/module/MBridgeVastEndCardView;

    .line 739
    :cond_3
    iget-object p2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->o:Lccsancom/mbridge/msdk/video/module/MBridgeVastEndCardView;

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p2, v0}, Lccsancom/mbridge/msdk/video/module/MBridgeVastEndCardView;->setCampaign(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 740
    iget-object p2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->o:Lccsancom/mbridge/msdk/video/module/MBridgeVastEndCardView;

    new-instance v0, Lccsancom/mbridge/msdk/video/module/a/a/l;

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->e:Lccsancom/mbridge/msdk/video/module/a/a;

    invoke-direct {v0, v1}, Lccsancom/mbridge/msdk/video/module/a/a/l;-><init>(Lccsancom/mbridge/msdk/video/module/a/a;)V

    invoke-virtual {p2, v0}, Lccsancom/mbridge/msdk/video/module/MBridgeVastEndCardView;->setNotifyListener(Lccsancom/mbridge/msdk/video/module/a/a;)V

    .line 741
    iget-object p2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->o:Lccsancom/mbridge/msdk/video/module/MBridgeVastEndCardView;

    invoke-virtual {p2, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeVastEndCardView;->preLoadData(Lccsancom/mbridge/msdk/video/signal/factory/b;)V

    .line 742
    goto/16 :goto_1

    .line 698
    :pswitch_3
    goto/16 :goto_1

    .line 706
    :cond_4
    iget-object p2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->n:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    if-nez p2, :cond_5

    .line 707
    new-instance p2, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->a:Lccsanandroid/content/Context;

    invoke-direct {p2, v0}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;-><init>(Lccsanandroid/content/Context;)V

    iput-object p2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->n:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    .line 709
    :cond_5
    iget-object p2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->n:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p2, v0}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->setCampaign(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 710
    iget-object p2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->n:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    iget v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->u:I

    invoke-virtual {p2, v0}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->setCloseDelayShowTime(I)V

    .line 711
    iget-object p2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->n:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    new-instance v0, Lccsancom/mbridge/msdk/video/module/a/a/i;

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->e:Lccsancom/mbridge/msdk/video/module/a/a;

    invoke-direct {v0, v1}, Lccsancom/mbridge/msdk/video/module/a/a/i;-><init>(Lccsancom/mbridge/msdk/video/module/a/a;)V

    invoke-virtual {p2, v0}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->setNotifyListener(Lccsancom/mbridge/msdk/video/module/a/a;)V

    .line 712
    iget-object p2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->n:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->r:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->setUnitId(Ljava/lang/String;)V

    .line 713
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->n:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->I:Ljava/lang/String;

    iget v3, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->D:I

    iget v4, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->E:I

    iget v5, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->F:I

    iget v6, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->G:I

    invoke-virtual/range {v1 .. v6}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->setNotchValue(Ljava/lang/String;IIII)V

    .line 714
    iget-object p2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->n:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    invoke-virtual {p2, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->preLoadData(Lccsancom/mbridge/msdk/video/signal/factory/b;)V

    .line 715
    iget-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->y:Z

    if-nez p1, :cond_9

    .line 716
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->n:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->addView(Lccsanandroid/view/View;)V

    goto/16 :goto_1

    .line 719
    :cond_6
    iget-object p2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->m:Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;

    if-nez p2, :cond_8

    .line 720
    iget-object p2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz p2, :cond_7

    iget-object p2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMof_template_url()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_7

    iget-object p2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMof_template_url()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lccsancom/mbridge/msdk/foundation/tools/u;->f(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 721
    new-instance p2, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->a:Lccsanandroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p2, v0, v1, v2}, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;Z)V

    iput-object p2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->m:Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;

    .line 722
    invoke-static {}, Lccsancom/mbridge/msdk/video/dynview/b/a;->a()Lccsancom/mbridge/msdk/video/dynview/b/a;

    move-result-object p2

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->m:Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    new-instance v2, Lccsancom/mbridge/msdk/video/module/a/a/i;

    iget-object v3, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->e:Lccsancom/mbridge/msdk/video/module/a/a;

    invoke-direct {v2, v3}, Lccsancom/mbridge/msdk/video/module/a/a/i;-><init>(Lccsancom/mbridge/msdk/video/module/a/a;)V

    invoke-virtual {p2, v0, v1, v2}, Lccsancom/mbridge/msdk/video/dynview/b/a;->a(Lccsanandroid/view/View;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsancom/mbridge/msdk/video/module/a/a;)V

    goto :goto_0

    .line 724
    :cond_7
    new-instance p2, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->a:Lccsanandroid/content/Context;

    invoke-direct {p2, v0}, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;-><init>(Lccsanandroid/content/Context;)V

    iput-object p2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->m:Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;

    .line 727
    :cond_8
    :goto_0
    iget-object p2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->m:Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p2, v0}, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->setCampaign(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 728
    iget-object p2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->m:Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->r:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->setUnitId(Ljava/lang/String;)V

    .line 729
    iget-object p2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->m:Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;

    iget v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->u:I

    invoke-virtual {p2, v0}, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->setCloseBtnDelay(I)V

    .line 730
    iget-object p2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->m:Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;

    new-instance v0, Lccsancom/mbridge/msdk/video/module/a/a/i;

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->e:Lccsancom/mbridge/msdk/video/module/a/a;

    invoke-direct {v0, v1}, Lccsancom/mbridge/msdk/video/module/a/a/i;-><init>(Lccsancom/mbridge/msdk/video/module/a/a;)V

    invoke-virtual {p2, v0}, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->setNotifyListener(Lccsancom/mbridge/msdk/video/module/a/a;)V

    .line 731
    iget-object p2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->m:Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;

    invoke-virtual {p2, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->preLoadData(Lccsancom/mbridge/msdk/video/signal/factory/b;)V

    .line 732
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->m:Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;

    iget p2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->D:I

    iget v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->E:I

    iget v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->F:I

    iget v2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->G:I

    invoke-virtual {p1, p2, v0, v1, v2}, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->setNotchPadding(IIII)V

    .line 754
    :cond_9
    :goto_1
    :pswitch_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method private b()V
    .locals 7

    .line 560
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->n:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    if-nez v0, :cond_0

    .line 561
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->J:Lccsancom/mbridge/msdk/video/signal/factory/b;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->a(Lccsancom/mbridge/msdk/video/signal/factory/b;Ljava/lang/Integer;)V

    .line 563
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->n:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->isLoadSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 564
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->C:Z

    .line 565
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->n:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->addView(Lccsanandroid/view/View;)V

    .line 566
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->webviewshow()V

    .line 567
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/content/res/Resources;->getConfiguration()Lccsanandroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->onConfigurationChanged(Lccsanandroid/content/res/Configuration;)V

    .line 568
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->n:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->excuteTask()V

    .line 569
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->n:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->I:Ljava/lang/String;

    iget v3, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->D:I

    iget v4, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->E:I

    iget v5, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->F:I

    iget v6, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->G:I

    invoke-virtual/range {v1 .. v6}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->setNotchValue(Ljava/lang/String;IIII)V

    .line 570
    new-instance v0, Lccsancom/mbridge/msdk/foundation/entity/m;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/foundation/entity/m;-><init>()V

    .line 571
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/entity/m;->k(Ljava/lang/String;)V

    .line 572
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/entity/m;->l(Ljava/lang/String;)V

    .line 573
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/entity/m;->n(Ljava/lang/String;)V

    .line 574
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isMraid()Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lccsancom/mbridge/msdk/foundation/entity/m;->a:I

    goto :goto_0

    :cond_1
    sget v1, Lccsancom/mbridge/msdk/foundation/entity/m;->b:I

    :goto_0
    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/entity/m;->a(I)V

    .line 575
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->a:Lccsanandroid/content/Context;

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->r:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lccsancom/mbridge/msdk/foundation/same/report/b;->a(Lccsancom/mbridge/msdk/foundation/entity/m;Lccsanandroid/content/Context;Ljava/lang/String;)V

    .line 576
    goto :goto_1

    .line 577
    :cond_2
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->e()V

    .line 578
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->n:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    if-eqz v0, :cond_3

    .line 580
    const/4 v2, 0x3

    const-string v3, "timeout"

    invoke-virtual {v0, v3, v2}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->reportRenderResult(Ljava/lang/String;I)V

    .line 581
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->n:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->setError(Z)V

    .line 585
    :cond_3
    :goto_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->n:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    if-eqz v0, :cond_4

    .line 586
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->setUnitId(Ljava/lang/String;)V

    .line 588
    :cond_4
    return-void
.end method

.method private b(I)V
    .locals 2

    .line 783
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMof_template_url()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/u;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 784
    const/4 p1, -0x3

    .line 786
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 804
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->k:Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;

    if-nez p1, :cond_2

    .line 805
    new-instance p1, Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->a:Lccsanandroid/content/Context;

    invoke-direct {p1, v0}, Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;-><init>(Lccsanandroid/content/Context;)V

    iput-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->k:Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;

    goto :goto_0

    .line 790
    :pswitch_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideo_end_type()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 791
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->l:Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;

    if-nez p1, :cond_1

    .line 792
    new-instance p1, Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->a:Lccsanandroid/content/Context;

    invoke-direct {p1, v0}, Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;-><init>(Lccsanandroid/content/Context;)V

    iput-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->l:Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;

    .line 794
    :cond_1
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->l:Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;->setCampaign(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 795
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->l:Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;

    new-instance v0, Lccsancom/mbridge/msdk/video/module/a/a/g;

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->e:Lccsancom/mbridge/msdk/video/module/a/a;

    invoke-direct {v0, p1, v1}, Lccsancom/mbridge/msdk/video/module/a/a/g;-><init>(Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;Lccsancom/mbridge/msdk/video/module/a/a;)V

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;->setNotifyListener(Lccsancom/mbridge/msdk/video/module/a/a;)V

    .line 796
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->l:Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->J:Lccsancom/mbridge/msdk/video/signal/factory/b;

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;->preLoadData(Lccsancom/mbridge/msdk/video/signal/factory/b;)V

    .line 797
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->setMatchParent()V

    .line 798
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->f()V

    .line 799
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->h()V

    goto :goto_1

    .line 788
    :pswitch_1
    goto :goto_1

    .line 807
    :cond_2
    :goto_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->k:Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;->setCampaign(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 808
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->k:Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->r:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;->setUnitId(Ljava/lang/String;)V

    .line 809
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->k:Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;

    new-instance v0, Lccsancom/mbridge/msdk/video/module/a/a/i;

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->e:Lccsancom/mbridge/msdk/video/module/a/a;

    invoke-direct {v0, v1}, Lccsancom/mbridge/msdk/video/module/a/a/i;-><init>(Lccsancom/mbridge/msdk/video/module/a/a;)V

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;->setNotifyListener(Lccsancom/mbridge/msdk/video/module/a/a;)V

    .line 810
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->k:Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->J:Lccsancom/mbridge/msdk/video/signal/factory/b;

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;->preLoadData(Lccsancom/mbridge/msdk/video/signal/factory/b;)V

    .line 813
    :cond_3
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private e()V
    .locals 3

    .line 591
    const/4 v0, 0x1

    iput v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->t:I

    .line 592
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->m:Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;

    if-nez v1, :cond_0

    .line 593
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->J:Lccsancom/mbridge/msdk/video/signal/factory/b;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->a(Lccsancom/mbridge/msdk/video/signal/factory/b;Ljava/lang/Integer;)V

    .line 595
    :cond_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->m:Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;

    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->addView(Lccsanandroid/view/View;)V

    .line 596
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Lccsanandroid/content/res/Resources;->getConfiguration()Lccsanandroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->onConfigurationChanged(Lccsanandroid/content/res/Configuration;)V

    .line 597
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->m:Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->notifyShowListener()V

    .line 598
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->L:Z

    .line 599
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->bringToFront()V

    .line 600
    return-void
.end method

.method private f()V
    .locals 3

    .line 629
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->l:Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;

    if-nez v0, :cond_0

    .line 630
    const/4 v0, -0x2

    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->b(I)V

    .line 632
    :cond_0
    new-instance v0, Lccsanandroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lccsanandroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 633
    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Lccsanandroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 634
    iget-boolean v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->y:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->z:Z

    if-eqz v1, :cond_1

    .line 635
    const/4 v1, 0x0

    iput-boolean v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->z:Z

    .line 636
    const/4 v1, 0x1

    iput v1, v0, Lccsanandroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 637
    iput v1, v0, Lccsanandroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 639
    :cond_1
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->l:Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;

    invoke-virtual {p0, v1, v0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->addView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 640
    return-void
.end method

.method private g()V
    .locals 2

    .line 679
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->q:Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview;

    if-nez v0, :cond_0

    .line 680
    new-instance v0, Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview;

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->a:Lccsanandroid/content/Context;

    invoke-direct {v0, v1}, Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview;-><init>(Lccsanandroid/content/Context;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->q:Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview;

    .line 681
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview;->setUnitId(Ljava/lang/String;)V

    .line 682
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->q:Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview;

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview;->setCampaign(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 684
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->q:Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview;

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->J:Lccsancom/mbridge/msdk/video/signal/factory/b;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview;->preLoadData(Lccsancom/mbridge/msdk/video/signal/factory/b;)V

    .line 685
    return-void
.end method

.method private h()V
    .locals 5

    .line 767
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->x:Z

    .line 768
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->L:Z

    .line 769
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lccsanandroid/view/ViewGroup;

    .line 770
    if-eqz v1, :cond_1

    .line 771
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Lccsanandroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 772
    invoke-virtual {v1, v2}, Lccsanandroid/view/ViewGroup;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v3

    .line 773
    instance-of v4, v3, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    if-nez v4, :cond_0

    .line 774
    invoke-virtual {v1, v3}, Lccsanandroid/view/ViewGroup;->bringChildToFront(Lccsanandroid/view/View;)V

    goto :goto_1

    .line 776
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 771
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 780
    :cond_1
    return-void
.end method


# virtual methods
.method public addView(Lccsanandroid/view/View;)V
    .locals 1

    .line 433
    if-eqz p1, :cond_0

    .line 434
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->a(Lccsanandroid/view/View;)V

    .line 435
    invoke-super {p0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;->addView(Lccsanandroid/view/View;)V

    goto :goto_0

    .line 437
    :cond_0
    const-string p1, "MBridgeBaseView"

    const-string v0, "view is null"

    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    :goto_0
    return-void
.end method

.method public addView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 443
    if-eqz p1, :cond_0

    .line 444
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->a(Lccsanandroid/view/View;)V

    .line 445
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;->addView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 447
    :cond_0
    const-string p1, "MBridgeBaseView"

    const-string p2, "view is null"

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    :goto_0
    return-void
.end method

.method public canBackPress()Z
    .locals 2

    .line 452
    nop

    .line 453
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->m:Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 454
    goto :goto_0

    .line 455
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->n:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    if-eqz v0, :cond_1

    .line 456
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->canBackPress()Z

    move-result v1

    goto :goto_0

    .line 457
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->p:Lccsancom/mbridge/msdk/video/module/MBridgeLandingPageView;

    if-eqz v0, :cond_2

    .line 458
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeLandingPageView;->canBackPress()Z

    move-result v1

    goto :goto_0

    .line 459
    :cond_2
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->j:Lccsancom/mbridge/msdk/video/module/MBridgePlayableView;

    if-eqz v0, :cond_3

    .line 460
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/module/MBridgePlayableView;->canBackPress()Z

    move-result v1

    .line 462
    :cond_3
    :goto_0
    return v1
.end method

.method public configurationChanged(III)V
    .locals 0

    .line 400
    iget-object p3, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->l:Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;->getVisibility()I

    move-result p3

    if-nez p3, :cond_0

    .line 401
    iget-object p3, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->l:Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;

    invoke-virtual {p3, p1, p2}, Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;->resizeMiniCard(II)V

    .line 403
    :cond_0
    return-void
.end method

.method public defaultShow()V
    .locals 0

    .line 428
    invoke-super {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;->defaultShow()V

    .line 429
    return-void
.end method

.method public endCardShowing()Z
    .locals 1

    .line 305
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->w:Z

    return v0
.end method

.method public endcardIsPlayable()Z
    .locals 1

    .line 466
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->n:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->isPlayable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getH5EndCardView()Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;
    .locals 1

    .line 902
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->n:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    if-nez v0, :cond_0

    .line 903
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->j:Lccsancom/mbridge/msdk/video/module/MBridgePlayableView;

    return-object v0

    .line 904
    :cond_0
    return-object v0
.end method

.method public getShowingTransparent()Z
    .locals 1

    .line 474
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->y:Z

    return v0
.end method

.method public getUnitID()Ljava/lang/String;
    .locals 1

    .line 478
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->r:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoInteractiveType()I
    .locals 1

    .line 493
    iget v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->s:I

    return v0
.end method

.method public getVideoSkipTime()I
    .locals 1

    .line 86
    iget v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->B:I

    return v0
.end method

.method public handlerPlayableException(Ljava/lang/String;)V
    .locals 1

    .line 355
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->n:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    if-eqz v0, :cond_0

    .line 356
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->handlerPlayableException(Ljava/lang/String;)V

    .line 357
    iget-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->C:Z

    if-eqz p1, :cond_1

    .line 361
    :cond_0
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->a()V

    .line 363
    :cond_1
    return-void
.end method

.method public hideAlertWebview()V
    .locals 3

    .line 909
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->isLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 910
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->K:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->L:Z

    if-nez v0, :cond_0

    .line 911
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->h()V

    .line 912
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->K:Z

    .line 915
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->q:Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 916
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->q:Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview;

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->removeView(Lccsanandroid/view/View;)V

    .line 917
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->k:Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 918
    nop

    .line 8518
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->setWrapContent()V

    .line 8519
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 8520
    instance-of v1, v0, Lccsanandroid/widget/RelativeLayout$LayoutParams;

    if-eqz v1, :cond_1

    .line 8521
    check-cast v0, Lccsanandroid/widget/RelativeLayout$LayoutParams;

    .line 8522
    const/16 v1, 0xc

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lccsanandroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 922
    :cond_1
    return-void
.end method

.method public init(Lccsanandroid/content/Context;)V
    .locals 0

    .line 103
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->setVisibility(I)V

    .line 104
    return-void
.end method

.method public install(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 2

    .line 412
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->e:Lccsancom/mbridge/msdk/video/module/a/a;

    const/16 v1, 0x69

    invoke-interface {v0, v1, p1}, Lccsancom/mbridge/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 413
    return-void
.end method

.method public isLast()Z
    .locals 2

    .line 757
    nop

    .line 758
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/ViewGroup;

    .line 759
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 760
    invoke-virtual {v0, p0}, Lccsanandroid/view/ViewGroup;->indexOfChild(Lccsanandroid/view/View;)I

    move-result v0

    .line 761
    if-nez v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x1

    .line 763
    :cond_0
    return v1
.end method

.method public ivRewardAdsWithoutVideo(Ljava/lang/String;)V
    .locals 2

    .line 926
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->e:Lccsancom/mbridge/msdk/video/module/a/a;

    const/16 v1, 0x67

    invoke-interface {v0, v1, p1}, Lccsancom/mbridge/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 927
    return-void
.end method

.method public miniCardLoaded()Z
    .locals 1

    .line 315
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->l:Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;->isLoadSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public miniCardShowing()Z
    .locals 1

    .line 310
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->x:Z

    return v0
.end method

.method public notifyCloseBtn(I)V
    .locals 1

    .line 330
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->j:Lccsancom/mbridge/msdk/video/module/MBridgePlayableView;

    if-eqz v0, :cond_0

    .line 331
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgePlayableView;->notifyCloseBtn(I)V

    .line 333
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->n:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    if-eqz v0, :cond_1

    .line 334
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->notifyCloseBtn(I)V

    .line 336
    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Lccsanandroid/content/res/Configuration;)V
    .locals 5

    .line 108
    invoke-super {p0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;->onConfigurationChanged(Lccsanandroid/content/res/Configuration;)V

    .line 109
    const/4 v0, 0x7

    new-array v1, v0, [Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->j:Lccsancom/mbridge/msdk/video/module/MBridgePlayableView;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->k:Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->l:Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;

    const/4 v4, 0x2

    aput-object v2, v1, v4

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->m:Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;

    const/4 v4, 0x3

    aput-object v2, v1, v4

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->n:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    const/4 v4, 0x4

    aput-object v2, v1, v4

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->o:Lccsancom/mbridge/msdk/video/module/MBridgeVastEndCardView;

    const/4 v4, 0x5

    aput-object v2, v1, v4

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->p:Lccsancom/mbridge/msdk/video/module/MBridgeLandingPageView;

    const/4 v4, 0x6

    aput-object v2, v1, v4

    .line 1828
    nop

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v2, v1, v3

    .line 1829
    if-eqz v2, :cond_0

    instance-of v4, v2, Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;

    if-eqz v4, :cond_0

    .line 1830
    invoke-virtual {v2, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;->onSelfConfigurationChanged(Lccsanandroid/content/res/Configuration;)V

    goto :goto_1

    .line 1832
    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->isLast()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1833
    invoke-virtual {v2, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;->onSelfConfigurationChanged(Lccsanandroid/content/res/Configuration;)V

    .line 1828
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 110
    :cond_2
    return-void
.end method

.method public onEndcardBackPress()V
    .locals 3

    .line 875
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->m:Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;

    const-string v1, ""

    if-nez v0, :cond_3

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->o:Lccsancom/mbridge/msdk/video/module/MBridgeVastEndCardView;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 879
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->p:Lccsancom/mbridge/msdk/video/module/MBridgeLandingPageView;

    if-eqz v0, :cond_1

    .line 880
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->e:Lccsancom/mbridge/msdk/video/module/a/a;

    const/16 v2, 0x67

    invoke-interface {v0, v2, v1}, Lccsancom/mbridge/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 881
    return-void

    .line 883
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->n:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    if-eqz v0, :cond_2

    .line 884
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->onBackPress()V

    .line 886
    :cond_2
    return-void

    .line 876
    :cond_3
    :goto_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->e:Lccsancom/mbridge/msdk/video/module/a/a;

    const/16 v2, 0x68

    invoke-interface {v0, v2, v1}, Lccsancom/mbridge/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 877
    return-void
.end method

.method public onMiniEndcardBackPress()V
    .locals 3

    .line 869
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->x:Z

    if-eqz v0, :cond_0

    .line 870
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->e:Lccsancom/mbridge/msdk/video/module/a/a;

    const/16 v1, 0x6b

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lccsancom/mbridge/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 872
    :cond_0
    return-void
.end method

.method public onPlayableBackPress()V
    .locals 1

    .line 863
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->j:Lccsancom/mbridge/msdk/video/module/MBridgePlayableView;

    if-eqz v0, :cond_0

    .line 864
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/module/MBridgePlayableView;->onBackPress()V

    .line 866
    :cond_0
    return-void
.end method

.method public orientation(Lccsanandroid/content/res/Configuration;)V
    .locals 4

    .line 417
    const/4 p1, 0x4

    new-array v0, p1, [Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->j:Lccsancom/mbridge/msdk/video/module/MBridgePlayableView;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->l:Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->n:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->q:Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview;

    const/4 v3, 0x3

    aput-object v1, v0, v3

    .line 6848
    nop

    :goto_0
    if-ge v2, p1, :cond_1

    aget-object v1, v0, v2

    .line 6849
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 6850
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Lccsanandroid/content/res/Resources;->getConfiguration()Lccsanandroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v1, v3}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->orientation(Lccsanandroid/content/res/Configuration;)V

    .line 6848
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 418
    :cond_1
    return-void
.end method

.method public preLoadData(Lccsancom/mbridge/msdk/video/signal/factory/b;)V
    .locals 4

    .line 114
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->J:Lccsancom/mbridge/msdk/video/signal/factory/b;

    .line 115
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_2

    .line 116
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getPlayable_ads_without_video()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 117
    nop

    .line 2653
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->j:Lccsancom/mbridge/msdk/video/module/MBridgePlayableView;

    if-nez v0, :cond_0

    .line 2654
    new-instance v0, Lccsancom/mbridge/msdk/video/module/MBridgePlayableView;

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->a:Lccsanandroid/content/Context;

    invoke-direct {v0, v1}, Lccsancom/mbridge/msdk/video/module/MBridgePlayableView;-><init>(Lccsanandroid/content/Context;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->j:Lccsancom/mbridge/msdk/video/module/MBridgePlayableView;

    .line 2656
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->j:Lccsancom/mbridge/msdk/video/module/MBridgePlayableView;

    iget v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->u:I

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/video/module/MBridgePlayableView;->setCloseDelayShowTime(I)V

    .line 2657
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->j:Lccsancom/mbridge/msdk/video/module/MBridgePlayableView;

    iget v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->v:I

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/video/module/MBridgePlayableView;->setPlayCloseBtnTm(I)V

    .line 2658
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->j:Lccsancom/mbridge/msdk/video/module/MBridgePlayableView;

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/video/module/MBridgePlayableView;->setCampaign(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 2659
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->j:Lccsancom/mbridge/msdk/video/module/MBridgePlayableView;

    new-instance v1, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView$2;

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->e:Lccsancom/mbridge/msdk/video/module/a/a;

    invoke-direct {v1, p0, v2}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView$2;-><init>(Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;Lccsancom/mbridge/msdk/video/module/a/a;)V

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/video/module/MBridgePlayableView;->setNotifyListener(Lccsancom/mbridge/msdk/video/module/a/a;)V

    .line 2675
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->j:Lccsancom/mbridge/msdk/video/module/MBridgePlayableView;

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgePlayableView;->preLoadData(Lccsancom/mbridge/msdk/video/signal/factory/b;)V

    .line 117
    goto :goto_0

    .line 119
    :cond_1
    iget v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->s:I

    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->b(I)V

    .line 121
    new-instance v0, Lccsanandroid/os/Handler;

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    new-instance v1, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView$1;

    invoke-direct {v1, p0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView$1;-><init>(Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;Lccsancom/mbridge/msdk/video/signal/factory/b;)V

    .line 126
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->getVideoSkipTime()I

    move-result p1

    int-to-long v2, p1

    .line 121
    invoke-virtual {v0, v1, v2, v3}, Lccsanandroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 128
    :goto_0
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->g()V

    .line 130
    :cond_2
    return-void
.end method

.method public readyStatus(I)V
    .locals 1

    .line 347
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->n:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    if-eqz v0, :cond_0

    .line 348
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->readyStatus(I)V

    .line 351
    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .line 889
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->n:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    if-eqz v0, :cond_0

    .line 890
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->release()V

    .line 891
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->n:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    .line 893
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->j:Lccsancom/mbridge/msdk/video/module/MBridgePlayableView;

    if-eqz v0, :cond_1

    .line 894
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/module/MBridgePlayableView;->release()V

    .line 896
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->p:Lccsancom/mbridge/msdk/video/module/MBridgeLandingPageView;

    if-eqz v0, :cond_2

    .line 897
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeLandingPageView;->release()V

    .line 899
    :cond_2
    return-void
.end method

.method public resizeMiniCard(III)V
    .locals 1

    .line 387
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->l:Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;

    if-eqz v0, :cond_0

    .line 388
    invoke-virtual {v0, p1, p2}, Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;->resizeMiniCard(II)V

    .line 389
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->l:Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;

    invoke-virtual {p1, p3}, Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;->setRadius(I)V

    .line 390
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->removeAllViews()V

    .line 391
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->setMatchParent()V

    .line 392
    const/4 p1, 0x1

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->L:Z

    .line 393
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->bringToFront()V

    .line 394
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->f()V

    .line 396
    :cond_0
    return-void
.end method

.method public setCloseDelayTime(I)V
    .locals 0

    .line 497
    iput p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->u:I

    .line 498
    return-void
.end method

.method public setEndscreenType(I)V
    .locals 0

    .line 489
    iput p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->t:I

    .line 490
    return-void
.end method

.method public setJSFactory(Lccsancom/mbridge/msdk/video/signal/factory/b;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->J:Lccsancom/mbridge/msdk/video/signal/factory/b;

    .line 80
    return-void
.end method

.method public setMBridgeClickMiniCardViewTransparent()V
    .locals 2

    .line 856
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->l:Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;

    if-eqz v0, :cond_0

    .line 857
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;->setMBridgeClickMiniCardViewTransparent()V

    .line 858
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->l:Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;->setMBridgeClickMiniCardViewClickable(Z)V

    .line 860
    :cond_0
    return-void
.end method

.method public setNotchPadding(IIIII)V
    .locals 10

    .line 930
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NOTCH ContainerView "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v1, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x4

    aput-object v2, v1, v4

    const-string v2, "%1s-%2s-%3s-%4s-%5s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MBridgeBaseView"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    iput p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->H:I

    .line 933
    iput p2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->D:I

    .line 934
    iput p3, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->E:I

    .line 935
    iput p4, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->F:I

    .line 936
    iput p5, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->G:I

    .line 938
    invoke-static {p1, p2, p3, p4, p5}, Lccsancom/mbridge/msdk/foundation/tools/h;->a(IIIII)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->I:Ljava/lang/String;

    .line 940
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->m:Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;

    if-eqz p1, :cond_0

    .line 941
    invoke-virtual {p1, p2, p3, p4, p5}, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->setNotchPadding(IIII)V

    .line 944
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->n:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->m:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    if-eqz p1, :cond_1

    .line 945
    iget-object v4, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->n:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    iget-object v5, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->I:Ljava/lang/String;

    move v6, p2

    move v7, p3

    move v8, p4

    move v9, p5

    invoke-virtual/range {v4 .. v9}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->setNotchValue(Ljava/lang/String;IIII)V

    .line 946
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object p1

    iget-object p2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->n:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    iget-object p2, p2, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->m:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    iget-object p3, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->I:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    invoke-static {p3, v3}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p3

    const-string p4, "oncutoutfetched"

    invoke-virtual {p1, p2, p4, p3}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    :cond_1
    return-void
.end method

.method public setNotifyListener(Lccsancom/mbridge/msdk/video/module/a/a;)V
    .locals 6

    .line 422
    invoke-super {p0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;->setNotifyListener(Lccsancom/mbridge/msdk/video/module/a/a;)V

    .line 423
    const/4 v0, 0x7

    new-array v1, v0, [Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->j:Lccsancom/mbridge/msdk/video/module/MBridgePlayableView;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->k:Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->l:Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;

    const/4 v4, 0x2

    aput-object v2, v1, v4

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->m:Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;

    const/4 v4, 0x3

    aput-object v2, v1, v4

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->n:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    const/4 v4, 0x4

    aput-object v2, v1, v4

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->o:Lccsancom/mbridge/msdk/video/module/MBridgeVastEndCardView;

    const/4 v4, 0x5

    aput-object v2, v1, v4

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->p:Lccsancom/mbridge/msdk/video/module/MBridgeLandingPageView;

    const/4 v4, 0x6

    aput-object v2, v1, v4

    .line 7816
    nop

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v2, v1, v3

    .line 7817
    if-eqz v2, :cond_1

    .line 7818
    instance-of v4, v2, Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;

    if-eqz v4, :cond_0

    .line 7819
    new-instance v4, Lccsancom/mbridge/msdk/video/module/a/a/g;

    iget-object v5, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->l:Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;

    invoke-direct {v4, v5, p1}, Lccsancom/mbridge/msdk/video/module/a/a/g;-><init>(Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;Lccsancom/mbridge/msdk/video/module/a/a;)V

    invoke-virtual {v2, v4}, Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;->setNotifyListener(Lccsancom/mbridge/msdk/video/module/a/a;)V

    goto :goto_1

    .line 7821
    :cond_0
    new-instance v4, Lccsancom/mbridge/msdk/video/module/a/a/i;

    invoke-direct {v4, p1}, Lccsancom/mbridge/msdk/video/module/a/a/i;-><init>(Lccsancom/mbridge/msdk/video/module/a/a;)V

    invoke-virtual {v2, v4}, Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;->setNotifyListener(Lccsancom/mbridge/msdk/video/module/a/a;)V

    .line 7816
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 424
    :cond_2
    return-void
.end method

.method public setPlayCloseBtnTm(I)V
    .locals 0

    .line 501
    iput p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->v:I

    .line 502
    return-void
.end method

.method public setShowingTransparent(Z)V
    .locals 0

    .line 470
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->y:Z

    .line 471
    return-void
.end method

.method public setUnitID(Ljava/lang/String;)V
    .locals 0

    .line 482
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->r:Ljava/lang/String;

    .line 483
    return-void
.end method

.method public setVideoInteractiveType(I)V
    .locals 0

    .line 486
    iput p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->s:I

    .line 487
    return-void
.end method

.method public setVideoSkipTime(I)V
    .locals 0

    .line 90
    iput p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->B:I

    .line 91
    return-void
.end method

.method public showAlertWebView()Z
    .locals 4

    .line 156
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->q:Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 157
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview;->isLoadSuccess()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 159
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->setMatchParent()V

    .line 160
    nop

    .line 4144
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/ViewGroup;

    .line 4145
    invoke-virtual {v0}, Lccsanandroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 4146
    invoke-virtual {v0, p0}, Lccsanandroid/view/ViewGroup;->indexOfChild(Lccsanandroid/view/View;)I

    move-result v0

    .line 4147
    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ne v0, v2, :cond_0

    .line 4148
    const/4 v0, 0x1

    goto :goto_0

    .line 4150
    :cond_0
    const/4 v0, 0x0

    .line 160
    :goto_0
    if-nez v0, :cond_1

    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->L:Z

    if-nez v0, :cond_1

    .line 161
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->removeAllViews()V

    .line 162
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->bringToFront()V

    .line 163
    iput-boolean v3, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->K:Z

    .line 165
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->l:Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 166
    return v1

    .line 168
    :cond_2
    nop

    .line 4643
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->q:Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview;

    if-nez v0, :cond_3

    .line 4644
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->g()V

    .line 4646
    :cond_3
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->q:Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 4647
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->q:Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview;

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->removeView(Lccsanandroid/view/View;)V

    .line 4649
    :cond_4
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->q:Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview;

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->addView(Lccsanandroid/view/View;)V

    .line 170
    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->setBackgroundColor(I)V

    .line 171
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->q:Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview;->webviewshow()V

    .line 172
    return v3

    .line 176
    :cond_5
    return v1
.end method

.method public showEndcard(I)V
    .locals 3

    .line 261
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 262
    const-string v0, ""

    sparse-switch p1, :sswitch_data_0

    .line 291
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->removeAllViews()V

    .line 292
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->setMatchParent()V

    .line 293
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->L:Z

    .line 294
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->bringToFront()V

    .line 295
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->a()V

    .line 296
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->e:Lccsancom/mbridge/msdk/video/module/a/a;

    const/16 v2, 0x75

    invoke-interface {p1, v2, v0}, Lccsancom/mbridge/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 285
    :sswitch_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->j:Lccsancom/mbridge/msdk/video/module/MBridgePlayableView;

    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->a(Lccsanandroid/view/View;)V

    .line 286
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->setMatchParent()V

    .line 287
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->e()V

    .line 288
    goto :goto_0

    .line 282
    :sswitch_1
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->e:Lccsancom/mbridge/msdk/video/module/a/a;

    const/16 v2, 0x6a

    invoke-interface {p1, v2, v0}, Lccsancom/mbridge/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 283
    goto :goto_0

    .line 274
    :sswitch_2
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->e:Lccsancom/mbridge/msdk/video/module/a/a;

    const/16 v2, 0x71

    invoke-interface {p1, v2, v0}, Lccsancom/mbridge/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 275
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->removeAllViews()V

    .line 276
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->setMatchParent()V

    .line 277
    nop

    .line 6552
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->p:Lccsancom/mbridge/msdk/video/module/MBridgeLandingPageView;

    if-nez p1, :cond_0

    .line 6553
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->J:Lccsancom/mbridge/msdk/video/signal/factory/b;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->a(Lccsancom/mbridge/msdk/video/signal/factory/b;Ljava/lang/Integer;)V

    .line 6555
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->p:Lccsancom/mbridge/msdk/video/module/MBridgeLandingPageView;

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->J:Lccsancom/mbridge/msdk/video/signal/factory/b;

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/video/module/MBridgeLandingPageView;->preLoadData(Lccsancom/mbridge/msdk/video/signal/factory/b;)V

    .line 6556
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->p:Lccsancom/mbridge/msdk/video/module/MBridgeLandingPageView;

    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->addView(Lccsanandroid/view/View;)V

    .line 278
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->L:Z

    .line 279
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->bringToFront()V

    .line 280
    goto :goto_0

    .line 267
    :sswitch_3
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->removeAllViews()V

    .line 268
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->setMatchParent()V

    .line 269
    nop

    .line 6542
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->o:Lccsancom/mbridge/msdk/video/module/MBridgeVastEndCardView;

    if-nez p1, :cond_1

    .line 6543
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->J:Lccsancom/mbridge/msdk/video/signal/factory/b;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->a(Lccsancom/mbridge/msdk/video/signal/factory/b;Ljava/lang/Integer;)V

    .line 6545
    :cond_1
    new-instance p1, Lccsanandroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Lccsanandroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 6546
    const/16 v2, 0xd

    invoke-virtual {p1, v2, v0}, Lccsanandroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 6547
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->o:Lccsancom/mbridge/msdk/video/module/MBridgeVastEndCardView;

    invoke-virtual {p0, v0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->addView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 6548
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->o:Lccsancom/mbridge/msdk/video/module/MBridgeVastEndCardView;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/video/module/MBridgeVastEndCardView;->notifyShowListener()V

    .line 270
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->L:Z

    .line 271
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->bringToFront()V

    .line 272
    goto :goto_0

    .line 264
    :sswitch_4
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->e:Lccsancom/mbridge/msdk/video/module/a/a;

    const/16 v2, 0x68

    invoke-interface {p1, v2, v0}, Lccsancom/mbridge/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 300
    :cond_2
    :goto_0
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->w:Z

    .line 301
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x3 -> :sswitch_3
        0x4 -> :sswitch_2
        0x5 -> :sswitch_1
        0x64 -> :sswitch_0
    .end sparse-switch
.end method

.method public showMiniCard(IIIII)V
    .locals 1

    .line 367
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->l:Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;

    if-eqz v0, :cond_0

    .line 368
    invoke-virtual {v0, p1, p2, p3, p4}, Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;->setMiniCardLocation(IIII)V

    .line 369
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->l:Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;

    invoke-virtual {p1, p5}, Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;->setRadius(I)V

    .line 370
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->l:Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;->setCloseVisible(I)V

    .line 371
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->l:Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;->setClickable(Z)V

    .line 372
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->removeAllViews()V

    .line 373
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->setMatchParent()V

    .line 374
    const/4 p1, 0x1

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->L:Z

    .line 375
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->bringToFront()V

    .line 376
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->f()V

    .line 377
    iget-boolean p2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->A:Z

    if-nez p2, :cond_0

    .line 378
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->A:Z

    .line 379
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->e:Lccsancom/mbridge/msdk/video/module/a/a;

    const/16 p2, 0x6d

    const-string p3, ""

    invoke-interface {p1, p2, p3}, Lccsancom/mbridge/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 380
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->e:Lccsancom/mbridge/msdk/video/module/a/a;

    const/16 p2, 0x75

    invoke-interface {p1, p2, p3}, Lccsancom/mbridge/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 383
    :cond_0
    return-void
.end method

.method public showPlayableView()V
    .locals 2

    .line 134
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_2

    .line 135
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->removeAllViews()V

    .line 136
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->setMatchParent()V

    .line 137
    nop

    .line 3603
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->j:Lccsancom/mbridge/msdk/video/module/MBridgePlayableView;

    if-nez v0, :cond_0

    .line 3604
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->J:Lccsancom/mbridge/msdk/video/signal/factory/b;

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->preLoadData(Lccsancom/mbridge/msdk/video/signal/factory/b;)V

    .line 3606
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->j:Lccsancom/mbridge/msdk/video/module/MBridgePlayableView;

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->addView(Lccsanandroid/view/View;)V

    .line 3607
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->j:Lccsancom/mbridge/msdk/video/module/MBridgePlayableView;

    if-eqz v0, :cond_1

    .line 3608
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/video/module/MBridgePlayableView;->setUnitId(Ljava/lang/String;)V

    .line 3609
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isMraid()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getPlayable_ads_without_video()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 3610
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->j:Lccsancom/mbridge/msdk/video/module/MBridgePlayableView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/video/module/MBridgePlayableView;->setCloseVisible(I)V

    .line 138
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->L:Z

    .line 139
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->bringToFront()V

    .line 141
    :cond_2
    return-void
.end method

.method public showVideoClickView(I)V
    .locals 3

    .line 181
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_10

    .line 182
    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    .line 214
    :pswitch_1
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->k:Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 215
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->k:Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;

    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->removeView(Lccsanandroid/view/View;)V

    .line 217
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->q:Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 218
    return-void

    .line 220
    :cond_1
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->l:Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_4

    .line 222
    :cond_2
    :try_start_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getPlayable_ads_without_video()I

    move-result p1

    if-ne p1, v0, :cond_3

    .line 223
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->setMatchParent()V

    .line 224
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->f()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    :cond_3
    goto :goto_0

    .line 226
    :catch_0
    move-exception p1

    .line 227
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 230
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->miniCardLoaded()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 231
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->n:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 232
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->n:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->removeView(Lccsanandroid/view/View;)V

    .line 235
    :cond_5
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->e:Lccsancom/mbridge/msdk/video/module/a/a;

    const/16 v1, 0x70

    const-string v2, ""

    invoke-interface {p1, v1, v2}, Lccsancom/mbridge/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 236
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isHasReportAdTrackPause()Z

    move-result p1

    if-nez p1, :cond_6

    .line 237
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setHasReportAdTrackPause(Z)V

    .line 238
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->a:Lccsanandroid/content/Context;

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-static {p1, v1}, Lccsancom/mbridge/msdk/video/module/b/a;->f(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 240
    :cond_6
    iget-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->y:Z

    if-eqz p1, :cond_7

    .line 241
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->e:Lccsancom/mbridge/msdk/video/module/a/a;

    const/16 v1, 0x73

    invoke-interface {p1, v1, v2}, Lccsancom/mbridge/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    goto :goto_1

    .line 243
    :cond_7
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->L:Z

    .line 244
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->bringToFront()V

    .line 245
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->webviewshow()V

    .line 247
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Lccsanandroid/content/res/Resources;->getConfiguration()Lccsanandroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->onConfigurationChanged(Lccsanandroid/content/res/Configuration;)V

    .line 250
    :goto_1
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->x:Z

    goto/16 :goto_3

    .line 252
    :cond_8
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->h()V

    goto/16 :goto_3

    .line 189
    :pswitch_2
    iget-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->w:Z

    if-eqz p1, :cond_9

    .line 190
    return-void

    .line 192
    :cond_9
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->n:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 193
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->n:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->removeView(Lccsanandroid/view/View;)V

    .line 195
    :cond_a
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->l:Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 196
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->l:Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;

    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->removeView(Lccsanandroid/view/View;)V

    .line 198
    :cond_b
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->k:Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_f

    .line 200
    :cond_c
    :try_start_1
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz p1, :cond_e

    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getPlayable_ads_without_video()I

    move-result p1

    if-ne p1, v0, :cond_e

    .line 201
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->L:Z

    .line 202
    nop

    .line 5617
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->k:Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;

    const/4 v0, -0x1

    if-nez p1, :cond_d

    .line 5618
    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->b(I)V

    .line 5620
    :cond_d
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->k:Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;

    if-eqz p1, :cond_e

    .line 5621
    new-instance p1, Lccsanandroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p1, v1, v1}, Lccsanandroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 5622
    const/16 v1, 0xc

    invoke-virtual {p1, v1, v0}, Lccsanandroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 5623
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->k:Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->addView(Lccsanandroid/view/View;ILccsanandroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 206
    :cond_e
    goto :goto_2

    .line 204
    :catch_1
    move-exception p1

    .line 205
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 209
    :cond_f
    :goto_2
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->isLast()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 210
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->bringToFront()V

    goto :goto_3

    .line 184
    :pswitch_3
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->isLast()Z

    move-result p1

    if-nez p1, :cond_10

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->endCardShowing()Z

    move-result p1

    if-nez p1, :cond_10

    .line 185
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->h()V

    .line 257
    :cond_10
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public toggleCloseBtn(I)V
    .locals 1

    .line 320
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->j:Lccsancom/mbridge/msdk/video/module/MBridgePlayableView;

    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgePlayableView;->toggleCloseBtn(I)V

    .line 323
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->n:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    if-eqz v0, :cond_1

    .line 324
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->toggleCloseBtn(I)V

    .line 326
    :cond_1
    return-void
.end method

.method public triggerCloseBtn(Ljava/lang/String;)V
    .locals 2

    .line 339
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz p1, :cond_0

    .line 340
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->e:Lccsancom/mbridge/msdk/video/module/a/a;

    const/16 v0, 0x7a

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Lccsancom/mbridge/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 341
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->e:Lccsancom/mbridge/msdk/video/module/a/a;

    const/16 v0, 0x68

    invoke-interface {p1, v0, v1}, Lccsancom/mbridge/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 343
    :cond_0
    return-void
.end method

.method public webviewshow()V
    .locals 5

    .line 407
    const/4 v0, 0x4

    new-array v1, v0, [Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->j:Lccsancom/mbridge/msdk/video/module/MBridgePlayableView;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->l:Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->n:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    const/4 v4, 0x2

    aput-object v2, v1, v4

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->q:Lccsancom/mbridge/msdk/video/module/MBridgeAlertWebview;

    const/4 v4, 0x3

    aput-object v2, v1, v4

    .line 6840
    nop

    :goto_0
    if-ge v3, v0, :cond_1

    aget-object v2, v1, v3

    .line 6841
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->isLast()Z

    move-result v4

    if-nez v4, :cond_0

    .line 6842
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->webviewshow()V

    .line 6840
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 408
    :cond_1
    return-void
.end method
