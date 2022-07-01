.class public Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;
.super Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;
.source "MBridgeBTWebView.java"

# interfaces
.implements Lccsancom/mbridge/msdk/mbsignalcommon/mraid/b;


# instance fields
.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Z

.field private t:Lccsanandroid/widget/ImageView;

.field private u:Z

.field private v:Lccsancom/mbridge/msdk/videocommon/d/c;

.field private w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;"
        }
    .end annotation
.end field

.field private x:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

.field private y:Lccsancom/mbridge/msdk/video/signal/a/j;

.field private z:Lccsanandroid/webkit/WebView;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 0

    .line 114
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;-><init>(Lccsanandroid/content/Context;)V

    .line 45
    const/4 p1, 0x0

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->s:Z

    .line 48
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->u:Z

    .line 115
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 0

    .line 118
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 45
    const/4 p1, 0x0

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->s:Z

    .line 48
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->u:Z

    .line 119
    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;Lccsanandroid/webkit/WebView;)Lccsanandroid/webkit/WebView;
    .locals 0

    .line 36
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->z:Lccsanandroid/webkit/WebView;

    return-object p1
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;)Lccsancom/mbridge/msdk/video/signal/a/j;
    .locals 0

    .line 36
    iget-object p0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->y:Lccsancom/mbridge/msdk/video/signal/a/j;

    return-object p0
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 36
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->p:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;)Lccsanandroid/webkit/WebView;
    .locals 0

    .line 36
    iget-object p0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->z:Lccsanandroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic b(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 36
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->q:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;)Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;
    .locals 0

    .line 36
    iget-object p0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->x:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    return-object p0
.end method

