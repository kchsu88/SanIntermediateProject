.class public Lccsancom/mbridge/msdk/video/module/MBridgeVastEndCardView;
.super Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;
.source "MBridgeVastEndCardView.java"


# instance fields
.field private j:Lccsanandroid/view/ViewGroup;

.field private k:Lccsanandroid/view/View;

.field private l:Lccsanandroid/view/View;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;-><init>(Lccsanandroid/content/Context;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 27
    return-void
.end method


# virtual methods
.method protected final c()V
    .locals 2

    .line 52
    invoke-super {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;->c()V

    .line 53
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVastEndCardView;->f:Z

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVastEndCardView;->k:Lccsanandroid/view/View;

    new-instance v1, Lccsancom/mbridge/msdk/video/module/MBridgeVastEndCardView$1;

    invoke-direct {v1, p0}, Lccsancom/mbridge/msdk/video/module/MBridgeVastEndCardView$1;-><init>(Lccsancom/mbridge/msdk/video/module/MBridgeVastEndCardView;)V

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 60
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVastEndCardView;->l:Lccsanandroid/view/View;

    new-instance v1, Lccsancom/mbridge/msdk/video/module/MBridgeVastEndCardView$2;

    invoke-direct {v1, p0}, Lccsancom/mbridge/msdk/video/module/MBridgeVastEndCardView$2;-><init>(Lccsancom/mbridge/msdk/video/module/MBridgeVastEndCardView;)V

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 67
    :cond_0
    return-void
.end method

.method public init(Lccsanandroid/content/Context;)V
    .locals 3

    .line 31
    const-string p1, "ccsan_mbridge_reward_endcard_vast"

    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeVastEndCardView;->findLayout(Ljava/lang/String;)I

    move-result p1

    .line 32
    if-ltz p1, :cond_0

    .line 33
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVastEndCardView;->c:Lccsanandroid/view/LayoutInflater;

    invoke-virtual {v0, p1, p0}, Lccsanandroid/view/LayoutInflater;->inflate(ILccsanandroid/view/ViewGroup;)Lccsanandroid/view/View;

    .line 34
    nop

    .line 1075
    const-string p1, "mbridge_rl_content"

    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeVastEndCardView;->findID(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeVastEndCardView;->findViewById(I)Lccsanandroid/view/View;

    move-result-object p1

    check-cast p1, Lccsanandroid/view/ViewGroup;

    iput-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVastEndCardView;->j:Lccsanandroid/view/ViewGroup;

    .line 1076
    const-string p1, "mbridge_iv_vastclose"

    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeVastEndCardView;->findID(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeVastEndCardView;->findViewById(I)Lccsanandroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVastEndCardView;->k:Lccsanandroid/view/View;

    .line 1077
    const-string p1, "mbridge_iv_vastok"

    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeVastEndCardView;->findID(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeVastEndCardView;->findViewById(I)Lccsanandroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVastEndCardView;->l:Lccsanandroid/view/View;

    .line 1078
    const/4 v0, 0x3

    new-array v0, v0, [Lccsanandroid/view/View;

    const/4 v1, 0x0

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVastEndCardView;->j:Lccsanandroid/view/ViewGroup;

    aput-object v2, v0, v1

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVastEndCardView;->k:Lccsanandroid/view/View;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/video/module/MBridgeVastEndCardView;->isNotNULL([Lccsanandroid/view/View;)Z

    move-result p1

    .line 34
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVastEndCardView;->f:Z

    .line 35
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeVastEndCardView;->c()V

    .line 36
    nop

    .line 2041
    iget-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVastEndCardView;->f:Z

    if-eqz p1, :cond_0

    .line 2042
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeVastEndCardView;->setMatchParent()V

    .line 2043
    const-string p1, "ccsan_mbridge_reward_endcard_vast_bg"

    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeVastEndCardView;->findColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeVastEndCardView;->setBackgroundResource(I)V

    .line 2044
    invoke-virtual {p0, v2}, Lccsancom/mbridge/msdk/video/module/MBridgeVastEndCardView;->setClickable(Z)V

    .line 2045
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVastEndCardView;->j:Lccsanandroid/view/ViewGroup;

    invoke-virtual {p1}, Lccsanandroid/view/ViewGroup;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lccsanandroid/widget/RelativeLayout$LayoutParams;

    .line 2046
    const/16 v0, 0xd

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lccsanandroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 38
    :cond_0
    return-void
.end method

.method public notifyShowListener()V
    .locals 3

    .line 82
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVastEndCardView;->e:Lccsancom/mbridge/msdk/video/module/a/a;

    const/16 v1, 0x6f

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lccsancom/mbridge/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 83
    return-void
.end method

.method public preLoadData(Lccsancom/mbridge/msdk/video/signal/factory/b;)V
    .locals 0

    .line 72
    return-void
.end method
