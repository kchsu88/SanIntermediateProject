.class public Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;
.super Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;
.source "MBridgeNativeEndCardView.java"


# instance fields
.field private A:Z

.field private B:I

.field private C:Lccsanandroid/view/animation/AlphaAnimation;

.field private D:I

.field private E:I

.field private F:I

.field private G:I

.field private H:Lccsanandroid/view/View;

.field private I:Lccsanandroid/view/View;

.field private J:Ljava/lang/String;

.field private j:Lccsanandroid/view/ViewGroup;

.field private k:Lccsanandroid/view/ViewGroup;

.field private l:Lccsanandroid/widget/RelativeLayout;

.field private m:Lccsanandroid/widget/ImageView;

.field private n:Lccsanandroid/widget/RelativeLayout;

.field private o:Lccsanandroid/widget/ImageView;

.field private p:Lccsanandroid/widget/ImageView;

.field private q:Lccsanandroid/widget/ImageView;

.field private r:Lccsanandroid/widget/ImageView;

.field private s:Lccsanandroid/widget/TextView;

.field private t:Lccsanandroid/widget/TextView;

.field private u:Lccsanandroid/widget/TextView;

.field private v:Lccsanandroid/widget/LinearLayout;

.field private w:Ljava/lang/Runnable;

.field private x:Lccsanandroid/widget/RelativeLayout;

.field private y:Lccsancom/mbridge/msdk/video/signal/factory/b;

.field private z:Z


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 0

    .line 101
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;-><init>(Lccsanandroid/content/Context;)V

    .line 79
    const/4 p1, 0x0

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->z:Z

    .line 80
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->A:Z

    .line 81
    iput p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->B:I

    .line 102
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 0

    .line 105
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 79
    const/4 p1, 0x0

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->z:Z

    .line 80
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->A:Z

    .line 81
    iput p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->B:I

    .line 107
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;Z)V
    .locals 0

    .line 110
    invoke-direct {p0, p1, p2, p3}, Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;Z)V

    .line 79
    const/4 p1, 0x0

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->z:Z

    .line 80
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->A:Z

    .line 81
    iput p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->B:I

    .line 111
    return-void
.end method

.method private a(Lccsanandroid/graphics/drawable/Drawable;)Lccsanandroid/graphics/Bitmap;
    .locals 5

    .line 450
    :try_start_0
    invoke-virtual {p1}, Lccsanandroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 451
    invoke-virtual {p1}, Lccsanandroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 452
    sget-object v2, Lccsanandroid/graphics/Bitmap$Config;->ARGB_8888:Lccsanandroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Lccsanandroid/graphics/Bitmap;->createBitmap(IILccsanandroid/graphics/Bitmap$Config;)Lccsanandroid/graphics/Bitmap;

    move-result-object v2

    .line 453
    new-instance v3, Lccsanandroid/graphics/Canvas;

    invoke-direct {v3, v2}, Lccsanandroid/graphics/Canvas;-><init>(Lccsanandroid/graphics/Bitmap;)V

    .line 454
    const/4 v4, 0x0

    invoke-virtual {p1, v4, v4, v0, v1}, Lccsanandroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 455
    invoke-virtual {p1, v3}, Lccsanandroid/graphics/drawable/Drawable;->draw(Lccsanandroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 456
    return-object v2

    .line 457
    :catchall_0
    move-exception p1

    .line 458
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MBridgeBaseView"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;)Lccsanandroid/view/View;
    .locals 0

    .line 53
    iget-object p0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->H:Lccsanandroid/view/View;

    return-object p0
.end method

.method private a()V
    .locals 3

    .line 196
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->c()V

    .line 197
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->f:Z

    if-nez v0, :cond_0

    .line 198
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->e:Lccsancom/mbridge/msdk/video/module/a/a;

    const/16 v1, 0x68

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lccsancom/mbridge/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 200
    :cond_0
    new-instance v0, Lccsanandroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-direct {v0, v1, v2}, Lccsanandroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->C:Lccsanandroid/view/animation/AlphaAnimation;

    .line 201
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Lccsanandroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 202
    return-void
.end method

.method private a(Lccsanandroid/view/View;)V
    .locals 1

    .line 315
    if-nez p1, :cond_0

    .line 316
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->a:Lccsanandroid/content/Context;

    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->init(Lccsanandroid/content/Context;)V

    .line 317
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->y:Lccsancom/mbridge/msdk/video/signal/factory/b;

    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->preLoadData(Lccsancom/mbridge/msdk/video/signal/factory/b;)V

    goto :goto_0

    .line 319
    :cond_0
    invoke-virtual {p1}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 320
    invoke-virtual {p1}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Lccsanandroid/view/ViewGroup;->removeView(Lccsanandroid/view/View;)V

    .line 322
    :cond_1
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->addView(Lccsanandroid/view/View;)V

    .line 323
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->b(Lccsanandroid/view/View;)Z

    .line 324
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->c()V

    .line 327
    :goto_0
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->b()V

    .line 328
    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;I)V
    .locals 2

    .line 53
    nop

    .line 4382
    nop

    .line 4384
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1}, Lccsanorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4385
    :try_start_1
    sget-object v0, Lccsancom/mbridge/msdk/foundation/same/a;->g:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->a(I)Lccsanorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_1
    .catch Lccsanorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4388
    goto :goto_1

    .line 4386
    :catch_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 4387
    :goto_0
    invoke-virtual {p1}, Lccsanorg/json/JSONException;->printStackTrace()V

    move-object v1, v0

    .line 4389
    :goto_1
    iget-object p0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->e:Lccsancom/mbridge/msdk/video/module/a/a;

    const/16 p1, 0x69

    invoke-interface {p0, p1, v1}, Lccsancom/mbridge/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 53
    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;Lccsanandroid/view/View;)Z
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->b(Lccsanandroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;Z)Z
    .locals 0

    .line 53
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->A:Z

    return p1
