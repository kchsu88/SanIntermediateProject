.class public Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;
.super Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;
.source "MBridgeClickMiniCardView.java"


# instance fields
.field private u:Z


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;-><init>(Lccsanandroid/content/Context;)V

    .line 31
    const/4 p1, 0x0

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;->u:Z

    .line 36
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 31
    const/4 p1, 0x0

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;->u:Z

    .line 40
    return-void
.end method

.method private a(Lccsanandroid/view/View;)V
    .locals 4

    .line 126
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;->a:Lccsanandroid/content/Context;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/u;->h(Lccsanandroid/content/Context;)I

    move-result v0

    .line 127
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;->a:Lccsanandroid/content/Context;

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/tools/u;->g(Lccsanandroid/content/Context;)I

    move-result v1

    .line 128
    int-to-float v0, v0

    const v2, 0x3f333333    # 0.7f

    mul-float v0, v0, v2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v0, v3

    float-to-int v0, v0

    .line 129
    int-to-float v1, v1

    mul-float v1, v1, v2

    add-float/2addr v1, v3

    float-to-int v1, v1

    .line 130
    invoke-virtual {p1}, Lccsanandroid/view/View;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 131
    iput v0, v2, Lccsanandroid/view/ViewGroup$LayoutParams;->width:I

    .line 132
    iput v1, v2, Lccsanandroid/view/ViewGroup$LayoutParams;->height:I

    .line 133
    invoke-virtual {p1, v2}, Lccsanandroid/view/View;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 134
    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 3

    .line 71
    nop

    .line 72
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v0

    .line 74
    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;->c()Ljava/lang/String;

    move-result-object v1

    .line 77
    :cond_0
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".zip"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/g;->a()Lccsancom/mbridge/msdk/videocommon/download/g;

    move-result-object v0

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/videocommon/download/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 80
    move-object v1, v0

    .line 84
    :cond_1
    return-object v1
.end method

.method protected final b()Lccsanandroid/widget/RelativeLayout$LayoutParams;
    .locals 3

    .line 53
    new-instance v0, Lccsanandroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Lccsanandroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 54
    const/16 v1, 0xd

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lccsanandroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 55
    return-object v0
.end method

.method protected final e()V
    .locals 1

    .line 61
    invoke-super {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->e()V

    .line 62
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;->f:Z

    if-eqz v0, :cond_0

    .line 63
    const-string v0, "mbridge_reward_minicard_bg"

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;->findColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;->setBackgroundResource(I)V

    .line 64
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;->j:Lccsanandroid/view/View;

    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;->a(Lccsanandroid/view/View;)V

    .line 65
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;->setClickable(Z)V

    .line 67
    :cond_0
    return-void
.end method

.method public onSelfConfigurationChanged(Lccsanandroid/content/res/Configuration;)V
    .locals 1

    .line 45
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;->f:Z

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;->j:Lccsanandroid/view/View;

    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;->a(Lccsanandroid/view/View;)V

    .line 48
    :cond_0
    invoke-super {p0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->onSelfConfigurationChanged(Lccsanandroid/content/res/Configuration;)V

    .line 49
    return-void
.end method

.method public preLoadData(Lccsancom/mbridge/msdk/video/signal/factory/b;)V
    .locals 0

    .line 89
    invoke-super {p0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->preLoadData(Lccsancom/mbridge/msdk/video/signal/factory/b;)V

    .line 90
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;->setCloseVisible(I)V

    .line 91
    return-void
.end method

.method public resizeMiniCard(II)V
    .locals 2

    .line 150
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 151
    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;->a:Lccsanandroid/content/Context;

    check-cast v0, Lccsanandroid/app/Activity;

    invoke-virtual {v0}, Lccsanandroid/app/Activity;->getWindow()Lccsanandroid/view/Window;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Lccsanandroid/view/Window;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Lccsanandroid/view/View;->getWidth()I

    move-result v1

    .line 155
    invoke-virtual {v0}, Lccsanandroid/view/View;->getHeight()I

    move-result v0

    .line 156
    if-lez p1, :cond_1

    if-lez p2, :cond_1

    if-gt p1, v1, :cond_1

    if-gt p2, v0, :cond_1

    .line 157
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;->j:Lccsanandroid/view/View;

    invoke-virtual {v0}, Lccsanandroid/view/View;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 158
    iput p1, v0, Lccsanandroid/view/ViewGroup$LayoutParams;->width:I

    .line 159
    iput p2, v0, Lccsanandroid/view/ViewGroup$LayoutParams;->height:I

    .line 160
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;->j:Lccsanandroid/view/View;

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 162
    :cond_1
    return-void
.end method

.method public setMBridgeClickMiniCardViewClickable(Z)V
    .locals 0

    .line 141
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;->setClickable(Z)V

    .line 142
    return-void
.end method

.method public setMBridgeClickMiniCardViewTransparent()V
    .locals 1

    .line 137
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;->setBackgroundColor(I)V

    .line 138
    return-void
.end method

.method public setMiniCardLocation(IIII)V
    .locals 0

    .line 145
    const/4 p1, 0x1

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;->u:Z

    .line 146
    invoke-virtual {p0, p3, p4}, Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;->resizeMiniCard(II)V

    .line 147
    return-void
.end method

.method public setRadius(I)V
    .locals 2

    .line 165
    if-lez p1, :cond_1

    .line 166
    new-instance v0, Lccsanandroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Lccsanandroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 167
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    int-to-float p1, p1

    invoke-static {v1, p1}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Lccsanandroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lccsanandroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 168
    const/4 p1, -0x1

    invoke-virtual {v0, p1}, Lccsanandroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 169
    sget p1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt p1, v1, :cond_0

    .line 170
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;->m:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->setBackground(Lccsanandroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 172
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;->m:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->setBackgroundDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 174
    :goto_0
    sget p1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_1

    .line 175
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;->m:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->setClipToOutline(Z)V

    .line 178
    :cond_1
    return-void
.end method

.method public webviewshow()V
    .locals 2

    .line 95
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;->m:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;->m:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    new-instance v1, Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView$1;

    invoke-direct {v1, p0}, Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView$1;-><init>(Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;)V

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->post(Ljava/lang/Runnable;)Z

    .line 122
    :cond_0
    return-void
.end method
