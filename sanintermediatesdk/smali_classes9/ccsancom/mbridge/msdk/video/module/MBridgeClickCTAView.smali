.class public Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;
.super Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;
.source "MBridgeClickCTAView.java"


# instance fields
.field private j:Lccsanandroid/view/ViewGroup;

.field private k:Lccsanandroid/widget/ImageView;

.field private l:Lccsanandroid/widget/TextView;

.field private m:Lccsanandroid/widget/TextView;

.field private n:Lccsanandroid/widget/TextView;

.field private o:Ljava/lang/String;

.field private p:F

.field private q:F

.field private r:I

.field private s:Lccsanandroid/animation/ObjectAnimator;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;-><init>(Lccsanandroid/content/Context;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 73
    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;Lccsanandroid/widget/TextView;)Lccsanandroid/widget/TextView;
    .locals 0

    .line 38
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;->n:Lccsanandroid/widget/TextView;

    return-object p1
.end method

.method private a()V
    .locals 2

    .line 176
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;->j:Lccsanandroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 177
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;->k:Lccsanandroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;->n:Lccsanandroid/widget/TextView;

    invoke-virtual {v0, v1}, Lccsanandroid/widget/TextView;->setVisibility(I)V

    .line 179
    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;)Z
    .locals 0

    .line 38
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;->b()Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;)V
    .locals 4

    .line 38
    nop

    .line 1195
    nop

    .line 1197
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1}, Lccsanorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1198
    :try_start_1
    sget-object v0, Lccsancom/mbridge/msdk/foundation/same/a;->g:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;->a(I)Lccsanorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_1
    .catch Lccsanorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1201
    goto :goto_1

    .line 1199
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    .line 1200
    :goto_0
    invoke-virtual {v0}, Lccsanorg/json/JSONException;->printStackTrace()V

    .line 1202
    :goto_1
    iget-object p0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;->e:Lccsancom/mbridge/msdk/video/module/a/a;

    const/16 v0, 0x69

    invoke-interface {p0, v0, v1}, Lccsancom/mbridge/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 38
    return-void
.end method

