.class public Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;
.super Lccsancom/mbridge/msdk/video/signal/container/AbstractJSContainer;
.source "MBridgeBTContainer.java"

# interfaces
.implements Lccsancom/mbridge/msdk/video/signal/b;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private A:Z

.field private B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;"
        }
    .end annotation
.end field

.field private C:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/videocommon/download/a;",
            ">;"
        }
    .end annotation
.end field

.field private D:Lccsancom/mbridge/msdk/video/bt/module/a/a;

.field private E:Lccsancom/mbridge/msdk/video/bt/module/b/h;

.field private F:Lccsancom/mbridge/msdk/video/bt/module/a/b;

.field private G:Ljava/lang/String;

.field private H:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private J:Z

.field private K:I

.field private L:Lccsancom/mbridge/msdk/video/dynview/d/a;

.field private b:I

.field private c:I

.field private d:Lccsanandroid/widget/FrameLayout;

.field private e:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTLayout;

.field private f:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

.field private g:Lccsanandroid/view/LayoutInflater;

.field private h:Lccsanandroid/content/Context;

.field private i:Z

.field private y:Z

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    const-class v0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 2

    .line 92
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/video/signal/container/AbstractJSContainer;-><init>(Lccsanandroid/content/Context;)V

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->b:I

    .line 63
    const/4 v1, 0x1

    iput v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->c:I

    .line 71
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->i:Z

    .line 72
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->y:Z

    .line 75
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->A:Z

    .line 93
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->init(Lccsanandroid/content/Context;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 1

    .line 97
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/container/AbstractJSContainer;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 62
    const/4 p2, 0x0

    iput p2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->b:I

    .line 63
    const/4 v0, 0x1

    iput v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->c:I

    .line 71
    iput-boolean p2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->i:Z

    .line 72
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->y:Z

    .line 75
    iput-boolean p2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->A:Z

    .line 98
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->init(Lccsanandroid/content/Context;)V

    .line 99
    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;I)I
    .locals 0

    .line 59
    iput p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->K:I

    return p1
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 59
    sget-object v0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;)Ljava/util/List;
    .locals 0

    .line 59
    iget-object p0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->B:Ljava/util/List;

    return-object p0
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;Z)Z
    .locals 0

    .line 59
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->J:Z

    return p1
.end method

.method static synthetic b(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;)Ljava/lang/String;
    .locals 0

    .line 59
    iget-object p0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->k:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;)Ljava/lang/String;
    .locals 0

    .line 59
    iget-object p0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->l:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;)Lccsanandroid/widget/FrameLayout;
    .locals 0

    .line 59
    iget-object p0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->d:Lccsanandroid/widget/FrameLayout;

    return-object p0
.end method

.method private d(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)Lccsancom/mbridge/msdk/videocommon/download/a;
    .locals 4

    .line 742
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->C:Ljava/util/List;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 743
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/mbridge/msdk/videocommon/download/a;

    .line 744
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/videocommon/download/a;->g()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 745
    sget-object p1, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->a:Ljava/lang/String;

    const-string v0, "tempContainer task initSuccess"

    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    return-object v1

    .line 748
    :cond_0
    goto :goto_0

    .line 750
    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic e(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;)Lccsancom/mbridge/msdk/video/bt/module/a/a;
    .locals 0

    .line 59
    iget-object p0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->D:Lccsancom/mbridge/msdk/video/bt/module/a/a;

    return-object p0
.end method

.method static synthetic f(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;)Ljava/lang/String;
    .locals 0

    .line 59
    iget-object p0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->l:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;)Ljava/lang/String;
    .locals 0

    .line 59
    iget-object p0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->k:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic h(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;)Ljava/lang/String;
    .locals 0

    .line 59
    iget-object p0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->k:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic i(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;)Ljava/lang/String;
    .locals 0

    .line 59
    iget-object p0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->k:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic j(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;)Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;
    .locals 0

    .line 59
    iget-object p0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->f:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    return-object p0
.end method

.method static synthetic k(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;)Ljava/lang/String;
    .locals 0

    .line 59
    iget-object p0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->l:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic l(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;)Ljava/lang/String;
    .locals 0

    .line 59
    iget-object p0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->k:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic m(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;)Ljava/lang/String;
    .locals 0

    .line 59
    iget-object p0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->l:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic n(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;)Ljava/lang/String;
    .locals 0

    .line 59
    iget-object p0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->k:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic o(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;)Lccsancom/mbridge/msdk/video/bt/module/b/h;
    .locals 0

    .line 59
    iget-object p0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->E:Lccsancom/mbridge/msdk/video/bt/module/b/h;

    return-object p0
.end method


