.class public Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;
.super Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;
.source "MBridgeH5EndCardView.java"

# interfaces
.implements Lccsancom/mbridge/msdk/mbsignalcommon/mraid/b;
.implements Lccsancom/mbridge/msdk/video/signal/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$c;,
        Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$b;,
        Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$f;,
        Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$e;,
        Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$d;,
        Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$a;
    }
.end annotation


# instance fields
.field private A:I

.field private B:J

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:Z

.field private G:Z

.field private H:Z

.field private I:Z

.field private J:Z

.field private K:Ljava/lang/String;

.field private L:Z

.field private M:Z

.field protected j:Lccsanandroid/view/View;

.field protected k:Lccsanandroid/widget/RelativeLayout;

.field protected l:Lccsanandroid/widget/ImageView;

.field protected m:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

.field protected n:Lccsanandroid/os/Handler;

.field protected o:Ljava/lang/String;

.field protected p:Z

.field protected q:Z

.field protected r:Ljava/lang/String;

.field s:Lccsanandroid/os/Handler;

.field t:Z

.field private u:Z

.field private v:Z

.field private w:I

.field private x:I

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 2

    .line 114
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;-><init>(Lccsanandroid/content/Context;)V

    .line 76
    const/4 p1, 0x0

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->u:Z

    .line 78
    new-instance v0, Lccsanandroid/os/Handler;

    invoke-direct {v0}, Lccsanandroid/os/Handler;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->n:Lccsanandroid/os/Handler;

    .line 80
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->p:Z

    .line 81
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->q:Z

    .line 83
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->v:Z

    .line 85
    const/4 v0, 0x1

    iput v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->w:I

    .line 87
    iput v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->x:I

    .line 89
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->y:Z

    .line 91
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->z:Z

    .line 93
    iput v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->A:I

    .line 96
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->B:J

    .line 100
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->C:Z

    .line 102
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->D:Z

    .line 103
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->E:Z

    .line 104
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->F:Z

    .line 105
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->G:Z

    .line 106
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->H:Z

    .line 107
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->I:Z

    .line 109
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->J:Z

    .line 111
    const-string v0, ""

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->K:Ljava/lang/String;

    .line 121
    new-instance v0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$1;

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$1;-><init>(Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;Lccsanandroid/os/Looper;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->s:Lccsanandroid/os/Handler;

    .line 456
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->L:Z

    .line 503
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->M:Z

    .line 900
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->t:Z

    .line 115
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 2

    .line 118
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 76
    const/4 p1, 0x0

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->u:Z

    .line 78
    new-instance p2, Lccsanandroid/os/Handler;

    invoke-direct {p2}, Lccsanandroid/os/Handler;-><init>()V

    iput-object p2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->n:Lccsanandroid/os/Handler;

    .line 80
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->p:Z

    .line 81
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->q:Z

    .line 83
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->v:Z

    .line 85
    const/4 p2, 0x1

    iput p2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->w:I

    .line 87
    iput p2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->x:I

    .line 89
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->y:Z

    .line 91
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->z:Z

    .line 93
    iput p2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->A:I

    .line 96
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->B:J

    .line 100
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->C:Z

    .line 102
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->D:Z

    .line 103
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->E:Z

    .line 104
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->F:Z

    .line 105
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->G:Z

    .line 106
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->H:Z

    .line 107
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->I:Z

    .line 109
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->J:Z

    .line 111
    const-string p2, ""

    iput-object p2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->K:Ljava/lang/String;

    .line 121
    new-instance p2, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$1;

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, p0, v0}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$1;-><init>(Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;Lccsanandroid/os/Looper;)V

    iput-object p2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->s:Lccsanandroid/os/Handler;

    .line 456
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->L:Z

    .line 503
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->M:Z

    .line 900
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->t:Z

    .line 119
    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;I)I
    .locals 0

    .line 53
    iput p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->A:I

    return p1
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;JZ)V
    .locals 17

    .line 53
    move-object/from16 v1, p0

    .line 4828
    :try_start_0
    iget-boolean v0, v1, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->y:Z

    if-eqz v0, :cond_0

    .line 4829
    goto/16 :goto_5

    .line 4831
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, v1, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->y:Z

    .line 4832
    nop

    .line 4833
    iget-object v0, v1, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/x;->b(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "1"

    const-string v4, "2"

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, v1, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object v0

    const-string v5, ".zip"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4834
    move-object v14, v3

    goto :goto_0

    .line 4836
    :cond_1
    move-object v14, v4

    :goto_0
    const/16 v0, 0xa

    .line 4837
    nop

    .line 4838
    const-string v5, "ready yes"

    .line 4839
    const/4 v6, 0x2

    if-eqz p3, :cond_2

    .line 4840
    const/16 v0, 0xc

    .line 4841
    nop

    .line 4842
    const-string v5, "ready timeout"

    move-object v15, v5

    const/16 v7, 0xc

    const/4 v13, 0x2

    goto :goto_1

    .line 4844
    :cond_2
    iget v7, v1, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->A:I

    if-ne v7, v6, :cond_3

    .line 4845
    const/4 v6, 0x3

    .line 4846
    const/16 v0, 0xb

    .line 4847
    const-string v5, "ready no"

    move-object v15, v5

    const/16 v7, 0xb

    const/4 v13, 0x3

    goto :goto_1

    .line 4844
    :cond_3
    move-object v15, v5

    const/16 v7, 0xa

    const/4 v13, 0x1

    .line 4850
    :goto_1
    new-instance v12, Lccsancom/mbridge/msdk/foundation/entity/m;

    const-string v6, "2000043"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v10, p1

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v0, v1, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object v9

    iget-object v0, v1, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v5, v1, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->r:Ljava/lang/String;

    move-object/from16 v16, v5

    move-object v5, v12

    move-object v10, v0

    move-object/from16 v11, v16

    move-object v2, v12

    move-object v12, v15

    move-object/from16 p3, v15

    move v15, v13

    move-object v13, v14

    invoke-direct/range {v5 .. v13}, Lccsancom/mbridge/msdk/foundation/entity/m;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4853
    :try_start_2
    iget-object v0, v1, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    move-result v0

    const/16 v5, 0x11f

    if-ne v0, v5, :cond_4

    .line 4854
    const-string v0, "3"

    invoke-virtual {v2, v0}, Lccsancom/mbridge/msdk/foundation/entity/m;->h(Ljava/lang/String;)V

    goto :goto_2

    .line 4855
    :cond_4
    iget-object v0, v1, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    move-result v0

    const/16 v5, 0x5e

    if-ne v0, v5, :cond_5

    .line 4856
    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/m;->h(Ljava/lang/String;)V

    goto :goto_2

    .line 4857
    :cond_5
    iget-object v0, v1, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    move-result v0

    const/16 v3, 0x2a

    if-ne v0, v3, :cond_6

    .line 4858
    invoke-virtual {v2, v4}, Lccsancom/mbridge/msdk/foundation/entity/m;->h(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4862
    :cond_6
    :goto_2
    goto :goto_3

    .line 4860
    :catch_0
    move-exception v0

    .line 4861
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 4863
    :goto_3
    iget-object v0, v1, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lccsancom/mbridge/msdk/foundation/entity/m;->k(Ljava/lang/String;)V

    .line 4864
    iget-object v0, v1, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lccsancom/mbridge/msdk/foundation/entity/m;->l(Ljava/lang/String;)V

    .line 4865
    iget-object v0, v1, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->r:Ljava/lang/String;

    invoke-static {v2, v0}, Lccsancom/mbridge/msdk/foundation/same/report/b;->a(Lccsancom/mbridge/msdk/foundation/entity/m;Ljava/lang/String;)V

    .line 4867
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->isLoadSuccess()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v3, 0x1

    if-ne v15, v3, :cond_8

    .line 4868
    invoke-virtual {v2, v15}, Lccsancom/mbridge/msdk/foundation/entity/m;->c(I)V

    .line 4869
    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lccsancom/mbridge/msdk/foundation/entity/m;->q(Ljava/lang/String;)V

    .line 4870
    iget-object v0, v1, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lccsancom/mbridge/msdk/foundation/entity/m;->n(Ljava/lang/String;)V

    .line 4872
    move-object/from16 v5, p3

    invoke-virtual {v2, v5}, Lccsancom/mbridge/msdk/foundation/entity/m;->p(Ljava/lang/String;)V

    .line 4873
    iget-object v0, v1, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isMraid()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4874
    sget v0, Lccsancom/mbridge/msdk/foundation/entity/m;->a:I

    invoke-virtual {v2, v0}, Lccsancom/mbridge/msdk/foundation/entity/m;->a(I)V

    goto :goto_4

    .line 4876
    :cond_7
    iget-object v0, v1, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lccsancom/mbridge/msdk/foundation/entity/m;->f(Ljava/lang/String;)V

    .line 4877
    invoke-virtual {v2, v14}, Lccsancom/mbridge/msdk/foundation/entity/m;->g(Ljava/lang/String;)V

    .line 4878
    sget v0, Lccsancom/mbridge/msdk/foundation/entity/m;->b:I

    invoke-virtual {v2, v0}, Lccsancom/mbridge/msdk/foundation/entity/m;->a(I)V

    .line 4880
    :goto_4
    iget-object v0, v1, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->r:Ljava/lang/String;

    invoke-static {v2, v0}, Lccsancom/mbridge/msdk/foundation/same/report/b;->b(Lccsancom/mbridge/msdk/foundation/entity/m;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4884
    :cond_8
    goto :goto_5

    .line 4882
    :catchall_0
    move-exception v0

    .line 4883
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MBridgeBaseView"

    invoke-static {v2, v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    :goto_5
    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->C:Z

    return p0
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;Z)Z
    .locals 0

    .line 53
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->z:Z

    return p1
.end method

.method static synthetic b(Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;)J
    .locals 2

    .line 53
    iget-wide v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->B:J

    return-wide v0
.end method

.method static synthetic b(Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;Z)Z
    .locals 0

    .line 53
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->G:Z

    return p1
.end method

.method static synthetic c(Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->z:Z

    return p0
.end method

.method static synthetic c(Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;Z)Z
    .locals 0

    .line 53
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->H:Z

    return p1
.end method

.method static synthetic d(Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;)V
    .locals 18

    .line 53
    move-object/from16 v1, p0

    const-string v2, "true"

    .line 4922
    iget-object v0, v1, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_1

    iget-object v0, v1, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isMraid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4923
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/content/res/Resources;->getConfiguration()Lccsanandroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Lccsanandroid/content/res/Configuration;->orientation:I

    .line 4924
    nop

    .line 4925
    const-string v3, "undefined"

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 4933
    :pswitch_0
    const-string v3, "landscape"

    goto :goto_0

    .line 4930
    :pswitch_1
    nop

    .line 4931
    const-string v3, "portrait"

    goto :goto_0

    .line 4927
    :pswitch_2
    nop

    .line 4928
    nop

    .line 4936
    :goto_0
    new-instance v4, Lccsanorg/json/JSONObject;

    invoke-direct {v4}, Lccsanorg/json/JSONObject;-><init>()V

    .line 4938
    :try_start_0
    const-string v0, "orientation"

    invoke-virtual {v4, v0, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 4939
    const-string v0, "locked"

    invoke-virtual {v4, v0, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4942
    goto :goto_1

    .line 4940
    :catch_0
    move-exception v0

    .line 4941
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4944
    :goto_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4945
    const-string v3, "placementType"

    const-string v5, "Interstitial"

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4946
    const-string v3, "state"

    const-string v5, "default"

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4947
    const-string v3, "viewable"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4948
    const-string v2, "currentAppOrientation"

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4950
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->getContext()Lccsanandroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Lccsanandroid/app/Activity;

    if-eqz v2, :cond_0

    .line 4951
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->getContext()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lccsancom/mbridge/msdk/foundation/tools/m;->h(Lccsanandroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    .line 4952
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->getContext()Lccsanandroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lccsancom/mbridge/msdk/foundation/tools/m;->i(Lccsanandroid/content/Context;)I

    move-result v3

    int-to-float v3, v3

    .line 4954
    new-instance v4, Lccsanandroid/util/DisplayMetrics;

    invoke-direct {v4}, Lccsanandroid/util/DisplayMetrics;-><init>()V

    .line 4955
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->getContext()Lccsanandroid/content/Context;

    move-result-object v5

    check-cast v5, Lccsanandroid/app/Activity;

    invoke-virtual {v5}, Lccsanandroid/app/Activity;->getWindowManager()Lccsanandroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Lccsanandroid/view/WindowManager;->getDefaultDisplay()Lccsanandroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v4}, Lccsanandroid/view/Display;->getMetrics(Lccsanandroid/util/DisplayMetrics;)V

    .line 4956
    iget v5, v4, Lccsanandroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v5, v5

    .line 4957
    iget v4, v4, Lccsanandroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v4, v4

    .line 4959
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;->a()Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;

    move-result-object v6

    iget-object v7, v1, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->m:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v6, v7, v2, v3}, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;->b(Lccsanandroid/webkit/WebView;FF)V

    .line 4960
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;->a()Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;

    move-result-object v2

    iget-object v3, v1, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->m:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v2, v3, v5, v4}, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;->c(Lccsanandroid/webkit/WebView;FF)V

    .line 4963
    :cond_0
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;->a()Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;

    move-result-object v6

    iget-object v7, v1, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->m:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 4964
    invoke-virtual {v7}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getLeft()I

    move-result v2

    int-to-float v8, v2

    iget-object v2, v1, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->m:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getTop()I

    move-result v2

    int-to-float v9, v2

    iget-object v2, v1, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->m:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getWidth()I

    move-result v2

    int-to-float v10, v2

    iget-object v2, v1, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->m:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getHeight()I

    move-result v2

    int-to-float v11, v2

    .line 4963
    invoke-virtual/range {v6 .. v11}, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;->a(Lccsanandroid/webkit/WebView;FFFF)V

    .line 4965
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;->a()Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;

    move-result-object v12

    iget-object v13, v1, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->m:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 4966
    invoke-virtual {v13}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getLeft()I

    move-result v2

    int-to-float v14, v2

    iget-object v2, v1, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->m:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getTop()I

    move-result v2

    int-to-float v15, v2

    iget-object v2, v1, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->m:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v1, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->m:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    .line 4965
    move/from16 v16, v2

    move/from16 v17, v3

    invoke-virtual/range {v12 .. v17}, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;->b(Lccsanandroid/webkit/WebView;FFFF)V

    .line 4967
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;->a()Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;

    move-result-object v2

    iget-object v3, v1, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->m:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v2, v3, v0}, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;->a(Lccsanandroid/webkit/WebView;Ljava/util/Map;)V

    .line 4968
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;->a()Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;

    move-result-object v0

    iget-object v2, v1, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->m:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    sget-wide v3, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/d;->a:D

    invoke-virtual {v0, v2, v3, v4}, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;->a(Lccsanandroid/webkit/WebView;D)V

    .line 4969
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;->a()Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;

    move-result-object v0

    iget-object v1, v1, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->m:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;->a(Lccsanandroid/webkit/WebView;)V

    .line 53
    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic d(Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;Z)Z
    .locals 0

    .line 53
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->D:Z

    return p1
.end method

.method static synthetic e(Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;)Ljava/lang/String;
    .locals 0

    .line 53
    iget-object p0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->K:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;Z)Z
    .locals 0

    .line 53
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->y:Z

    return p1
.end method

.method static synthetic f(Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->I:Z

    return p0
.end method

.method static synthetic g(Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->y:Z

    return p0
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 4

    .line 653
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 654
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->C:Z

    .line 655
    nop

    .line 656
    iget-object v2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isMraid()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 657
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->v:Z

    .line 658
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMraid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 659
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 661
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 662
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file:////"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 664
    :cond_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getEndScreenUrl()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 670
    :goto_0
    goto :goto_1

    .line 666
    :catchall_0
    move-exception v1

    .line 667
    sget-boolean v2, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 668
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 671
    :cond_1
    :goto_1
    goto :goto_2

    .line 672
    :cond_2
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getEndScreenUrl()Ljava/lang/String;

    move-result-object v0

    .line 674
    :goto_2
    return-object v0

    .line 676
    :cond_3
    iget-object v2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object v2

    .line 677
    invoke-static {v2}, Lccsancom/mbridge/msdk/foundation/tools/x;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 678
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->v:Z

    .line 679
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/g;->a()Lccsancom/mbridge/msdk/videocommon/download/g;

    move-result-object v0

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/videocommon/download/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 680
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v3, "&native_adtype="

    if-eqz v1, :cond_4

    .line 681
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 682
    return-object v0

    .line 684
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 685
    return-object v0

    .line 688
    :cond_5
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->v:Z

    .line 689
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getEndScreenUrl()Ljava/lang/String;

    move-result-object v0

    .line 691
    return-object v0

    .line 694
    :cond_6
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->C:Z

    .line 695
    const/4 v0, 0x0

    return-object v0
.end method

.method protected b()Lccsanandroid/widget/RelativeLayout$LayoutParams;
    .locals 2

    .line 643
    new-instance v0, Lccsanandroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lccsanandroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected final c()V
    .locals 2

    .line 159
    invoke-super {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;->c()V

    .line 160
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->f:Z

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->l:Lccsanandroid/widget/ImageView;

    new-instance v1, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$2;

    invoke-direct {v1, p0}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$2;-><init>(Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;)V

    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 168
    :cond_0
    return-void
.end method

.method public canBackPress()Z
    .locals 1

    .line 600
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->l:Lccsanandroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsanandroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public close()V
    .locals 2

    .line 1030
    :try_start_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->onCloseViewClick()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1033
    goto :goto_0

    .line 1031
    :catch_0
    move-exception v0

    .line 1032
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MBridgeBaseView"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    :goto_0
    return-void
.end method

.method public defaultShow()V
    .locals 0

    .line 415
    invoke-super {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;->defaultShow()V

    .line 416
    return-void
.end method

.method protected e()V
    .locals 1

    .line 647
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->f:Z

    if-eqz v0, :cond_0

    .line 648
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->setMatchParent()V

    .line 650
    :cond_0
    return-void
.end method

.method public excuteEndCardShowTask(I)V
    .locals 4

    .line 760
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->n:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$c;

    invoke-direct {v1, p0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$c;-><init>(Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;I)V

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lccsanandroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 761
    return-void
.end method

.method public excuteTask()V
    .locals 4

    .line 729
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->v:Z

    if-nez v0, :cond_0

    iget v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->w:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 730
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->n:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$f;

    invoke-direct {v1, p0, p0}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$f;-><init>(Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;)V

    iget v2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->w:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lccsanandroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 732
    :cond_0
    return-void
.end method

.method public executeEndCardShow(I)V
    .locals 4

    .line 756
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->n:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$b;

    invoke-direct {v1, p0, p0}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$b;-><init>(Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;)V

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lccsanandroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 757
    return-void
.end method

.method public expand(Ljava/lang/String;Z)V
    .locals 0

    .line 1057
    return-void
.end method

.method public getMraidCampaign()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;
    .locals 1

    .line 1043
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    return-object v0
.end method

.method public handlerPlayableException(Ljava/lang/String;)V
    .locals 2

    .line 522
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->q:Z

    if-nez v0, :cond_0

    .line 523
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->q:Z

    .line 524
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->p:Z

    .line 525
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_0

    .line 526
    new-instance v0, Lccsancom/mbridge/msdk/foundation/entity/m;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/foundation/entity/m;-><init>()V

    .line 527
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/entity/m;->k(Ljava/lang/String;)V

    .line 528
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/entity/m;->l(Ljava/lang/String;)V

    .line 529
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/entity/m;->n(Ljava/lang/String;)V

    .line 530
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->p(Ljava/lang/String;)V

    .line 531
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->a:Lccsanandroid/content/Context;

    invoke-virtual {p1}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->r:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lccsancom/mbridge/msdk/foundation/same/report/b;->d(Lccsancom/mbridge/msdk/foundation/entity/m;Lccsanandroid/content/Context;Ljava/lang/String;)V

    .line 534
    :cond_0
    return-void
.end method

.method public init(Lccsanandroid/content/Context;)V
    .locals 2

    .line 147
    const-string p1, "mbridge_reward_endcard_h5"

    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->findLayout(Ljava/lang/String;)I

    move-result p1

    .line 148
    if-ltz p1, :cond_0

    .line 149
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->c:Lccsanandroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lccsanandroid/view/LayoutInflater;->inflate(ILccsanandroid/view/ViewGroup;)Lccsanandroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->j:Lccsanandroid/view/View;

    .line 150
    nop

    .line 1700
    const-string v0, "mbridge_windwv_close"

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->findID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/ImageView;

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->l:Lccsanandroid/widget/ImageView;

    .line 1701
    const-string v0, "mbridge_windwv_content_rl"

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->findID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object p1

    check-cast p1, Lccsanandroid/widget/RelativeLayout;

    iput-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->k:Lccsanandroid/widget/RelativeLayout;

    .line 1702
    new-instance p1, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;-><init>(Lccsanandroid/content/Context;)V

    iput-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->m:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 1703
    new-instance p1, Lccsanandroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Lccsanandroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1705
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->m:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 1706
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->k:Lccsanandroid/widget/RelativeLayout;

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->m:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {p1, v0}, Lccsanandroid/widget/RelativeLayout;->addView(Lccsanandroid/view/View;)V

    .line 1707
    const/4 p1, 0x2

    new-array p1, p1, [Lccsanandroid/view/View;

    const/4 v0, 0x0

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->l:Lccsanandroid/widget/ImageView;

    aput-object v1, p1, v0

    const/4 v0, 0x1

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->m:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    aput-object v1, p1, v0

    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->isNotNULL([Lccsanandroid/view/View;)Z

    move-result p1

    .line 150
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->f:Z

    .line 151
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->j:Lccsanandroid/view/View;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->b()Lccsanandroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->addView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 152
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->c()V

    .line 153
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->e()V

    .line 155
    :cond_0
    return-void
.end method

.method public install(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 0

    .line 421
    return-void
.end method

.method public isLoadSuccess()Z
    .locals 1

    .line 604
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->p:Z

    return v0
.end method

.method public isPlayable()Z
    .locals 1

    .line 888
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->v:Z

    return v0
.end method

.method public notifyCloseBtn(I)V
    .locals 1

    .line 425
    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 430
    :pswitch_0
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->F:Z

    goto :goto_0

    .line 427
    :pswitch_1
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->E:Z

    .line 428
    nop

    .line 433
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPress()V
    .locals 2

    .line 892
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->D:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->E:Z

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->F:Z

    if-nez v1, :cond_2

    :cond_0
    if-nez v0, :cond_1

    iget-boolean v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->G:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->t:Z

    if-eqz v1, :cond_2

    :cond_1
    if-nez v0, :cond_3

    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->H:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->t:Z

    if-eqz v0, :cond_3

    .line 896
    :cond_2
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->onCloseViewClick()V

    .line 898
    :cond_3
    return-void
.end method

.method public onCloseViewClick()V
    .locals 6

    .line 172
    const-string v0, ""

    const/16 v1, 0x77

    const/16 v2, 0x67

    :try_start_0
    iget-object v3, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->m:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    if-eqz v3, :cond_0

    .line 173
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object v3

    iget-object v4, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->m:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    const-string v5, "onSystemDestory"

    invoke-virtual {v3, v4, v5, v0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$a;

    invoke-direct {v4, p0, p0}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$a;-><init>(Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 176
    :cond_0
    iget-object v3, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->e:Lccsancom/mbridge/msdk/video/module/a/a;

    invoke-interface {v3, v2, v0}, Lccsancom/mbridge/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 177
    iget-object v3, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->e:Lccsancom/mbridge/msdk/video/module/a/a;

    const-string v4, "webview is null when closing webview"

    invoke-interface {v3, v1, v4}, Lccsancom/mbridge/msdk/video/module/a/a;->a(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :goto_0
    goto :goto_1

    .line 179
    :catch_0
    move-exception v3

    .line 180
    iget-object v4, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->e:Lccsancom/mbridge/msdk/video/module/a/a;

    invoke-interface {v4, v2, v0}, Lccsancom/mbridge/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 181
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->e:Lccsancom/mbridge/msdk/video/module/a/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "close webview exception"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lccsancom/mbridge/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 182
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MBridgeBaseView"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :goto_1
    return-void
.end method

.method public onSelfConfigurationChanged(Lccsanandroid/content/res/Configuration;)V
    .locals 0

    .line 141
    invoke-super {p0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;->onSelfConfigurationChanged(Lccsanandroid/content/res/Configuration;)V

    .line 142
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->orientation(Lccsanandroid/content/res/Configuration;)V

    .line 143
    return-void
.end method

.method protected onVisibilityChanged(Lccsanandroid/view/View;I)V
    .locals 0

    .line 991
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;->onVisibilityChanged(Lccsanandroid/view/View;I)V

    .line 992
    if-nez p2, :cond_0

    iget-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->J:Z

    if-nez p1, :cond_0

    .line 993
    const/4 p1, 0x1

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->J:Z

    .line 994
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->setFocusableInTouchMode(Z)V

    .line 995
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->requestFocus()Z

    .line 996
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->requestFocusFromTouch()Z

    .line 998
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .line 979
    invoke-super {p0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;->onWindowFocusChanged(Z)V

    .line 980
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isMraid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 981
    if-eqz p1, :cond_0

    .line 982
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;->a()Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;

    move-result-object p1

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->m:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    const-string v1, "true"

    invoke-virtual {p1, v0, v1}, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;->b(Lccsanandroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_0

    .line 984
    :cond_0
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;->a()Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;

    move-result-object p1

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->m:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    const-string v1, "false"

    invoke-virtual {p1, v0, v1}, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;->b(Lccsanandroid/webkit/WebView;Ljava/lang/String;)V

    .line 987
    :cond_1
    :goto_0
    return-void
.end method

.method public open(Ljava/lang/String;)V
    .locals 9

    .line 1003
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getClickURL()Ljava/lang/String;

    move-result-object v0

    .line 1004
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1005
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1, p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setClickURL(Ljava/lang/String;)V

    .line 1006
    nop

    .line 4020
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->getMraidCampaign()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v1

    .line 4021
    if-eqz v1, :cond_0

    .line 4022
    new-instance v2, Lccsancom/mbridge/msdk/foundation/same/report/c;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->getContext()Lccsanandroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lccsancom/mbridge/msdk/foundation/same/report/c;-><init>(Lccsanandroid/content/Context;)V

    .line 4023
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->r:Ljava/lang/String;

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isBidCampaign()Z

    move-result v8

    move-object v7, p1

    invoke-virtual/range {v2 .. v8}, Lccsancom/mbridge/msdk/foundation/same/report/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1008
    :cond_0
    new-instance p1, Lccsancom/mbridge/msdk/click/a;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->r:Ljava/lang/String;

    invoke-direct {p1, v1, v2}, Lccsancom/mbridge/msdk/click/a;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    .line 1009
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1, v1}, Lccsancom/mbridge/msdk/click/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 1010
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setClickURL(Ljava/lang/String;)V

    .line 1012
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->e:Lccsancom/mbridge/msdk/video/module/a/a;

    const/16 v0, 0x7e

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Lccsancom/mbridge/msdk/video/module/a/a;->a(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1016
    goto :goto_0

    .line 1014
    :catch_0
    move-exception p1

    .line 1015
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MBridgeBaseView"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    :goto_0
    return-void
.end method

.method public orientation(Lccsanandroid/content/res/Configuration;)V
    .locals 3

    .line 586
    :try_start_0
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    .line 587
    iget p1, p1, Lccsanandroid/content/res/Configuration;->orientation:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x2

    const-string v2, "orientation"

    if-ne p1, v1, :cond_0

    .line 588
    :try_start_1
    const-string p1, "landscape"

    invoke-virtual {v0, v2, p1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    goto :goto_0

    .line 590
    :cond_0
    const-string p1, "portrait"

    invoke-virtual {v0, v2, p1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 592
    :goto_0
    invoke-virtual {v0}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1, v1}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    .line 593
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->m:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v0, v1, v2, p1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 596
    goto :goto_1

    .line 594
    :catch_0
    move-exception p1

    .line 595
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 597
    :goto_1
    return-void
.end method

.method public preLoadData(Lccsancom/mbridge/msdk/video/signal/factory/b;)V
    .locals 9

    .line 212
    const-string v0, "wfr=1"

    const-string v1, "="

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->a()Ljava/lang/String;

    move-result-object v3

    .line 213
    iget-boolean v2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->f:Z

    const/4 v8, 0x0

    if-eqz v2, :cond_a

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v2, :cond_a

    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 214
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->B:J

    .line 216
    :try_start_0
    const-string v2, "start"

    invoke-virtual {p0, v2, v8}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->reportRenderResult(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    goto :goto_0

    .line 217
    :catch_0
    move-exception v2

    .line 220
    :goto_0
    new-instance v2, Lccsancom/mbridge/msdk/foundation/webview/BrowserView$MBDownloadListener;

    iget-object v4, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-direct {v2, v4}, Lccsancom/mbridge/msdk/foundation/webview/BrowserView$MBDownloadListener;-><init>(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 221
    iget-object v4, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAppName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lccsancom/mbridge/msdk/foundation/webview/BrowserView$MBDownloadListener;->setTitle(Ljava/lang/String;)V

    .line 222
    iget-object v4, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->m:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v4, v2}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->setDownloadListener(Lccsanandroid/webkit/DownloadListener;)V

    .line 223
    iget-object v2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->m:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    iget-object v4, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->setCampaignId(Ljava/lang/String;)V

    .line 224
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->setCloseVisible(I)V

    .line 225
    iget-object v2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->m:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v2, p1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->setApiManagerJSFactory(Ljava/lang/Object;)V

    .line 226
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isMraid()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 227
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->m:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {p1, p0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->setMraidObject(Ljava/lang/Object;)V

    .line 229
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->m:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    new-instance v2, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$3;

    invoke-direct {v2, p0}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$3;-><init>(Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;)V

    invoke-virtual {p1, v2}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->setWebViewListener(Lccsancom/mbridge/msdk/mbsignalcommon/windvane/d;)V

    .line 307
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMraid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v2, "MBridgeBaseView"

    if-eqz p1, :cond_8

    .line 308
    nop

    .line 2383
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->B:J

    .line 2384
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object p1

    .line 2385
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/d/b;->a()Lccsancom/mbridge/msdk/videocommon/d/b;

    move-result-object v4

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v5

    invoke-virtual {v5}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->r:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lccsancom/mbridge/msdk/videocommon/d/b;->a(Ljava/lang/String;Ljava/lang/String;)Lccsancom/mbridge/msdk/videocommon/d/c;

    move-result-object v4

    .line 2386
    iget-boolean v5, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->v:Z

    if-eqz v5, :cond_7

    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/tools/x;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/videocommon/d/c;->m()I

    move-result v5

    if-lez v5, :cond_7

    .line 2387
    :cond_1
    nop

    .line 2388
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v5, 0x14

    if-eqz v0, :cond_4

    .line 2389
    const-string v0, "&"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 2390
    if-eqz p1, :cond_3

    array-length v0, p1

    if-lez v0, :cond_3

    .line 2391
    array-length v0, p1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_3

    aget-object v6, p1, v4

    .line 2392
    invoke-static {v6}, Lccsancom/mbridge/msdk/foundation/tools/x;->b(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "to"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v6, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v6, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v7, v7

    if-lez v7, :cond_2

    .line 2393
    invoke-virtual {v6, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 2394
    const/4 v0, 0x1

    aget-object p1, p1, v0

    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/tools/u;->a(Ljava/lang/Object;)I

    move-result p1

    .line 2395
    goto :goto_2

    .line 2391
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2399
    :cond_3
    const/16 p1, 0x14

    :goto_2
    goto :goto_3

    :cond_4
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/videocommon/d/c;->m()I

    move-result p1

    if-lez p1, :cond_5

    .line 2400
    invoke-virtual {v4}, Lccsancom/mbridge/msdk/videocommon/d/c;->m()I

    move-result p1

    goto :goto_3

    .line 2402
    :cond_5
    const/16 p1, 0x14

    :goto_3
    if-ltz p1, :cond_6

    .line 2403
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->excuteEndCardShowTask(I)V

    goto :goto_4

    .line 2405
    :cond_6
    invoke-virtual {p0, v5}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->excuteEndCardShowTask(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2410
    :cond_7
    :goto_4
    goto :goto_5

    .line 2408
    :catchall_0
    move-exception p1

    .line 2409
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 311
    :cond_8
    :goto_5
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/h;->a()Lccsancom/mbridge/msdk/videocommon/download/h;

    move-result-object p1

    invoke-virtual {p1, v3}, Lccsancom/mbridge/msdk/videocommon/download/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 312
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->setHtmlSource(Ljava/lang/String;)V

    .line 315
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->o:Ljava/lang/String;

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 316
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "load url:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->m:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {p1, v3}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_6

    .line 319
    :cond_9
    const-string p1, "load html..."

    invoke-static {v2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    iget-object v2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->m:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    iget-object v4, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->o:Ljava/lang/String;

    const/4 v7, 0x0

    const-string v5, "text/html"

    const-string v6, "UTF-8"

    invoke-virtual/range {v2 .. v7}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    :goto_6
    goto :goto_7

    .line 323
    :cond_a
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->e:Lccsancom/mbridge/msdk/video/module/a/a;

    const/16 v0, 0x65

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Lccsancom/mbridge/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 325
    :goto_7
    iput-boolean v8, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->t:Z

    .line 326
    return-void
.end method

.method public readyStatus(I)V
    .locals 0

    .line 539
    return-void
.end method

.method public release()V
    .locals 2

    .line 907
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->n:Lccsanandroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 908
    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 909
    iput-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->n:Lccsanandroid/os/Handler;

    .line 911
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->s:Lccsanandroid/os/Handler;

    if-eqz v0, :cond_1

    .line 912
    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 913
    iput-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->s:Lccsanandroid/os/Handler;

    .line 916
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->k:Lccsanandroid/widget/RelativeLayout;

    invoke-virtual {v0}, Lccsanandroid/widget/RelativeLayout;->removeAllViews()V

    .line 917
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->m:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->release()V

    .line 918
    iput-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->m:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 919
    return-void
.end method

.method public reportRenderResult(Ljava/lang/String;I)V
    .locals 5

    .line 329
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->q:Z

    if-nez v0, :cond_5

    .line 330
    new-instance v0, Lccsancom/mbridge/msdk/foundation/entity/m;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/foundation/entity/m;-><init>()V

    .line 331
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/entity/m;->k(Ljava/lang/String;)V

    .line 332
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/entity/m;->l(Ljava/lang/String;)V

    .line 333
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/entity/m;->n(Ljava/lang/String;)V

    .line 334
    invoke-virtual {v0, p2}, Lccsancom/mbridge/msdk/foundation/entity/m;->c(I)V

    .line 335
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->B:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lccsancom/mbridge/msdk/foundation/entity/m;->q(Ljava/lang/String;)V

    .line 336
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->p(Ljava/lang/String;)V

    .line 337
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    move-result p1

    const/16 p2, 0x11f

    const-string v1, "2"

    const-string v2, "1"

    if-ne p1, p2, :cond_0

    .line 338
    const-string p1, "3"

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->h(Ljava/lang/String;)V

    goto :goto_0

    .line 339
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    move-result p1

    const/16 p2, 0x5e

    if-ne p1, p2, :cond_1

    .line 340
    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/entity/m;->h(Ljava/lang/String;)V

    goto :goto_0

    .line 341
    :cond_1
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    move-result p1

    const/16 p2, 0x2a

    if-ne p1, p2, :cond_2

    .line 342
    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/entity/m;->h(Ljava/lang/String;)V

    .line 344
    :cond_2
    :goto_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isMraid()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 345
    sget p1, Lccsancom/mbridge/msdk/foundation/entity/m;->a:I

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->a(I)V

    goto :goto_1

    .line 347
    :cond_3
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->f(Ljava/lang/String;)V

    .line 348
    nop

    .line 349
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/tools/x;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object p1

    const-string p2, ".zip"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 350
    move-object v1, v2

    .line 352
    :cond_4
    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/entity/m;->g(Ljava/lang/String;)V

    .line 353
    sget p1, Lccsancom/mbridge/msdk/foundation/entity/m;->b:I

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->a(I)V

    .line 355
    :goto_1
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->r:Ljava/lang/String;

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/same/report/b;->b(Lccsancom/mbridge/msdk/foundation/entity/m;Ljava/lang/String;)V

    .line 357
    :cond_5
    return-void
.end method

.method public setCloseDelayShowTime(I)V
    .locals 0

    .line 612
    iput p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->w:I

    .line 613
    return-void
.end method

.method public setCloseVisible(I)V
    .locals 1

    .line 624
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->f:Z

    if-eqz v0, :cond_0

    .line 625
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->l:Lccsanandroid/widget/ImageView;

    invoke-virtual {v0, p1}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 627
    :cond_0
    return-void
.end method

.method public setCloseVisibleForMraid(I)V
    .locals 2

    .line 630
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->f:Z

    if-eqz v0, :cond_1

    .line 631
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->I:Z

    .line 633
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 634
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->l:Lccsanandroid/widget/ImageView;

    new-instance v0, Lccsanandroid/graphics/drawable/ColorDrawable;

    const/high16 v1, 0xff0000

    invoke-direct {v0, v1}, Lccsanandroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Lccsanandroid/widget/ImageView;->setImageDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 636
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->l:Lccsanandroid/widget/ImageView;

    const-string v0, "mbridge_reward_close"

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->findDrawable(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lccsanandroid/widget/ImageView;->setImageResource(I)V

    .line 638
    :goto_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->l:Lccsanandroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 640
    :cond_1
    return-void
.end method

.method public setError(Z)V
    .locals 0

    .line 207
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->q:Z

    .line 208
    return-void
.end method

.method public setHtmlSource(Ljava/lang/String;)V
    .locals 0

    .line 620
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->o:Ljava/lang/String;

    .line 621
    return-void
.end method

.method public setLoadPlayable(Z)V
    .locals 0

    .line 903
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->t:Z

    .line 904
    return-void
.end method

.method public setNotchValue(Ljava/lang/String;IIII)V
    .locals 3

    .line 1060
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->K:Ljava/lang/String;

    .line 1061
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "NOTCH H5ENDCARD "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "%1s-%2s-%3s-%4s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MBridgeBaseView"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->l:Lccsanandroid/widget/ImageView;

    invoke-virtual {p1}, Lccsanandroid/widget/ImageView;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lccsanandroid/widget/RelativeLayout$LayoutParams;

    .line 1063
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Lccsanandroid/content/Context;F)I

    move-result v0

    .line 1064
    add-int/2addr p2, v0

    add-int/2addr p4, v0

    add-int/2addr p3, v0

    add-int/2addr p5, v0

    invoke-virtual {p1, p2, p4, p3, p5}, Lccsanandroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1065
    iget-object p2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->l:Lccsanandroid/widget/ImageView;

    invoke-virtual {p2, p1}, Lccsanandroid/widget/ImageView;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 1066
    return-void
.end method

.method public setPlayCloseBtnTm(I)V
    .locals 0

    .line 616
    iput p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->x:I

    .line 617
    return-void
.end method

.method public setUnitId(Ljava/lang/String;)V
    .locals 0

    .line 608
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->r:Ljava/lang/String;

    .line 609
    return-void
.end method

.method public startCounterEndCardShowTimer()V
    .locals 7

    .line 361
    const-string v0, "="

    :try_start_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object v1

    .line 362
    const/16 v2, 0xf

    .line 363
    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/tools/x;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "wfl=1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 364
    const-string v3, "&"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 365
    if-eqz v1, :cond_1

    array-length v3, v1

    if-lez v3, :cond_1

    .line 366
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v1, v4

    .line 367
    invoke-static {v5}, Lccsancom/mbridge/msdk/foundation/tools/x;->b(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "timeout"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    if-lez v6, :cond_0

    .line 368
    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 369
    const/4 v5, 0x1

    aget-object v2, v2, v5

    invoke-static {v2}, Lccsancom/mbridge/msdk/foundation/tools/u;->a(Ljava/lang/Object;)I

    move-result v2

    .line 366
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 373
    :cond_1
    invoke-virtual {p0, v2}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->executeEndCardShow(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 377
    :cond_2
    goto :goto_1

    .line 375
    :catchall_0
    move-exception v0

    .line 376
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MBridgeBaseView"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    :goto_1
    return-void
.end method

.method public toggleCloseBtn(I)V
    .locals 4

    .line 437
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->l:Lccsanandroid/widget/ImageView;

    invoke-virtual {v0}, Lccsanandroid/widget/ImageView;->getVisibility()I

    move-result v0

    .line 438
    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_3

    .line 444
    :pswitch_0
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->D:Z

    .line 445
    const/16 v0, 0x8

    .line 446
    iget-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->t:Z

    const/4 v3, -0x1

    if-eqz p1, :cond_4

    .line 447
    nop

    .line 2506
    iget-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->M:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->E:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2509
    :cond_0
    iput-boolean v2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->M:Z

    .line 2510
    iget p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->x:I

    if-nez p1, :cond_1

    .line 2511
    iput-boolean v2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->H:Z

    .line 2512
    goto :goto_1

    .line 2514
    :cond_1
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->H:Z

    .line 2515
    if-le p1, v3, :cond_3

    .line 2516
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->n:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$e;

    invoke-direct {v1, p0, p0}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$e;-><init>(Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;)V

    iget v2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->x:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {p1, v1, v2, v3}, Lccsanandroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 2507
    :cond_2
    :goto_0
    nop

    .line 447
    :cond_3
    :goto_1
    goto :goto_3

    .line 449
    :cond_4
    nop

    .line 3459
    iget-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->L:Z

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->E:Z

    if-eqz p1, :cond_5

    goto :goto_2

    .line 3462
    :cond_5
    iput-boolean v2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->L:Z

    .line 3463
    iget p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->w:I

    if-nez p1, :cond_6

    .line 3464
    iput-boolean v2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->G:Z

    .line 3465
    goto :goto_3

    .line 3467
    :cond_6
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->G:Z

    .line 3468
    if-le p1, v3, :cond_8

    .line 3469
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->n:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$d;

    invoke-direct {v1, p0, p0}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$d;-><init>(Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;)V

    iget v2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->w:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {p1, v1, v2, v3}, Lccsanandroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    .line 3460
    :cond_7
    :goto_2
    goto :goto_3

    .line 440
    :pswitch_1
    nop

    .line 441
    iput-boolean v2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->D:Z

    .line 442
    const/4 v0, 0x0

    .line 453
    :cond_8
    :goto_3
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->setCloseVisible(I)V

    .line 454
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public unload()V
    .locals 0

    .line 1038
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->close()V

    .line 1039
    return-void
.end method

.method public useCustomClose(Z)V
    .locals 1

    .line 1049
    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->setCloseVisibleForMraid(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1052
    goto :goto_1

    .line 1050
    :catch_0
    move-exception p1

    .line 1051
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MBridgeBaseView"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    :goto_1
    return-void
.end method

.method public volumeChange(D)V
    .locals 2

    .line 974
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;->a()Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->m:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v0, v1, p1, p2}, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;->a(Lccsanandroid/webkit/WebView;D)V

    .line 975
    return-void
.end method

.method public webviewshow()V
    .locals 2

    .line 543
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->m:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    if-eqz v0, :cond_0

    .line 544
    new-instance v1, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$4;

    invoke-direct {v1, p0}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$4;-><init>(Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;)V

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->post(Ljava/lang/Runnable;)Z

    .line 581
    :cond_0
    return-void
.end method