.method private b()Z
    .locals 4

    .line 186
    const-string v0, "mbridge_viewgroup_ctaroot"

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;->findID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/ViewGroup;

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;->j:Lccsanandroid/view/ViewGroup;

    .line 187
    const-string v0, "mbridge_iv_appicon"

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;->findID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/ImageView;

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;->k:Lccsanandroid/widget/ImageView;

    .line 188
    const-string v0, "mbridge_tv_title"

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;->findID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/TextView;

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;->l:Lccsanandroid/widget/TextView;

    .line 189
    const-string v0, "mbridge_tv_install"

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;->findID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/TextView;

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;->m:Lccsanandroid/widget/TextView;

    .line 190
    const/4 v1, 0x4

    new-array v1, v1, [Lccsanandroid/view/View;

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;->j:Lccsanandroid/view/ViewGroup;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;->k:Lccsanandroid/widget/ImageView;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;->l:Lccsanandroid/widget/TextView;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const/4 v2, 0x3

    aput-object v0, v1, v2

    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;->isNotNULL([Lccsanandroid/view/View;)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;->a()V

    return-void
.end method


# virtual methods
.method protected final c()V
    .locals 2

    .line 116
    invoke-super {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;->c()V

    .line 117
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;->f:Z

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMof_template_url()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/u;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    new-instance v0, Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView$2;

    invoke-direct {v0, p0}, Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView$2;-><init>(Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;)V

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 126
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;->m:Lccsanandroid/widget/TextView;

    new-instance v1, Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView$3;

    invoke-direct {v1, p0}, Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView$3;-><init>(Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;)V

    invoke-virtual {v0, v1}, Lccsanandroid/widget/TextView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 133
    :cond_1
    return-void
.end method

.method public init(Lccsanandroid/content/Context;)V
    .locals 0

    .line 78
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 215
    invoke-super {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;->onAttachedToWindow()V

    .line 216
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;->s:Lccsanandroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 218
    :try_start_0
    invoke-virtual {v0}, Lccsanandroid/animation/ObjectAnimator;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    goto :goto_0

    .line 219
    :catch_0
    move-exception v0

    .line 220
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 224
    :cond_0
    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 228
    invoke-super {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;->onDetachedFromWindow()V

    .line 229
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;->s:Lccsanandroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 231
    :try_start_0
    invoke-virtual {v0}, Lccsanandroid/animation/ObjectAnimator;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    goto :goto_0

    .line 232
    :catch_0
    move-exception v0

    .line 233
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 237
    :cond_0
    :goto_0
    return-void
.end method

.method public onInterceptTouchEvent(Lccsanandroid/view/MotionEvent;)Z
    .locals 1

    .line 208
    invoke-virtual {p1}, Lccsanandroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;->p:F

    .line 209
    invoke-virtual {p1}, Lccsanandroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;->q:F

    .line 210
    invoke-super {p0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;->onInterceptTouchEvent(Lccsanandroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onSelfConfigurationChanged(Lccsanandroid/content/res/Configuration;)V
    .locals 0

    .line 171
    invoke-super {p0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;->onSelfConfigurationChanged(Lccsanandroid/content/res/Configuration;)V

    .line 172
    iget p1, p1, Lccsanandroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;->r:I

    .line 173
    return-void
.end method

.method public preLoadData(Lccsancom/mbridge/msdk/video/signal/factory/b;)V
    .locals 3

    .line 138
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz p1, :cond_4

    .line 140
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMof_template_url()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/tools/u;->f(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 141
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object p1

    .line 1084
    new-instance v0, Lccsancom/mbridge/msdk/video/dynview/i/c;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/video/dynview/i/c;-><init>()V

    const/4 v1, 0x3

    const-string v2, "ccsan_ccsan_mbridge_reward_layer_floor_bottom"

    invoke-virtual {v0, p0, v2, v1, p1}, Lccsancom/mbridge/msdk/video/dynview/i/c;->a(Lccsanandroid/view/View;Ljava/lang/String;ILjava/lang/String;)Lccsancom/mbridge/msdk/video/dynview/b;

    move-result-object p1

    .line 1085
    invoke-static {}, Lccsancom/mbridge/msdk/video/dynview/a;->a()Lccsancom/mbridge/msdk/video/dynview/a;

    move-result-object v0

    new-instance v1, Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView$1;

    invoke-direct {v1, p0, p0}, Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView$1;-><init>(Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;Lccsanandroid/view/ViewGroup;)V

    invoke-virtual {v0, p1, v1}, Lccsancom/mbridge/msdk/video/dynview/a;->a(Lccsancom/mbridge/msdk/video/dynview/b;Lccsancom/mbridge/msdk/video/dynview/d/c;)V

    .line 141
    goto :goto_0

    .line 143
    :cond_0
    nop

    .line 1105
    const-string p1, "ccsan_mbridge_reward_clickable_cta"

    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;->findLayout(Ljava/lang/String;)I

    move-result p1

    .line 1106
    if-ltz p1, :cond_1

    .line 1107
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;->c:Lccsanandroid/view/LayoutInflater;

    invoke-virtual {v0, p1, p0}, Lccsanandroid/view/LayoutInflater;->inflate(ILccsanandroid/view/ViewGroup;)Lccsanandroid/view/View;

    .line 1108
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;->b()Z

    move-result p1

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;->f:Z

    .line 1109
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;->c()V

    .line 1110
    nop

    .line 1182
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;->setWrapContent()V

    .line 145
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;->f:Z

    if-eqz p1, :cond_4

    .line 146
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;->m:Lccsanandroid/widget/TextView;

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAdCall()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getIconUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 148
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;->l:Lccsanandroid/widget/TextView;

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;->n:Lccsanandroid/widget/TextView;

    if-eqz p1, :cond_2

    .line 150
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAppDesc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    :cond_2
    new-instance p1, Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView$4;

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;->k:Lccsanandroid/widget/ImageView;

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;->o:Ljava/lang/String;

    invoke-direct {p1, p0, v0, v1, v2}, Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView$4;-><init>(Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;Lccsanandroid/widget/ImageView;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;->a:Lccsanandroid/content/Context;

    invoke-virtual {v0}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/same/c/b;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/same/c/b;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lccsancom/mbridge/msdk/foundation/same/c/b;->a(Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/same/c/c;)V

    .line 160
    goto :goto_1

    .line 161
    :cond_3
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;->a()V

    .line 167
    :cond_4
    :goto_1
    return-void
.end method

.method public setObjectAnimator(Lccsanandroid/animation/ObjectAnimator;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;->s:Lccsanandroid/animation/ObjectAnimator;

    .line 61
    return-void
.end method

.method public setUnitId(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeClickCTAView;->o:Ljava/lang/String;

    .line 65
    return-void
.end method