# virtual methods
.method protected final a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 8

    .line 292
    if-eqz p1, :cond_0

    .line 293
    :try_start_0
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getPv_urls()Ljava/util/List;

    move-result-object v0

    .line 294
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 295
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    .line 296
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->k:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v3, p1

    invoke-static/range {v2 .. v7}, Lccsancom/mbridge/msdk/click/a;->a(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    goto :goto_0

    .line 300
    :catchall_0
    move-exception p1

    .line 301
    sget-object v0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 302
    :cond_0
    nop

    .line 303
    :goto_1
    return-void
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 1

    .line 284
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->E:Lccsancom/mbridge/msdk/video/bt/module/b/h;

    if-eqz v0, :cond_0

    .line 285
    invoke-interface {v0, p1}, Lccsancom/mbridge/msdk/video/bt/module/b/h;->a(Ljava/lang/String;)V

    .line 287
    :cond_0
    invoke-super {p0, p1}, Lccsancom/mbridge/msdk/video/signal/container/AbstractJSContainer;->a(Ljava/lang/String;)V

    .line 288
    return-void
.end method

.method public appendSubView(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;Lccsanorg/json/JSONObject;)V
    .locals 7

    .line 695
    :try_start_0
    new-instance v0, Lccsanandroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lccsanandroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 696
    if-eqz p3, :cond_5

    .line 697
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v1

    .line 698
    const-string v2, "left"

    const/16 v3, -0x3e7

    invoke-virtual {p3, v2, v3}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 699
    const-string v4, "top"

    invoke-virtual {p3, v4, v3}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 700
    const-string v5, "right"

    invoke-virtual {p3, v5, v3}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 701
    const-string v6, "bottom"

    invoke-virtual {p3, v6, v3}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 702
    if-eq v2, v3, :cond_0

    if-eqz v1, :cond_0

    .line 703
    int-to-float v2, v2

    invoke-static {v1, v2}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Lccsanandroid/content/Context;F)I

    move-result v2

    iput v2, v0, Lccsanandroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 705
    :cond_0
    if-eq v4, v3, :cond_1

    if-eqz v1, :cond_1

    .line 706
    int-to-float v2, v4

    invoke-static {v1, v2}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Lccsanandroid/content/Context;F)I

    move-result v2

    iput v2, v0, Lccsanandroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 708
    :cond_1
    if-eq v5, v3, :cond_2

    if-eqz v1, :cond_2

    .line 709
    int-to-float v2, v5

    invoke-static {v1, v2}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Lccsanandroid/content/Context;F)I

    move-result v2

    iput v2, v0, Lccsanandroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 711
    :cond_2
    if-eq v6, v3, :cond_3

    if-eqz v1, :cond_3

    .line 712
    int-to-float v2, v6

    invoke-static {v1, v2}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Lccsanandroid/content/Context;F)I

    move-result v1

    iput v1, v0, Lccsanandroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 714
    :cond_3
    const-string v1, "width"

    invoke-virtual {p3, v1}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 715
    const-string v2, "height"

    invoke-virtual {p3, v2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p3

    .line 716
    if-lez v1, :cond_4

    .line 717
    iput v1, v0, Lccsanandroid/widget/FrameLayout$LayoutParams;->width:I

    .line 719
    :cond_4
    if-lez p3, :cond_5

    .line 720
    iput p3, v0, Lccsanandroid/widget/FrameLayout$LayoutParams;->height:I

    .line 723
    :cond_5
    invoke-virtual {p1, p2, v0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->addView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 724
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->j:Lccsanandroid/app/Activity;

    invoke-virtual {p2, p1}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->setActivity(Lccsanandroid/app/Activity;)V

    .line 725
    iget p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->q:I

    invoke-virtual {p2, p1}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->setMute(I)V

    .line 726
    iget-boolean p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->i:Z

    invoke-virtual {p2, p1}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->setBidCampaign(Z)V

    .line 727
    iget-boolean p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->r:Z

    invoke-virtual {p2, p1}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->setIV(Z)V

    .line 728
    iget-boolean p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->y:Z

    invoke-virtual {p2, p1}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->setBigOffer(Z)V

    .line 729
    iget p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->t:I

    iget p3, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->u:I

    iget v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->v:I

    invoke-virtual {p2, p1, p3, v0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->setIVRewardEnable(III)V

    .line 730
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->E:Lccsancom/mbridge/msdk/video/bt/module/b/h;

    invoke-virtual {p2, p1}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->setShowRewardListener(Lccsancom/mbridge/msdk/video/bt/module/b/h;)V

    .line 731
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->getCampaign()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object p1

    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->d(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)Lccsancom/mbridge/msdk/videocommon/download/a;

    move-result-object p1

    invoke-virtual {p2, p1}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->setCampaignDownLoadTask(Lccsancom/mbridge/msdk/videocommon/download/a;)V

    .line 732
    nop

    .line 3325
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->F:Lccsancom/mbridge/msdk/video/bt/module/a/b;

    if-nez p1, :cond_6

    .line 3326
    new-instance p1, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer$3;

    invoke-direct {p1, p0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer$3;-><init>(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;)V

    iput-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->F:Lccsancom/mbridge/msdk/video/bt/module/a/b;

    .line 3458
    :cond_6
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->F:Lccsancom/mbridge/msdk/video/bt/module/a/b;

    .line 732
    invoke-virtual {p2, p1}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->setMBridgeTempCallback(Lccsancom/mbridge/msdk/video/bt/module/a/b;)V

    .line 733
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->getJSCommon()Lccsancom/mbridge/msdk/video/signal/c;

    move-result-object p1

    invoke-interface {p1}, Lccsancom/mbridge/msdk/video/signal/c;->a()I

    move-result p1

    invoke-virtual {p2, p1}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->setWebViewFront(I)V

    .line 734
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->h:Lccsanandroid/content/Context;

    invoke-virtual {p2, p1}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->init(Lccsanandroid/content/Context;)V

    .line 735
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->onCreate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 738
    goto :goto_0

    .line 736
    :catchall_0
    move-exception p1

    .line 737
    sget-object p2, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    :goto_0
    return-void
.end method

.method public broadcast(Ljava/lang/String;Lccsanorg/json/JSONObject;)V
    .locals 4

    .line 754
    const-string v0, "broadcast"

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->f:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    if-eqz v1, :cond_0

    .line 756
    :try_start_0
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1}, Lccsanorg/json/JSONObject;-><init>()V

    .line 757
    const-string v2, "code"

    iget v3, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->b:I

    invoke-virtual {v1, v2, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 758
    const-string v2, "id"

    iget-object v3, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->z:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 759
    const-string v2, "eventName"

    invoke-virtual {v1, v2, p1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 760
    const-string p1, "data"

    invoke-virtual {v1, p1, p2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 761
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object p1

    iget-object p2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->f:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v1}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 764
    goto :goto_0

    .line 762
    :catch_0
    move-exception p1

    .line 763
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/a/c;->a()Lccsancom/mbridge/msdk/video/bt/a/c;

    move-result-object p1

    iget-object p2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->f:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->z:Ljava/lang/String;

    invoke-virtual {p1, p2, v0, v1}, Lccsancom/mbridge/msdk/video/bt/a/c;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    :cond_0
    :goto_0
    return-void
.end method

.method public click(ILjava/lang/String;)V
    .locals 0

    .line 772
    return-void
.end method

.method public findID(Ljava/lang/String;)I
    .locals 2

    .line 781
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    invoke-static {v0, p1, v1}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public findLayout(Ljava/lang/String;)I
    .locals 2

    .line 785
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "layout"

    invoke-static {v0, p1, v1}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public handlerH5Exception(ILjava/lang/String;)V
    .locals 0

    .line 777
    return-void
.end method

.method public init(Lccsanandroid/content/Context;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->h:Lccsanandroid/content/Context;

    .line 103
    invoke-static {p1}, Lccsanandroid/view/LayoutInflater;->from(Lccsanandroid/content/Context;)Lccsanandroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->g:Lccsanandroid/view/LayoutInflater;

    .line 104
    return-void
.end method

.method public onAdClose()V
    .locals 1

    .line 549
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->j:Lccsanandroid/app/Activity;

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->j:Lccsanandroid/app/Activity;

    invoke-virtual {v0}, Lccsanandroid/app/Activity;->finish()V

    .line 552
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 508
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/a/c;->a()Lccsancom/mbridge/msdk/video/bt/a/c;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->k:Ljava/lang/String;

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->H:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lccsancom/mbridge/msdk/video/bt/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 509
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 510
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/view/View;

    .line 511
    instance-of v2, v1, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    if-eqz v2, :cond_0

    .line 512
    check-cast v1, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->onBackPressed()V

    goto :goto_1

    .line 513
    :cond_0
    instance-of v2, v1, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;

    if-eqz v2, :cond_1

    .line 514
    check-cast v1, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->onBackPressed()V

    goto :goto_1

    .line 515
    :cond_1
    instance-of v2, v1, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTLayout;

    if-eqz v2, :cond_2

    .line 516
    check-cast v1, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTLayout;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTLayout;->onBackPressed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 518
    :cond_2
    :goto_1
    goto :goto_0

    .line 522
    :cond_3
    goto :goto_2

    .line 520
    :catchall_0
    move-exception v0

    .line 521
    sget-object v1, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    :goto_2
    return-void
.end method

.method public onConfigurationChanged(Lccsanandroid/content/res/Configuration;)V
    .locals 3

    .line 307
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/a/c;->a()Lccsancom/mbridge/msdk/video/bt/a/c;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->k:Ljava/lang/String;

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->H:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lccsancom/mbridge/msdk/video/bt/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 308
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 309
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/view/View;

    .line 310
    instance-of v2, v1, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    if-eqz v2, :cond_0

    .line 311
    check-cast v1, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-virtual {v1, p1}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->onConfigurationChanged(Lccsanandroid/content/res/Configuration;)V

    goto :goto_1

    .line 312
    :cond_0
    instance-of v2, v1, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;

    if-eqz v2, :cond_1

    .line 313
    check-cast v1, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;

    invoke-virtual {v1, p1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->onConfigurationChanged(Lccsanandroid/content/res/Configuration;)V

    goto :goto_1

    .line 314
    :cond_1
    instance-of v2, v1, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTLayout;

    if-eqz v2, :cond_2

    .line 315
    check-cast v1, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTLayout;

    invoke-virtual {v1, p1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTLayout;->onConfigurationChanged(Lccsanandroid/content/res/Configuration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    :cond_2
    :goto_1
    goto :goto_0

    .line 321
    :cond_3
    goto :goto_2

    .line 319
    :catchall_0
    move-exception p1

    .line 320
    sget-object v0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    :goto_2
    return-void
.end method

.method public onCreate()V
    .locals 8

    .line 108
    const-string v0, ""

    const-string v1, "_"

    :try_start_0
    const-string v2, "mbridge_bt_container"

    invoke-virtual {p0, v2}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->findLayout(Ljava/lang/String;)I

    move-result v2

    .line 109
    if-gez v2, :cond_0

    .line 110
    const-string v0, "mbridge_bt_container layout null"

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->a(Ljava/lang/String;)V

    .line 111
    return-void

    .line 113
    :cond_0
    iget-object v3, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->g:Lccsanandroid/view/LayoutInflater;

    invoke-virtual {v3, v2, p0}, Lccsanandroid/view/LayoutInflater;->inflate(ILccsanandroid/view/ViewGroup;)Lccsanandroid/view/View;

    move-result-object v2

    check-cast v2, Lccsanandroid/widget/FrameLayout;

    iput-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->d:Lccsanandroid/widget/FrameLayout;

    .line 114
    if-nez v2, :cond_1

    .line 115
    const-string v0, "ViewIds null"

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->a(Ljava/lang/String;)V

    .line 116
    return-void

    .line 119
    :cond_1
    nop

    .line 120
    iput-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->H:Ljava/lang/String;

    .line 121
    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->B:Ljava/util/List;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 122
    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->B:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 123
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMof_template_url()Ljava/lang/String;

    move-result-object v4

    .line 124
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->H:Ljava/lang/String;

    goto :goto_0

    .line 126
    :cond_2
    move-object v4, v0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->k:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->H:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1462
    invoke-static {v2}, Lccsancom/mbridge/msdk/videocommon/a;->a(Ljava/lang/String;)Lccsancom/mbridge/msdk/videocommon/a$a;

    move-result-object v2

    .line 1463
    if-eqz v2, :cond_3

    .line 1464
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/videocommon/a$a;->b()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->z:Ljava/lang/String;

    .line 1465
    sget-object v5, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get BT wraper.getTag = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->z:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1466
    invoke-virtual {v2, v0}, Lccsancom/mbridge/msdk/videocommon/a$a;->a(Ljava/lang/String;)V

    .line 1467
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/videocommon/a$a;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    move-result-object v0

    goto :goto_1

    .line 1469
    :cond_3
    const/4 v0, 0x0

    .line 126
    :goto_1
    iput-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->f:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->k:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->H:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/videocommon/a;->b(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->f:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    if-eqz v0, :cond_c

    .line 129
    new-instance v0, Lccsancom/mbridge/msdk/video/signal/factory/b;

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->j:Lccsanandroid/app/Activity;

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->f:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-direct {v0, v1, p0, v2}, Lccsancom/mbridge/msdk/video/signal/factory/b;-><init>(Lccsanandroid/app/Activity;Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;Lccsanandroid/webkit/WebView;)V

    .line 130
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->registerJsFactory(Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;)V

    .line 131
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->f:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v1, v0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->setApiManagerJSFactory(Ljava/lang/Object;)V

    .line 132
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->f:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 133
    const-string v0, "preload template webview is null or load error"

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->a(Ljava/lang/String;)V

    .line 134
    return-void

    .line 136
    :cond_4
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->f:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lccsancom/mbridge/msdk/video/signal/a/j;

    if-eqz v1, :cond_6

    .line 137
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->f:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/mbridge/msdk/video/signal/a/j;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/video/signal/factory/b;->a(Lccsancom/mbridge/msdk/video/signal/a/j;)V

    .line 138
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->f:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    if-eqz v0, :cond_5

    .line 139
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    .line 140
    sget-object v1, Lccsancom/mbridge/msdk/foundation/same/a;->j:Ljava/lang/String;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->getContext()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lccsancom/mbridge/msdk/foundation/tools/u;->d(Lccsanandroid/content/Context;)F

    move-result v2

    float-to-double v4, v2

    invoke-virtual {v0, v1, v4, v5}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;D)Lccsanorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 142
    :try_start_1
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1}, Lccsanorg/json/JSONObject;-><init>()V

    .line 143
    const-string v2, "name"

    iget-object v4, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->o:Lccsancom/mbridge/msdk/videocommon/b/c;

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/videocommon/b/c;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 144
    const-string v2, "amount"

    iget-object v4, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->o:Lccsancom/mbridge/msdk/videocommon/b/c;

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/videocommon/b/c;->b()I

    move-result v4

    invoke-virtual {v1, v2, v4}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 145
    const-string v2, "id"

    iget-object v4, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->p:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 146
    const-string v2, "userId"

    iget-object v4, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->n:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 147
    const-string v2, "reward"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 148
    const-string v1, "playVideoMute"

    iget v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->q:I

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 149
    const-string v1, "extra"

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->I:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_1
    .catch Lccsanorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    .line 152
    :catch_0
    move-exception v1

    .line 153
    :try_start_2
    sget-object v2, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 150
    :catch_1
    move-exception v1

    .line 151
    sget-object v2, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->a:Ljava/lang/String;

    invoke-virtual {v1}, Lccsanorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :goto_2
    nop

    .line 155
    :goto_3
    invoke-virtual {v0}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 156
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->getJSNotifyProxy()Lccsancom/mbridge/msdk/video/signal/f;

    move-result-object v1

    invoke-interface {v1, v0}, Lccsancom/mbridge/msdk/video/signal/f;->a(Ljava/lang/Object;)V

    .line 157
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->getJSCommon()Lccsancom/mbridge/msdk/video/signal/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lccsancom/mbridge/msdk/video/signal/c;->b(Z)V

    .line 159
    :cond_5
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->getJSCommon()Lccsancom/mbridge/msdk/video/signal/c;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/video/signal/a/c;

    iget-object v0, v0, Lccsancom/mbridge/msdk/video/signal/a/c;->l:Lccsancom/mbridge/msdk/video/signal/c$a;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/c$a;->a()V

    .line 161
    :cond_6
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->f:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v0, v3}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->setBackgroundColor(I)V

    .line 162
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/a/c;->a()Lccsancom/mbridge/msdk/video/bt/a/c;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->k:Ljava/lang/String;

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->H:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lccsancom/mbridge/msdk/video/bt/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 163
    if-eqz v0, :cond_b

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 164
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/view/View;

    .line 165
    instance-of v2, v1, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTLayout;

    if-eqz v2, :cond_9

    .line 166
    check-cast v1, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTLayout;

    iput-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->e:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTLayout;

    .line 167
    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->f:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    new-instance v4, Lccsanandroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v5}, Lccsanandroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3, v4}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTLayout;->addView(Lccsanandroid/view/View;ILccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 168
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->e:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTLayout;

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->z:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTLayout;->setTag(Ljava/lang/Object;)V

    .line 169
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->z:Ljava/lang/String;

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->e:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTLayout;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroid/view/View;

    .line 171
    instance-of v4, v2, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTRootLayout;

    if-eqz v4, :cond_7

    .line 172
    check-cast v2, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTRootLayout;

    .line 173
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTRootLayout;->getInstanceId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->G:Ljava/lang/String;

    .line 174
    iget-object v4, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->d:Lccsanandroid/widget/FrameLayout;

    new-instance v6, Lccsanandroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v5, v5}, Lccsanandroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v2, v6}, Lccsanandroid/widget/FrameLayout;->addView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 176
    :cond_7
    goto :goto_4

    .line 177
    :cond_8
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->G:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->G:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    :cond_9
    nop

    .line 184
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/a/c;->a()Lccsancom/mbridge/msdk/video/bt/a/c;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->k:Ljava/lang/String;

    iget v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->q:I

    invoke-virtual {v0, v1, v2}, Lccsancom/mbridge/msdk/video/bt/a/c;->a(Ljava/lang/String;I)V

    .line 185
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/a/c;->a()Lccsancom/mbridge/msdk/video/bt/a/c;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->z:Ljava/lang/String;

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->H:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lccsancom/mbridge/msdk/video/bt/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/a/c;->a()Lccsancom/mbridge/msdk/video/bt/a/c;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->G:Ljava/lang/String;

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->H:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lccsancom/mbridge/msdk/video/bt/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 188
    :try_start_3
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/f/b;->a()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer$1;

    invoke-direct {v1, p0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer$1;-><init>(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 205
    goto :goto_5

    .line 203
    :catchall_0
    move-exception v0

    .line 204
    :try_start_4
    sget-object v0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->a:Ljava/lang/String;

    const-string v1, "remove campaign failed"

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :goto_5
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->B:Ljava/util/List;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 207
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->m:Lccsancom/mbridge/msdk/videocommon/d/c;

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->B:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p0, v0, v1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->a(Lccsancom/mbridge/msdk/videocommon/d/c;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 209
    :cond_a
    goto :goto_7

    .line 181
    :cond_b
    const-string v0, "big template webviewLayout is null"

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->a(Ljava/lang/String;)V

    .line 182
    return-void

    .line 211
    :cond_c
    invoke-static {v4}, Lccsancom/mbridge/msdk/foundation/tools/u;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 212
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->h:Lccsanandroid/content/Context;

    .line 2226
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->L:Lccsancom/mbridge/msdk/video/dynview/d/a;

    if-nez v1, :cond_d

    .line 2227
    const-string v0, "ChoiceOneCallback is null"

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->a(Ljava/lang/String;)V

    .line 2228
    goto :goto_6

    .line 2230
    :cond_d
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2231
    const-string v2, "choice_one_callback"

    iget-object v3, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->L:Lccsancom/mbridge/msdk/video/dynview/d/a;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2232
    invoke-static {}, Lccsancom/mbridge/msdk/video/dynview/a;->a()Lccsancom/mbridge/msdk/video/dynview/a;

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->B:Ljava/util/List;

    new-instance v3, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer$2;

    invoke-direct {v3, p0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer$2;-><init>(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;)V

    .line 3037
    new-instance v4, Lccsancom/mbridge/msdk/video/dynview/g/a;

    invoke-direct {v4, v0, v2, v3, v1}, Lccsancom/mbridge/msdk/video/dynview/g/a;-><init>(Lccsanandroid/content/Context;Ljava/util/List;Lccsancom/mbridge/msdk/video/dynview/d/c;Ljava/util/Map;)V

    .line 212
    :goto_6
    goto :goto_7

    .line 214
    :cond_e
    const-string v0, "big template webview is null"

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->a(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 219
    :goto_7
    goto :goto_8

    .line 217
    :catchall_1
    move-exception v0

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->a(Ljava/lang/String;)V

    .line 220
    :goto_8
    return-void
.end method

.method public onDestroy()V
    .locals 5

    .line 556
    const-string v0, "_"

    iget-boolean v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->A:Z

    if-eqz v1, :cond_0

    .line 557
    return-void

    .line 559
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->A:Z

    .line 560
    invoke-super {p0}, Lccsancom/mbridge/msdk/video/signal/container/AbstractJSContainer;->onDestroy()V

    .line 563
    :try_start_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->f:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    if-eqz v1, :cond_2

    .line 564
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lccsanandroid/view/ViewGroup;

    .line 565
    if-eqz v1, :cond_1

    .line 566
    invoke-virtual {v1}, Lccsanandroid/view/ViewGroup;->removeAllViews()V

    .line 568
    :cond_1
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->f:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->clearWebView()V

    .line 569
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->f:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->release()V

    .line 571
    :cond_2
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->F:Lccsancom/mbridge/msdk/video/bt/module/a/b;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 572
    iput-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->F:Lccsancom/mbridge/msdk/video/bt/module/a/b;

    .line 574
    :cond_3
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->D:Lccsancom/mbridge/msdk/video/bt/module/a/a;

    if-eqz v1, :cond_4

    .line 575
    iput-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->D:Lccsancom/mbridge/msdk/video/bt/module/a/a;

    .line 577
    :cond_4
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->h:Lccsanandroid/content/Context;

    if-eqz v1, :cond_5

    .line 578
    iput-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->h:Lccsanandroid/content/Context;

    .line 580
    :cond_5
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->B:Ljava/util/List;

    if-eqz v1, :cond_7

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 581
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->B:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 582
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 583
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->k:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lccsancom/mbridge/msdk/videocommon/a;->b(Ljava/lang/String;)V

    .line 585
    :cond_6
    goto :goto_0

    .line 587
    :cond_7
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/a/c;->a()Lccsancom/mbridge/msdk/video/bt/a/c;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/video/bt/a/c;->e(Ljava/lang/String;)V

    .line 588
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/a/c;->a()Lccsancom/mbridge/msdk/video/bt/a/c;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/video/bt/a/c;->f(Ljava/lang/String;)V

    .line 589
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/a/c;->a()Lccsancom/mbridge/msdk/video/bt/a/c;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->k:Ljava/lang/String;

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->H:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lccsancom/mbridge/msdk/video/bt/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/a/c;->a()Lccsancom/mbridge/msdk/video/bt/a/c;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->k:Ljava/lang/String;

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->H:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lccsancom/mbridge/msdk/video/bt/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->G:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/a/c;->a()Lccsancom/mbridge/msdk/video/bt/a/c;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->k:Ljava/lang/String;

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->H:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lccsancom/mbridge/msdk/video/bt/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 594
    goto :goto_1

    .line 592
    :catchall_0
    move-exception v0

    .line 593
    sget-object v1, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    :goto_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 544
    invoke-super {p0}, Lccsancom/mbridge/msdk/video/signal/container/AbstractJSContainer;->onDetachedFromWindow()V

    .line 546
    return-void
.end method

.method public onPause()V
    .locals 3

    .line 527
    invoke-super {p0}, Lccsancom/mbridge/msdk/video/signal/container/AbstractJSContainer;->onPause()V

    .line 529
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/a/c;->a()Lccsancom/mbridge/msdk/video/bt/a/c;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->k:Ljava/lang/String;

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->H:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lccsancom/mbridge/msdk/video/bt/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 530
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 531
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/view/View;

    .line 532
    instance-of v2, v1, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    if-eqz v2, :cond_0

    .line 533
    check-cast v1, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->onPause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 535
    :cond_0
    goto :goto_0

    .line 539
    :cond_1
    goto :goto_1

    .line 537
    :catchall_0
    move-exception v0

    .line 538
    sget-object v1, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    :goto_1
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 474
    invoke-super {p0}, Lccsancom/mbridge/msdk/video/signal/container/AbstractJSContainer;->onResume()V

    .line 476
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/a/c;->a()Lccsancom/mbridge/msdk/video/bt/a/c;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->k:Ljava/lang/String;

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->H:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lccsancom/mbridge/msdk/video/bt/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 477
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 478
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/view/View;

    .line 479
    instance-of v2, v1, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    if-eqz v2, :cond_0

    .line 480
    check-cast v1, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->onResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 482
    :cond_0
    goto :goto_0

    .line 486
    :cond_1
    goto :goto_1

    .line 484
    :catchall_0
    move-exception v0

    .line 485
    sget-object v1, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    :goto_1
    return-void
.end method

.method public onStop()V
    .locals 3

    .line 491
    invoke-super {p0}, Lccsancom/mbridge/msdk/video/signal/container/AbstractJSContainer;->onStop()V

    .line 493
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/a/c;->a()Lccsancom/mbridge/msdk/video/bt/a/c;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->k:Ljava/lang/String;

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->H:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lccsancom/mbridge/msdk/video/bt/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 494
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 495
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/view/View;

    .line 496
    instance-of v2, v1, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    if-eqz v2, :cond_0

    .line 497
    check-cast v1, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->onStop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 499
    :cond_0
    goto :goto_0

    .line 503
    :cond_1
    goto :goto_1

    .line 501
    :catchall_0
    move-exception v0

    .line 502
    sget-object v1, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    :goto_1
    return-void
.end method

.method public reactDeveloper(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 8

    .line 599
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->D:Lccsancom/mbridge/msdk/video/bt/module/a/a;

    if-eqz v0, :cond_d

    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 601
    :try_start_0
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 602
    const-string p2, "type"

    invoke-virtual {v0, p2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    .line 603
    const-string v1, "unitId"

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->getUnitId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 604
    sget-object v2, Lccsancom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->getPlacementId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 605
    const-string v3, "data"

    invoke-virtual {v0, v3}, Lccsanorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object v3

    .line 607
    iget-object v4, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->B:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 609
    const/4 v6, 0x1

    if-ne p2, v6, :cond_1

    if-eqz v3, :cond_1

    .line 610
    const-string v7, "expired"

    invoke-virtual {v3, v7}, Lccsanorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 611
    if-eqz v4, :cond_1

    .line 612
    if-eqz v7, :cond_0

    .line 613
    invoke-virtual {v4, v6}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setSpareOfferFlag(I)V

    goto :goto_0

    .line 615
    :cond_0
    invoke-virtual {v4, v5}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setSpareOfferFlag(I)V

    .line 619
    :cond_1
    :goto_0
    invoke-virtual {p0, v4}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->setCBT(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 620
    const/4 v7, 0x0

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_3

    .line 626
    :pswitch_0
    nop

    .line 627
    nop

    .line 628
    if-eqz v3, :cond_3

    .line 629
    const-string p2, "convert"

    invoke-virtual {v3, p2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    if-ne p2, v6, :cond_2

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    .line 630
    :goto_1
    const-string p2, "reward"

    invoke-virtual {v3, p2}, Lccsanorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object v7

    .line 631
    const-string p2, "extra"

    invoke-virtual {v3, p2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 632
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 633
    iput-object p2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->I:Ljava/lang/String;

    goto :goto_2

    .line 628
    :cond_3
    const/4 v6, 0x0

    .line 636
    :cond_4
    :goto_2
    const-string p2, "campaign"

    invoke-virtual {v3, p2}, Lccsanorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object p2

    invoke-static {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->parseCampaignWithBackData(Lccsanorg/json/JSONObject;)Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object p2

    .line 637
    invoke-static {v7}, Lccsancom/mbridge/msdk/videocommon/b/c;->a(Lccsanorg/json/JSONObject;)Lccsancom/mbridge/msdk/videocommon/b/c;

    move-result-object v0

    .line 638
    if-nez v0, :cond_5

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->o:Lccsancom/mbridge/msdk/videocommon/b/c;

    .line 639
    :cond_5
    iget-object v3, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->D:Lccsancom/mbridge/msdk/video/bt/module/a/a;

    const/4 v7, 0x7

    invoke-interface {v3, v7, v2, v1}, Lccsancom/mbridge/msdk/video/bt/module/a/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 640
    iget-boolean v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->r:Z

    if-eqz v2, :cond_7

    iget v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->t:I

    sget v3, Lccsancom/mbridge/msdk/foundation/same/a;->m:I

    if-eq v2, v3, :cond_6

    iget v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->t:I

    sget v3, Lccsancom/mbridge/msdk/foundation/same/a;->n:I

    if-ne v2, v3, :cond_7

    .line 641
    :cond_6
    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->D:Lccsancom/mbridge/msdk/video/bt/module/a/a;

    iget-boolean v3, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->J:Z

    iget v7, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->K:I

    invoke-interface {v2, v3, v7}, Lccsancom/mbridge/msdk/video/bt/module/a/a;->a(ZI)V

    .line 643
    :cond_7
    if-nez v6, :cond_8

    .line 644
    invoke-virtual {v0, v5}, Lccsancom/mbridge/msdk/videocommon/b/c;->a(I)V

    .line 646
    :cond_8
    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->D:Lccsancom/mbridge/msdk/video/bt/module/a/a;

    invoke-interface {v2, v6, v0}, Lccsancom/mbridge/msdk/video/bt/module/a/a;->a(ZLccsancom/mbridge/msdk/videocommon/b/c;)V

    .line 647
    sget-object v2, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->a:Ljava/lang/String;

    const-string v3, "sendToServerRewardInfo"

    invoke-static {v2, v3}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    iget-boolean v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->r:Z

    if-nez v2, :cond_c

    if-eqz v6, :cond_c

    .line 649
    if-eqz p2, :cond_9

    .line 650
    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->n:Ljava/lang/String;

    iget-object v3, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->I:Ljava/lang/String;

    invoke-static {p2, v0, v1, v2, v3}, Lccsancom/mbridge/msdk/video/module/b/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsancom/mbridge/msdk/videocommon/b/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 652
    :cond_9
    iget-object p2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->n:Ljava/lang/String;

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->I:Ljava/lang/String;

    invoke-static {v4, v0, v1, p2, v2}, Lccsancom/mbridge/msdk/video/module/b/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsancom/mbridge/msdk/videocommon/b/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 669
    :pswitch_1
    const-string p2, "isAutoClick"

    invoke-virtual {v0, p2}, Lccsanorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 670
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->D:Lccsancom/mbridge/msdk/video/bt/module/a/a;

    invoke-interface {v0, p2, v2, v1}, Lccsancom/mbridge/msdk/video/bt/module/a/a;->a(ZLjava/lang/String;Ljava/lang/String;)V

    .line 671
    goto :goto_3

    .line 677
    :pswitch_2
    iget-object p2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->D:Lccsancom/mbridge/msdk/video/bt/module/a/a;

    invoke-interface {p2, v2, v1}, Lccsancom/mbridge/msdk/video/bt/module/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    iget-object p2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->D:Lccsancom/mbridge/msdk/video/bt/module/a/a;

    const/4 v0, 0x6

    invoke-interface {p2, v0, v2, v1}, Lccsancom/mbridge/msdk/video/bt/module/a/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 673
    :pswitch_3
    iget-object p2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->D:Lccsancom/mbridge/msdk/video/bt/module/a/a;

    invoke-interface {p2, v2, v1}, Lccsancom/mbridge/msdk/video/bt/module/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    iget-object p2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->D:Lccsancom/mbridge/msdk/video/bt/module/a/a;

    const/4 v0, 0x5

    invoke-interface {p2, v0, v2, v1}, Lccsancom/mbridge/msdk/video/bt/module/a/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 675
    goto :goto_3

    .line 657
    :pswitch_4
    nop

    .line 658
    if-eqz v3, :cond_a

    .line 659
    const-string p2, "error"

    invoke-virtual {v3, p2}, Lccsanorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object v7

    .line 661
    :cond_a
    const-string p2, ""

    .line 662
    if-eqz v7, :cond_b

    .line 663
    const-string p2, "msg"

    invoke-virtual {v7, p2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 665
    :cond_b
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->D:Lccsancom/mbridge/msdk/video/bt/module/a/a;

    invoke-interface {v0, p2}, Lccsancom/mbridge/msdk/video/bt/module/a/a;->a(Ljava/lang/String;)V

    .line 666
    iget-object p2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->D:Lccsancom/mbridge/msdk/video/bt/module/a/a;

    const/4 v0, 0x4

    invoke-interface {p2, v0, v2, v1}, Lccsancom/mbridge/msdk/video/bt/module/a/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 667
    goto :goto_3

    .line 622
    :pswitch_5
    iget-object p2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->D:Lccsancom/mbridge/msdk/video/bt/module/a/a;

    invoke-interface {p2}, Lccsancom/mbridge/msdk/video/bt/module/a/a;->a()V

    .line 623
    iget-object p2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->D:Lccsancom/mbridge/msdk/video/bt/module/a/a;

    const/4 v0, 0x2

    invoke-interface {p2, v0, v2, v1}, Lccsancom/mbridge/msdk/video/bt/module/a/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 624
    nop

    .line 681
    :cond_c
    :goto_3
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 682
    :catch_0
    move-exception p2

    .line 683
    nop

    .line 684
    invoke-virtual {p2}, Lccsanorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 685
    sget-object p1, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->a:Ljava/lang/String;

    invoke-virtual {p2}, Lccsanorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    :goto_4
    goto :goto_5

    .line 689
    :cond_d
    const-string p2, "listener is null"

    invoke-virtual {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 691
    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setBTContainerCallback(Lccsancom/mbridge/msdk/video/bt/module/a/a;)V
    .locals 0

    .line 789
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->D:Lccsancom/mbridge/msdk/video/bt/module/a/a;

    .line 790
    return-void
.end method

.method public setCBT(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 3

    .line 814
    if-eqz p1, :cond_2

    .line 815
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getSpareOfferFlag()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 816
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->m:Lccsancom/mbridge/msdk/videocommon/d/c;

    if-eqz v0, :cond_2

    .line 817
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->m:Lccsancom/mbridge/msdk/videocommon/d/c;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/videocommon/d/c;->y()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 818
    invoke-virtual {p1, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setCbt(I)V

    goto :goto_0

    .line 820
    :cond_0
    invoke-virtual {p1, v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setCbt(I)V

    goto :goto_0

    .line 824
    :cond_1
    invoke-virtual {p1, v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setCbt(I)V

    .line 827
    :cond_2
    :goto_0
    return-void
.end method

.method public setCampaignDownLoadTasks(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/videocommon/download/a;",
            ">;)V"
        }
    .end annotation

    .line 798
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->C:Ljava/util/List;

    .line 799
    return-void
.end method

.method public setCampaigns(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;)V"
        }
    .end annotation

    .line 794
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->B:Ljava/util/List;

    .line 795
    return-void
.end method

.method public setChoiceOneCallback(Lccsancom/mbridge/msdk/video/dynview/d/a;)V
    .locals 0

    .line 810
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->L:Lccsancom/mbridge/msdk/video/dynview/d/a;

    .line 811
    return-void
.end method

.method public setDeveloperExtraData(Ljava/lang/String;)V
    .locals 0

    .line 871
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->I:Ljava/lang/String;

    .line 872
    return-void
.end method

.method public setJSFactory(Lccsancom/mbridge/msdk/video/signal/factory/b;)V
    .locals 0

    .line 802
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->x:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    .line 803
    return-void
.end method

.method public setNotchPadding(IIIII)V
    .locals 16

    move-object/from16 v1, p0

    move/from16 v0, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    .line 832
    :try_start_0
    iget-object v2, v1, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->B:Ljava/util/List;

    const/4 v11, 0x0

    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    iget-object v2, v1, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->B:Ljava/util/List;

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMof_template_url()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lccsancom/mbridge/msdk/foundation/tools/u;->f(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 833
    invoke-static {}, Lccsancom/mbridge/msdk/video/dynview/a;->a()Lccsancom/mbridge/msdk/video/dynview/a;

    .line 4054
    sget v2, Lccsancom/mbridge/msdk/video/dynview/a/a;->a:I

    if-eqz v2, :cond_0

    .line 4055
    goto :goto_0

    .line 4057
    :cond_0
    if-eqz v0, :cond_1

    .line 4058
    sput v0, Lccsancom/mbridge/msdk/video/dynview/a/a;->a:I

    .line 4059
    goto :goto_0

    .line 4061
    :cond_1
    if-eqz v8, :cond_2

    .line 4062
    sput v8, Lccsancom/mbridge/msdk/video/dynview/a/a;->a:I

    .line 4063
    goto :goto_0

    .line 4065
    :cond_2
    if-eqz v9, :cond_3

    .line 4066
    sput v9, Lccsancom/mbridge/msdk/video/dynview/a/a;->a:I

    .line 4067
    goto :goto_0

    .line 4069
    :cond_3
    if-eqz v10, :cond_4

    .line 4070
    sput v10, Lccsancom/mbridge/msdk/video/dynview/a/a;->a:I

    .line 836
    :cond_4
    :goto_0
    invoke-static/range {p1 .. p5}, Lccsancom/mbridge/msdk/foundation/tools/h;->a(IIIII)Ljava/lang/String;

    move-result-object v12

    .line 838
    sget-object v2, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->a:Ljava/lang/String;

    invoke-static {v2, v12}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    iget-object v2, v1, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->f:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v13, "oncutoutfetched"

    if-eqz v2, :cond_5

    :try_start_1
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lccsancom/mbridge/msdk/video/signal/a/j;

    if-eqz v2, :cond_5

    .line 841
    invoke-static {v12}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 842
    iget-object v2, v1, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->f:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/video/signal/a/j;

    invoke-virtual {v2, v12}, Lccsancom/mbridge/msdk/video/signal/a/j;->b(Ljava/lang/String;)V

    .line 843
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object v2

    iget-object v3, v1, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->f:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4, v11}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v13, v4}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    :cond_5
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/a/c;->a()Lccsancom/mbridge/msdk/video/bt/a/c;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Lccsancom/mbridge/msdk/video/bt/a/c;->a(IIIII)V

    .line 849
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/a/c;->a()Lccsancom/mbridge/msdk/video/bt/a/c;

    move-result-object v2

    iget-object v3, v1, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->k:Ljava/lang/String;

    iget-object v4, v1, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->H:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lccsancom/mbridge/msdk/video/bt/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v2

    .line 850
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    if-lez v3, :cond_9

    .line 851
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lccsanandroid/view/View;

    .line 852
    instance-of v2, v15, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    if-eqz v2, :cond_6

    .line 853
    move-object v2, v15

    check-cast v2, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    invoke-virtual {v2, v0, v8, v9, v10}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->setNotchPadding(IIII)V

    .line 856
    :cond_6
    instance-of v2, v15, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    if-eqz v2, :cond_7

    .line 857
    move-object v2, v15

    check-cast v2, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->setNotchPadding(IIIII)V

    .line 860
    :cond_7
    instance-of v2, v15, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    if-eqz v2, :cond_8

    invoke-static {v12}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 861
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object v2

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3, v11}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v15, v13, v3}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 863
    :cond_8
    goto :goto_1

    .line 867
    :cond_9
    goto :goto_2

    .line 865
    :catchall_0
    move-exception v0

    .line 866
    sget-object v2, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    :goto_2
    return-void
.end method

.method public setShowRewardVideoListener(Lccsancom/mbridge/msdk/video/bt/module/b/h;)V
    .locals 0

    .line 806
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->E:Lccsancom/mbridge/msdk/video/bt/module/b/h;

    .line 807
    return-void
.end method