.method static synthetic c(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 36
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->r:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public broadcast(Ljava/lang/String;Lccsanorg/json/JSONObject;)V
    .locals 4

    .line 352
    const-string v0, "broadcast"

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->x:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    if-eqz v1, :cond_0

    .line 354
    :try_start_0
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1}, Lccsanorg/json/JSONObject;-><init>()V

    .line 355
    const-string v2, "code"

    sget v3, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->n:I

    invoke-virtual {v1, v2, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 356
    const-string v2, "id"

    iget-object v3, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 357
    const-string v2, "eventName"

    invoke-virtual {v1, v2, p1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 358
    const-string p1, "data"

    invoke-virtual {v1, p1, p2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 359
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object p1

    iget-object p2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->x:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

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

    .line 362
    goto :goto_0

    .line 360
    :catch_0
    move-exception p1

    .line 361
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/a/c;->a()Lccsancom/mbridge/msdk/video/bt/a/c;

    move-result-object p1

    iget-object p2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->x:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->d:Ljava/lang/String;

    invoke-virtual {p1, p2, v0, v1}, Lccsancom/mbridge/msdk/video/bt/a/c;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    :cond_0
    :goto_0
    return-void
.end method

.method public close()V
    .locals 3

    .line 457
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->z:Lccsanandroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 458
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->d:Ljava/lang/String;

    const-string v2, "onPlayerCloseBtnClicked"

    invoke-static {v0, v2, v1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    :cond_0
    return-void
.end method

.method public expand(Ljava/lang/String;Z)V
    .locals 0

    .line 484
    return-void
.end method

.method public getCampaigns()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->w:Ljava/util/List;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->q:Ljava/lang/String;

    return-object v0
.end method

.method public getFileURL()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->p:Ljava/lang/String;

    return-object v0
.end method

.method public getHtml()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->r:Ljava/lang/String;

    return-object v0
.end method

.method public getMraidCampaign()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;
    .locals 1

    .line 469
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    return-object v0
.end method

.method public getRewardUnitSetting()Lccsancom/mbridge/msdk/videocommon/d/c;
    .locals 1

    .line 51
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->v:Lccsancom/mbridge/msdk/videocommon/d/c;

    return-object v0
.end method

.method public getWebView()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;
    .locals 1

    .line 110
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->x:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    return-object v0
.end method

.method public init(Lccsanandroid/content/Context;)V
    .locals 3

    .line 136
    new-instance v0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-direct {v0, p1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;-><init>(Lccsanandroid/content/Context;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->x:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 137
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->setBackgroundColor(I)V

    .line 138
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->x:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->setVisibility(I)V

    .line 139
    new-instance p1, Lccsancom/mbridge/msdk/video/signal/a/j;

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->w:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {p1, v2, v0, v1}, Lccsancom/mbridge/msdk/video/signal/a/j;-><init>(Lccsanandroid/app/Activity;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/util/List;)V

    iput-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->y:Lccsancom/mbridge/msdk/video/signal/a/j;

    .line 140
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/video/signal/a/j;->a(Ljava/lang/String;)V

    .line 141
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->x:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->y:Lccsancom/mbridge/msdk/video/signal/a/j;

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->setObject(Ljava/lang/Object;)V

    .line 142
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->x:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {p1, p0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->setMraidObject(Ljava/lang/Object;)V

    .line 143
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->x:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    new-instance v0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView$1;

    invoke-direct {v0, p0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView$1;-><init>(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;)V

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->setWebViewListener(Lccsancom/mbridge/msdk/mbsignalcommon/windvane/d;)V

    .line 234
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->x:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    new-instance v0, Lccsanandroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lccsanandroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->addView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 235
    new-instance p1, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView$2;

    invoke-direct {p1, p0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView$2;-><init>(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;)V

    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 255
    :try_start_0
    new-instance p1, Lccsanandroid/widget/ImageView;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lccsanandroid/widget/ImageView;-><init>(Lccsanandroid/content/Context;)V

    iput-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->t:Lccsanandroid/widget/ImageView;

    .line 256
    const-string v0, "mbridge_reward_close"

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->findDrawable(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lccsanandroid/widget/ImageView;->setImageResource(I)V

    .line 257
    new-instance p1, Lccsanandroid/widget/FrameLayout$LayoutParams;

    const/16 v0, 0x60

    invoke-direct {p1, v0, v0}, Lccsanandroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 258
    const v0, 0x800035

    iput v0, p1, Lccsanandroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 259
    const/16 v0, 0x1e

    invoke-virtual {p1, v0, v0, v0, v0}, Lccsanandroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 260
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->t:Lccsanandroid/widget/ImageView;

    invoke-virtual {v0, p1}, Lccsanandroid/widget/ImageView;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 261
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->t:Lccsanandroid/widget/ImageView;

    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->s:Z

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 262
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isMraid()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 263
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->t:Lccsanandroid/widget/ImageView;

    invoke-virtual {p1, v1}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 265
    :cond_1
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->t:Lccsanandroid/widget/ImageView;

    new-instance v0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView$3;

    invoke-direct {v0, p0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView$3;-><init>(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;)V

    invoke-virtual {p1, v0}, Lccsanandroid/widget/ImageView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 271
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->t:Lccsanandroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->addView(Lccsanandroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    goto :goto_1

    .line 272
    :catchall_0
    move-exception p1

    .line 273
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BTBaseView"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    :goto_1
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 386
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->x:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    if-eqz v0, :cond_0

    .line 387
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/a/c;->a()Lccsancom/mbridge/msdk/video/bt/a/c;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->x:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->d:Ljava/lang/String;

    const-string v3, "onSystemBackPressed"

    invoke-virtual {v0, v1, v3, v2}, Lccsancom/mbridge/msdk/video/bt/a/c;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Lccsanandroid/content/res/Configuration;)V
    .locals 4

    .line 368
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->x:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    if-eqz v0, :cond_1

    .line 370
    :try_start_0
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    .line 371
    iget p1, p1, Lccsanandroid/content/res/Configuration;->orientation:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x2

    const-string v2, "orientation"

    if-ne p1, v1, :cond_0

    .line 372
    :try_start_1
    const-string p1, "landscape"

    invoke-virtual {v0, v2, p1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    goto :goto_0

    .line 374
    :cond_0
    const-string p1, "portrait"

    invoke-virtual {v0, v2, p1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 376
    :goto_0
    const-string p1, "instanceId"

    iget-object v3, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->d:Ljava/lang/String;

    invoke-virtual {v0, p1, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 377
    invoke-virtual {v0}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1, v1}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    .line 378
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->x:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v0, v1, v2, p1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 381
    goto :goto_1

    .line 379
    :catch_0
    move-exception p1

    .line 380
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 383
    :cond_1
    :goto_1
    return-void
.end method

.method public onDestory()V
    .locals 4

    .line 393
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->u:Z

    if-eqz v0, :cond_0

    .line 394
    return-void

    .line 396
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->u:Z

    .line 398
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->x:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    if-eqz v0, :cond_1

    .line 399
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/a/c;->a()Lccsancom/mbridge/msdk/video/bt/a/c;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->x:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    const-string v2, "onSystemDestory"

    iget-object v3, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lccsancom/mbridge/msdk/video/bt/a/c;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    :cond_1
    new-instance v0, Lccsanandroid/os/Handler;

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    new-instance v1, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView$4;

    invoke-direct {v1, p0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView$4;-><init>(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lccsanandroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 420
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 421
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->removeAllViews()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 424
    goto :goto_0

    .line 422
    :catchall_0
    move-exception v0

    .line 423
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BTBaseView"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    :goto_0
    return-void
.end method

.method public open(Ljava/lang/String;)V
    .locals 10

    .line 430
    const-string v0, "BTBaseView"

    :try_start_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getClickURL()Ljava/lang/String;

    move-result-object v1

    .line 431
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 432
    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2, p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setClickURL(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 433
    nop

    .line 1445
    :try_start_1
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->getMraidCampaign()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v2

    .line 1446
    if-eqz v2, :cond_0

    .line 1447
    new-instance v3, Lccsancom/mbridge/msdk/foundation/same/report/c;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->getContext()Lccsanandroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lccsancom/mbridge/msdk/foundation/same/report/c;-><init>(Lccsanandroid/content/Context;)V

    .line 1448
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->c:Ljava/lang/String;

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isBidCampaign()Z

    move-result v9

    move-object v8, p1

    invoke-virtual/range {v3 .. v9}, Lccsancom/mbridge/msdk/foundation/same/report/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1452
    :cond_0
    goto :goto_0

    .line 1450
    :catchall_0
    move-exception p1

    .line 1451
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    :cond_1
    :goto_0
    new-instance p1, Lccsancom/mbridge/msdk/click/a;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->getContext()Lccsanandroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->c:Ljava/lang/String;

    invoke-direct {p1, v2, v3}, Lccsancom/mbridge/msdk/click/a;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    .line 436
    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1, v2}, Lccsancom/mbridge/msdk/click/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 437
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1, v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setClickURL(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 440
    goto :goto_1

    .line 438
    :catchall_1
    move-exception p1

    .line 439
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    :goto_1
    return-void
.end method

.method public preload()V
    .locals 7

    .line 284
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->p:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 285
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->x:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->loadUrl(Ljava/lang/String;)V

    .line 286
    return-void

    .line 288
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->q:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 289
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->x:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->loadUrl(Ljava/lang/String;)V

    .line 290
    return-void

    .line 292
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->r:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 293
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->x:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    iget-object v3, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->r:Ljava/lang/String;

    const/4 v6, 0x0

    const-string v2, ""

    const-string v4, "text/html"

    const-string v5, "UTF-8"

    invoke-virtual/range {v1 .. v6}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    return-void

    .line 296
    :cond_2
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

    .line 65
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->w:Ljava/util/List;

    .line 66
    return-void
.end method

.method public setCreateWebView(Lccsanandroid/webkit/WebView;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->z:Lccsanandroid/webkit/WebView;

    .line 74
    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->q:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setFileURL(Ljava/lang/String;)V
    .locals 1

    .line 83
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->p:Ljava/lang/String;

    .line 84
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    const-string v0, "play.google.com"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    .line 86
    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->setWebviewClickable(Z)V

    .line 87
    if-eqz p1, :cond_0

    .line 88
    new-instance p1, Lccsancom/mbridge/msdk/mbsignalcommon/base/c;

    invoke-direct {p1}, Lccsancom/mbridge/msdk/mbsignalcommon/base/c;-><init>()V

    .line 1128
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->x:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    if-eqz v0, :cond_0

    .line 1129
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->setFilter(Lccsancom/mbridge/msdk/mbsignalcommon/base/a;)V

    .line 91
    :cond_0
    return-void
.end method

.method public setHtml(Ljava/lang/String;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->r:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setRewardUnitSetting(Lccsancom/mbridge/msdk/videocommon/d/c;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->v:Lccsancom/mbridge/msdk/videocommon/d/c;

    .line 56
    return-void
.end method

.method public setWebViewRid(Ljava/lang/String;)V
    .locals 1

    .line 278
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->x:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    if-eqz v0, :cond_0

    .line 279
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->setRid(Ljava/lang/String;)V

    .line 281
    :cond_0
    return-void
.end method

.method public setWebviewClickable(Z)V
    .locals 1

    .line 122
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->x:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->setClickable(Z)V

    .line 125
    :cond_0
    return-void
.end method

.method public unload()V
    .locals 0

    .line 464
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->close()V

    .line 465
    return-void
.end method

.method public useCustomClose(Z)V
    .locals 1

    .line 475
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->t:Lccsanandroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lccsanandroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 478
    goto :goto_1

    .line 476
    :catchall_0
    move-exception p1

    .line 477
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BTBaseView"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    :goto_1
    return-void
.end method

.method public webviewGoBack()Z
    .locals 1

    .line 336
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->x:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->x:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->goBack()V

    .line 338
    const/4 v0, 0x1

    return v0

    .line 340
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public webviewGoForward()Z
    .locals 1

    .line 344
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->x:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->x:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->goForward()V

    .line 346
    const/4 v0, 0x1

    return v0

    .line 348
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public webviewLoad(I)V
    .locals 4

    .line 299
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->y:Lccsancom/mbridge/msdk/video/signal/a/j;

    if-nez v0, :cond_0

    .line 300
    new-instance v0, Lccsancom/mbridge/msdk/video/signal/a/j;

    const/4 v1, 0x0

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v3, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->w:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, Lccsancom/mbridge/msdk/video/signal/a/j;-><init>(Lccsanandroid/app/Activity;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/util/List;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->y:Lccsancom/mbridge/msdk/video/signal/a/j;

    .line 302
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 303
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->y:Lccsancom/mbridge/msdk/video/signal/a/j;

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/video/signal/a/j;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    goto :goto_0

    .line 304
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->w:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 305
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->y:Lccsancom/mbridge/msdk/video/signal/a/j;

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->w:Ljava/util/List;

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/video/signal/a/j;->a(Ljava/util/List;)V

    .line 306
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 307
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->y:Lccsancom/mbridge/msdk/video/signal/a/j;

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->w:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/video/signal/a/j;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 310
    :cond_2
    :goto_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->v:Lccsancom/mbridge/msdk/videocommon/d/c;

    if-eqz v0, :cond_3

    .line 311
    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->y:Lccsancom/mbridge/msdk/video/signal/a/j;

    invoke-virtual {v2, v0}, Lccsancom/mbridge/msdk/video/signal/a/j;->a(Lccsancom/mbridge/msdk/videocommon/d/c;)V

    .line 313
    :cond_3
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->y:Lccsancom/mbridge/msdk/video/signal/a/j;

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/video/signal/a/j;->a(Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->y:Lccsancom/mbridge/msdk/video/signal/a/j;

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/video/signal/a/j;->c(Ljava/lang/String;)V

    .line 315
    if-ne p1, v1, :cond_4

    .line 316
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->y:Lccsancom/mbridge/msdk/video/signal/a/j;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/video/signal/a/j;->n()V

    .line 318
    :cond_4
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->x:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    if-eqz p1, :cond_5

    .line 319
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->y:Lccsancom/mbridge/msdk/video/signal/a/j;

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->setObject(Ljava/lang/Object;)V

    .line 321
    :cond_5
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isMraid()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 322
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->t:Lccsanandroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 324
    :cond_6
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->preload()V

    .line 325
    return-void
.end method

.method public webviewReload()Z
    .locals 1

    .line 328
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->x:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    if-eqz v0, :cond_0

    .line 329
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->reload()V

    .line 330
    const/4 v0, 0x1

    return v0

    .line 332
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