.end method

.method private b()V
    .locals 4

    .line 474
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMof_template_url()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/u;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 475
    return-void

    .line 477
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->x:Lccsanandroid/widget/RelativeLayout;

    new-instance v1, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView$9;

    invoke-direct {v1, p0}, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView$9;-><init>(Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lccsanandroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 489
    return-void
.end method

.method static synthetic b(Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->a()V

    return-void
.end method

.method private b(Lccsanandroid/view/View;)Z
    .locals 10

    .line 394
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "mbridge_native_ec_layout"

    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->findID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/RelativeLayout;

    iput-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->l:Lccsanandroid/widget/RelativeLayout;

    .line 395
    const-string v1, "mbridge_iv_adbanner"

    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->findID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/ImageView;

    iput-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->o:Lccsanandroid/widget/ImageView;

    .line 396
    const-string v1, "mbridge_iv_icon"

    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->findID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/ImageView;

    iput-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->p:Lccsanandroid/widget/ImageView;

    .line 397
    const-string v1, "mbridge_iv_flag"

    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->findID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/ImageView;

    iput-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->q:Lccsanandroid/widget/ImageView;

    .line 398
    const-string v1, "mbridge_iv_link"

    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->findID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/ImageView;

    iput-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->r:Lccsanandroid/widget/ImageView;

    .line 399
    const-string v1, "mbridge_tv_apptitle"

    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->findID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/TextView;

    iput-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->s:Lccsanandroid/widget/TextView;

    .line 400
    const-string v1, "mbridge_sv_starlevel"

    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->findID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/LinearLayout;

    iput-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->v:Lccsanandroid/widget/LinearLayout;

    .line 401
    const-string v1, "mbridge_iv_close"

    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->findID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->H:Lccsanandroid/view/View;

    .line 402
    const-string v1, "mbridge_tv_cta"

    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->findID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->I:Lccsanandroid/view/View;

    .line 403
    const-string v1, "mbridge_native_ec_controller"

    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->findID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/RelativeLayout;

    iput-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->x:Lccsanandroid/widget/RelativeLayout;

    .line 404
    iget-boolean v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x7

    const-string v9, "mbridge_iv_adbanner_bg"

    if-eqz v1, :cond_0

    .line 405
    :try_start_1
    invoke-virtual {p0, v9}, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->findID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object p1

    check-cast p1, Lccsanandroid/widget/RelativeLayout;

    iput-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->n:Lccsanandroid/widget/RelativeLayout;

    .line 406
    new-array v1, v8, [Lccsanandroid/view/View;

    aput-object p1, v1, v0

    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->o:Lccsanandroid/widget/ImageView;

    aput-object p1, v1, v7

    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->p:Lccsanandroid/widget/ImageView;

    aput-object p1, v1, v6

    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->s:Lccsanandroid/widget/TextView;

    aput-object p1, v1, v5

    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->v:Lccsanandroid/widget/LinearLayout;

    aput-object p1, v1, v4

    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->H:Lccsanandroid/view/View;

    aput-object p1, v1, v3

    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->I:Lccsanandroid/view/View;

    aput-object p1, v1, v2

    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->isNotNULL([Lccsanandroid/view/View;)Z

    move-result p1

    return p1

    .line 408
    :cond_0
    invoke-virtual {p0, v9}, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->findID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/ImageView;

    iput-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->m:Lccsanandroid/widget/ImageView;

    .line 409
    const-string v1, "mbridge_tv_appdesc"

    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->findID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/TextView;

    iput-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->t:Lccsanandroid/widget/TextView;

    .line 410
    const-string v1, "mbridge_tv_number"

    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->findID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object p1

    check-cast p1, Lccsanandroid/widget/TextView;

    iput-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->u:Lccsanandroid/widget/TextView;

    .line 411
    const/16 v1, 0x9

    new-array v1, v1, [Lccsanandroid/view/View;

    iget-object v9, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->m:Lccsanandroid/widget/ImageView;

    aput-object v9, v1, v0

    iget-object v9, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->o:Lccsanandroid/widget/ImageView;

    aput-object v9, v1, v7

    iget-object v7, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->p:Lccsanandroid/widget/ImageView;

    aput-object v7, v1, v6

    iget-object v6, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->s:Lccsanandroid/widget/TextView;

    aput-object v6, v1, v5

    iget-object v5, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->t:Lccsanandroid/widget/TextView;

    aput-object v5, v1, v4

    aput-object p1, v1, v3

    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->v:Lccsanandroid/widget/LinearLayout;

    aput-object p1, v1, v2

    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->H:Lccsanandroid/view/View;

    aput-object p1, v1, v8

    const/16 p1, 0x8

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->I:Lccsanandroid/view/View;

    aput-object v2, v1, p1

    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->isNotNULL([Lccsanandroid/view/View;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return p1

    .line 413
    :catchall_0
    move-exception p1

    .line 414
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MBridgeBaseView"

    invoke-static {v2, v1, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 416
    return v0
.end method

.method static synthetic c(Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->z:Z

    return p0
.end method

.method static synthetic d(Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;)I
    .locals 0

    .line 53
    iget p0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->D:I

    return p0
.end method

.method static synthetic e(Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;)I
    .locals 0

    .line 53
    iget p0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->F:I

    return p0
.end method

.method static synthetic f(Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;)I
    .locals 0

    .line 53
    iget p0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->E:I

    return p0
.end method

.method static synthetic g(Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;)I
    .locals 0

    .line 53
    iget p0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->G:I

    return p0
.end method

.method static synthetic h(Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;)Lccsanandroid/widget/RelativeLayout;
    .locals 0

    .line 53
    iget-object p0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->x:Lccsanandroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic i(Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;)Lccsanandroid/view/animation/AlphaAnimation;
    .locals 0

    .line 53
    iget-object p0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->C:Lccsanandroid/view/animation/AlphaAnimation;

    return-object p0
.end method

.method static synthetic j(Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->A:Z

    return p0
.end method


# virtual methods
.method public blurBitmap(Lccsanandroid/graphics/Bitmap;)Lccsanandroid/graphics/Bitmap;
    .locals 6

    .line 431
    :try_start_0
    invoke-virtual {p1}, Lccsanandroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lccsanandroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Lccsanandroid/graphics/Bitmap$Config;->ARGB_8888:Lccsanandroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Lccsanandroid/graphics/Bitmap;->createBitmap(IILccsanandroid/graphics/Bitmap$Config;)Lccsanandroid/graphics/Bitmap;

    move-result-object v0

    .line 432
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->a:Lccsanandroid/content/Context;

    invoke-virtual {v1}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lccsanandroid/renderscript/RenderScript;->create(Lccsanandroid/content/Context;)Lccsanandroid/renderscript/RenderScript;

    move-result-object v1

    .line 433
    invoke-static {v1}, Lccsanandroid/renderscript/Element;->U8_4(Lccsanandroid/renderscript/RenderScript;)Lccsanandroid/renderscript/Element;

    move-result-object v2

    invoke-static {v1, v2}, Lccsanandroid/renderscript/ScriptIntrinsicBlur;->create(Lccsanandroid/renderscript/RenderScript;Lccsanandroid/renderscript/Element;)Lccsanandroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v2

    .line 434
    invoke-static {v1, p1}, Lccsanandroid/renderscript/Allocation;->createFromBitmap(Lccsanandroid/renderscript/RenderScript;Lccsanandroid/graphics/Bitmap;)Lccsanandroid/renderscript/Allocation;

    move-result-object v3

    .line 435
    invoke-static {v1, v0}, Lccsanandroid/renderscript/Allocation;->createFromBitmap(Lccsanandroid/renderscript/RenderScript;Lccsanandroid/graphics/Bitmap;)Lccsanandroid/renderscript/Allocation;

    move-result-object v4

    .line 436
    const/high16 v5, 0x41c80000    # 25.0f

    invoke-virtual {v2, v5}, Lccsanandroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 437
    invoke-virtual {v2, v3}, Lccsanandroid/renderscript/ScriptIntrinsicBlur;->setInput(Lccsanandroid/renderscript/Allocation;)V

    .line 438
    invoke-virtual {v2, v4}, Lccsanandroid/renderscript/ScriptIntrinsicBlur;->forEach(Lccsanandroid/renderscript/Allocation;)V

    .line 439
    invoke-virtual {v4, v0}, Lccsanandroid/renderscript/Allocation;->copyTo(Lccsanandroid/graphics/Bitmap;)V

    .line 440
    invoke-virtual {p1}, Lccsanandroid/graphics/Bitmap;->recycle()V

    .line 441
    invoke-virtual {v1}, Lccsanandroid/renderscript/RenderScript;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    return-object v0

    .line 443
    :catchall_0
    move-exception p1

    .line 444
    const/4 p1, 0x0

    return-object p1
.end method

.method protected final c()V
    .locals 2

    .line 344
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->f:Z

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->l:Lccsanandroid/widget/RelativeLayout;

    new-instance v1, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView$4;

    invoke-direct {v1, p0}, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView$4;-><init>(Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;)V

    invoke-virtual {v0, v1}, Lccsanandroid/widget/RelativeLayout;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 353
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->H:Lccsanandroid/view/View;

    new-instance v1, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView$5;

    invoke-direct {v1, p0}, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView$5;-><init>(Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;)V

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 359
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->I:Lccsanandroid/view/View;

    new-instance v1, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView$6;

    invoke-direct {v1, p0}, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView$6;-><init>(Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;)V

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 365
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->p:Lccsanandroid/widget/ImageView;

    new-instance v1, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView$7;

    invoke-direct {v1, p0}, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView$7;-><init>(Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;)V

    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 371
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->o:Lccsanandroid/widget/ImageView;

    new-instance v1, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView$8;

    invoke-direct {v1, p0}, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView$8;-><init>(Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;)V

    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 378
    :cond_0
    return-void
.end method

.method public canBackPress()Z
    .locals 1

    .line 307
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->H:Lccsanandroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsanandroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public init(Lccsanandroid/content/Context;)V
    .locals 2

    .line 142
    iget-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->i:Z

    if-eqz p1, :cond_1

    .line 143
    nop

    .line 1153
    new-instance p1, Lccsancom/mbridge/msdk/video/dynview/i/c;

    invoke-direct {p1}, Lccsancom/mbridge/msdk/video/dynview/i/c;-><init>()V

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->getContext()Lccsanandroid/content/Context;

    move-result-object p1

    .line 2102
    nop

    .line 2103
    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/tools/m;->d(Lccsanandroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2104
    const-string v0, "mbridge_reward_end_card_layout_portrait"

    goto :goto_0

    .line 2103
    :cond_0
    const-string v0, "mbridge_reward_end_card_layout_landscape"

    .line 2149
    :goto_0
    new-instance v1, Lccsancom/mbridge/msdk/video/dynview/b$a;

    invoke-direct {v1}, Lccsancom/mbridge/msdk/video/dynview/b$a;-><init>()V

    .line 2106
    nop

    .line 2107
    invoke-virtual {v1, v0}, Lccsancom/mbridge/msdk/video/dynview/b$a;->a(Ljava/lang/String;)Lccsancom/mbridge/msdk/video/dynview/b$b;

    move-result-object v0

    const/4 v1, 0x4

    .line 2108
    invoke-interface {v0, v1}, Lccsancom/mbridge/msdk/video/dynview/b$b;->a(I)Lccsancom/mbridge/msdk/video/dynview/b$b;

    move-result-object v0

    .line 2109
    invoke-interface {v0, p1}, Lccsancom/mbridge/msdk/video/dynview/b$b;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/video/dynview/b$b;

    move-result-object v0

    .line 2110
    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/tools/m;->d(Lccsanandroid/content/Context;)I

    move-result p1

    invoke-interface {v0, p1}, Lccsancom/mbridge/msdk/video/dynview/b$b;->b(I)Lccsancom/mbridge/msdk/video/dynview/b$b;

    move-result-object p1

    .line 2111
    invoke-interface {p1}, Lccsancom/mbridge/msdk/video/dynview/b$b;->a()Lccsancom/mbridge/msdk/video/dynview/b;

    move-result-object p1

    .line 2112
    nop

    .line 1153
    nop

    .line 1154
    invoke-static {}, Lccsancom/mbridge/msdk/video/dynview/a;->a()Lccsancom/mbridge/msdk/video/dynview/a;

    move-result-object v0

    new-instance v1, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView$2;

    invoke-direct {v1, p0}, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView$2;-><init>(Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;)V

    invoke-virtual {v0, p1, v1}, Lccsancom/mbridge/msdk/video/dynview/a;->a(Lccsancom/mbridge/msdk/video/dynview/b;Lccsancom/mbridge/msdk/video/dynview/d/c;)V

    .line 143
    goto :goto_3

    .line 145
    :cond_1
    nop

    .line 2172
    nop

    .line 2421
    nop

    .line 2422
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->isLandscape()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2423
    const-string p1, "mbridge_reward_endcard_native_land"

    goto :goto_1

    .line 2422
    :cond_2
    const-string p1, "mbridge_reward_endcard_native_hor"

    .line 2425
    :goto_1
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->findLayout(Ljava/lang/String;)I

    move-result p1

    .line 2172
    nop

    .line 2173
    if-lez p1, :cond_4

    .line 2174
    nop

    .line 3331
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->isLandscape()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 3332
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->c:Lccsanandroid/view/LayoutInflater;

    invoke-virtual {v0, p1, v1}, Lccsanandroid/view/LayoutInflater;->inflate(ILccsanandroid/view/ViewGroup;)Lccsanandroid/view/View;

    move-result-object p1

    check-cast p1, Lccsanandroid/view/ViewGroup;

    iput-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->k:Lccsanandroid/view/ViewGroup;

    .line 3333
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->addView(Lccsanandroid/view/View;)V

    .line 3334
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->k:Lccsanandroid/view/ViewGroup;

    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->b(Lccsanandroid/view/View;)Z

    move-result p1

    goto :goto_2

    .line 3336
    :cond_3
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->c:Lccsanandroid/view/LayoutInflater;

    invoke-virtual {v0, p1, v1}, Lccsanandroid/view/LayoutInflater;->inflate(ILccsanandroid/view/ViewGroup;)Lccsanandroid/view/View;

    move-result-object p1

    check-cast p1, Lccsanandroid/view/ViewGroup;

    iput-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->j:Lccsanandroid/view/ViewGroup;

    .line 3337
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->addView(Lccsanandroid/view/View;)V

    .line 3338
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->j:Lccsanandroid/view/ViewGroup;

    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->b(Lccsanandroid/view/View;)Z

    move-result p1

    .line 2174
    :goto_2
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->f:Z

    .line 2175
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->a()V

    .line 147
    :cond_4
    :goto_3
    return-void
.end method

.method public notifyShowListener()V
    .locals 3

    .line 311
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->e:Lccsancom/mbridge/msdk/video/module/a/a;

    const/16 v1, 0x6e

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lccsancom/mbridge/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 312
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 115
    invoke-super {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;->onAttachedToWindow()V

    .line 116
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->w:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView$1;

    invoke-direct {v0, p0}, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView$1;-><init>(Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->w:Ljava/lang/Runnable;

    .line 127
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->w:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 128
    iget v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->B:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 130
    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 134
    invoke-super {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;->onDetachedFromWindow()V

    .line 135
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->w:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 138
    :cond_0
    return-void
.end method

.method public onSelfConfigurationChanged(Lccsanandroid/content/res/Configuration;)V
    .locals 2

    .line 289
    invoke-super {p0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;->onSelfConfigurationChanged(Lccsanandroid/content/res/Configuration;)V

    .line 290
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMof_template_url()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/u;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    return-void

    .line 295
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->x:Lccsanandroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lccsanandroid/widget/RelativeLayout;->setVisibility(I)V

    .line 296
    iget p1, p1, Lccsanandroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->d:I

    .line 297
    iget p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->d:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 298
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->j:Lccsanandroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->removeView(Lccsanandroid/view/View;)V

    .line 299
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->k:Lccsanandroid/view/ViewGroup;

    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->a(Lccsanandroid/view/View;)V

    goto :goto_0

    .line 301
    :cond_1
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->k:Lccsanandroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->removeView(Lccsanandroid/view/View;)V

    .line 302
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->j:Lccsanandroid/view/ViewGroup;

    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->a(Lccsanandroid/view/View;)V

    .line 304
    :goto_0
    return-void
.end method

.method public preLoadData(Lccsancom/mbridge/msdk/video/signal/factory/b;)V
    .locals 5

    .line 181
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->y:Lccsancom/mbridge/msdk/video/signal/factory/b;

    .line 183
    :try_start_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz p1, :cond_e

    iget-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->f:Z

    if-eqz p1, :cond_e

    .line 184
    nop

    .line 4208
    new-instance p1, Lccsancom/mbridge/msdk/video/module/a/a/e;

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->o:Lccsanandroid/widget/ImageView;

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->J:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2}, Lccsancom/mbridge/msdk/video/module/a/a/e;-><init>(Lccsanandroid/widget/ImageView;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;)V

    .line 4209
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->a:Lccsanandroid/content/Context;

    invoke-virtual {v0}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/same/c/b;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/same/c/b;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lccsancom/mbridge/msdk/foundation/same/c/b;->a(Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/same/c/c;)V

    .line 4210
    new-instance p1, Lccsancom/mbridge/msdk/video/module/a/a/j;

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->p:Lccsanandroid/widget/ImageView;

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v1, v2}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Lccsanandroid/content/Context;F)I

    move-result v1

    invoke-direct {p1, v0, v1}, Lccsancom/mbridge/msdk/video/module/a/a/j;-><init>(Lccsanandroid/widget/ImageView;I)V

    .line 4211
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->a:Lccsanandroid/content/Context;

    invoke-virtual {v0}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/same/c/b;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/same/c/b;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lccsancom/mbridge/msdk/foundation/same/c/b;->a(Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/same/c/c;)V

    .line 4212
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->s:Lccsanandroid/widget/TextView;

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4214
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->I:Lccsanandroid/view/View;

    if-eqz p1, :cond_0

    instance-of v0, p1, Lccsanandroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 4215
    check-cast p1, Lccsanandroid/widget/TextView;

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAdCall()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4217
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->t:Lccsanandroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 4218
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAppDesc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4220
    :cond_1
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->u:Lccsanandroid/widget/TextView;

    if-eqz p1, :cond_2

    .line 4221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getNumberRating()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4223
    :cond_2
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->v:Lccsanandroid/widget/LinearLayout;

    invoke-virtual {p1}, Lccsanandroid/widget/LinearLayout;->removeAllViews()V

    .line 4224
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRating()D

    move-result-wide v0

    .line 4225
    const-wide/16 v2, 0x0

    cmpg-double p1, v0, v2

    if-gtz p1, :cond_3

    .line 4226
    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    .line 4228
    :cond_3
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->v:Lccsanandroid/widget/LinearLayout;

    instance-of v2, p1, Lccsancom/mbridge/msdk/videocommon/view/StarLevelView;

    if-eqz v2, :cond_4

    .line 4229
    check-cast p1, Lccsancom/mbridge/msdk/videocommon/view/StarLevelView;

    invoke-virtual {p1, v0, v1}, Lccsancom/mbridge/msdk/videocommon/view/StarLevelView;->initScore(D)V

    .line 4231
    :cond_4
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->v:Lccsanandroid/widget/LinearLayout;

    instance-of v2, p1, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeLevelLayoutView;

    if-eqz v2, :cond_5

    .line 4232
    check-cast p1, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeLevelLayoutView;

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getNumberRating()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeLevelLayoutView;->setRatingAndUser(DI)V

    .line 4234
    :cond_5
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object p1

    const-string v0, "alecfc=1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 4235
    const/4 p1, 0x1

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->z:Z

    .line 4237
    :cond_6
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    .line 4238
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v1, "drawable"

    if-nez v0, :cond_7

    :try_start_1
    const-string v0, "zh"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 4239
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->q:Lccsanandroid/widget/ImageView;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v2

    const-string v3, "mbridge_reward_flag_cn"

    .line 4240
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v4

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/foundation/controller/a;->a()Ljava/lang/String;

    move-result-object v4

    .line 4239
    invoke-virtual {v2, v3, v1, v4}, Lccsanandroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/content/res/Resources;->getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsanandroid/widget/ImageView;->setImageDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 4242
    :cond_7
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->q:Lccsanandroid/widget/ImageView;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v2

    const-string v3, "mbridge_reward_flag_en"

    .line 4243
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v4

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/foundation/controller/a;->a()Ljava/lang/String;

    move-result-object v4

    .line 4242
    invoke-virtual {v2, v3, v1, v4}, Lccsanandroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/content/res/Resources;->getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsanandroid/widget/ImageView;->setImageDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 4245
    :goto_0
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object p1

    .line 4246
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/b/b;->b(Ljava/lang/String;)Lccsancom/mbridge/msdk/b/a;

    move-result-object p1

    .line 4247
    const/16 v0, 0x8

    if-eqz p1, :cond_9

    .line 4248
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/b/a;->K()Ljava/lang/String;

    move-result-object p1

    .line 4249
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 4250
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->r:Lccsanandroid/widget/ImageView;

    invoke-virtual {v1, v0}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 4252
    :cond_8
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->r:Lccsanandroid/widget/ImageView;

    new-instance v2, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView$3;

    invoke-direct {v2, p0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView$3;-><init>(Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lccsanandroid/widget/ImageView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 4258
    goto :goto_1

    .line 4259
    :cond_9
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->r:Lccsanandroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 4261
    :goto_1
    iget-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->A:Z

    if-nez p1, :cond_a

    .line 4262
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->H:Lccsanandroid/view/View;

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->setVisibility(I)V

    .line 4264
    :cond_a
    sget p1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge p1, v1, :cond_b

    .line 4265
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->m:Lccsanandroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lccsanandroid/widget/ImageView;->setVisibility(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4266
    goto :goto_2

    .line 4269
    :cond_b
    :try_start_2
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->o:Lccsanandroid/widget/ImageView;

    invoke-virtual {p1}, Lccsanandroid/widget/ImageView;->getDrawable()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 4270
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->a(Lccsanandroid/graphics/drawable/Drawable;)Lccsanandroid/graphics/Bitmap;

    move-result-object p1

    .line 4271
    if-eqz p1, :cond_d

    .line 4272
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->blurBitmap(Lccsanandroid/graphics/Bitmap;)Lccsanandroid/graphics/Bitmap;

    move-result-object p1

    .line 4273
    if-eqz p1, :cond_d

    .line 4274
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->m:Lccsanandroid/widget/ImageView;

    if-eqz v1, :cond_c

    .line 4275
    invoke-virtual {v1, p1}, Lccsanandroid/widget/ImageView;->setImageBitmap(Lccsanandroid/graphics/Bitmap;)V

    .line 4277
    :cond_c
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->n:Lccsanandroid/widget/RelativeLayout;

    if-eqz v1, :cond_d

    .line 4278
    new-instance v2, Lccsanandroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Lccsanandroid/graphics/drawable/BitmapDrawable;-><init>(Lccsanandroid/content/res/Resources;Lccsanandroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Lccsanandroid/widget/RelativeLayout;->setBackground(Lccsanandroid/graphics/drawable/Drawable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4284
    :cond_d
    goto :goto_2

    .line 4282
    :catchall_0
    move-exception p1

    .line 4283
    :try_start_3
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->m:Lccsanandroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lccsanandroid/widget/ImageView;->setVisibility(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 188
    :cond_e
    :goto_2
    goto :goto_3

    .line 186
    :catchall_1
    move-exception p1

    .line 187
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MBridgeBaseView"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :goto_3
    return-void
.end method

.method public setCloseBtnDelay(I)V
    .locals 0

    .line 87
    iput p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->B:I

    .line 88
    return-void
.end method

.method public setNotchPadding(IIII)V
    .locals 4

    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NOTCH NativeEndCard "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string v2, "%1s-%2s-%3s-%4s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MBridgeBaseView"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    iput p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->D:I

    .line 466
    iput p2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->E:I

    .line 467
    iput p3, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->F:I

    .line 468
    iput p4, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->G:I

    .line 470
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->b()V

    .line 471
    return-void
.end method

.method public setUnitId(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->J:Ljava/lang/String;

    .line 98
    return-void
.end method
