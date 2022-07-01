.class public Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;
.super Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;
.source "MBridgeBTNativeEC.java"


# instance fields
.field private A:Lccsancom/mbridge/msdk/videocommon/view/StarLevelView;

.field private B:Z

.field private C:Z

.field private D:I

.field private E:Ljava/lang/Runnable;

.field private F:Lccsanandroid/view/View;

.field private G:Lccsanandroid/view/View;

.field private H:Ljava/lang/String;

.field private I:Lccsancom/mbridge/msdk/video/signal/a/j;

.field private J:Lccsanandroid/webkit/WebView;

.field private p:Lccsanandroid/view/ViewGroup;

.field private q:Lccsanandroid/view/ViewGroup;

.field private r:Lccsanandroid/widget/RelativeLayout;

.field private s:Lccsanandroid/widget/ImageView;

.field private t:Lccsancom/mbridge/msdk/videocommon/view/RoundImageView;

.field private u:Lccsanandroid/widget/ImageView;

.field private v:Lccsanandroid/widget/ImageView;

.field private w:Lccsanandroid/widget/ImageView;

.field private x:Lccsanandroid/widget/TextView;

.field private y:Lccsanandroid/widget/TextView;

.field private z:Lccsanandroid/widget/TextView;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;-><init>(Lccsanandroid/content/Context;)V

    .line 81
    const/4 p1, 0x0

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->B:Z

    .line 82
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->C:Z

    .line 83
    iput p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->D:I

    .line 52
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 81
    const/4 p1, 0x0

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->B:Z

    .line 82
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->C:Z

    .line 83
    iput p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->D:I

    .line 56
    return-void
.end method

.method private a(Lccsanandroid/graphics/drawable/Drawable;)Lccsanandroid/graphics/Bitmap;
    .locals 5

    .line 415
    :try_start_0
    invoke-virtual {p1}, Lccsanandroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 416
    invoke-virtual {p1}, Lccsanandroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 417
    sget-object v2, Lccsanandroid/graphics/Bitmap$Config;->ARGB_8888:Lccsanandroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Lccsanandroid/graphics/Bitmap;->createBitmap(IILccsanandroid/graphics/Bitmap$Config;)Lccsanandroid/graphics/Bitmap;

    move-result-object v2

    .line 418
    new-instance v3, Lccsanandroid/graphics/Canvas;

    invoke-direct {v3, v2}, Lccsanandroid/graphics/Canvas;-><init>(Lccsanandroid/graphics/Bitmap;)V

    .line 419
    const/4 v4, 0x0

    invoke-virtual {p1, v4, v4, v0, v1}, Lccsanandroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 420
    invoke-virtual {p1, v3}, Lccsanandroid/graphics/drawable/Drawable;->draw(Lccsanandroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 421
    return-object v2

    .line 422
    :catchall_0
    move-exception p1

    .line 423
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BTBaseView"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;)Lccsanandroid/view/View;
    .locals 0

    .line 48
    iget-object p0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->F:Lccsanandroid/view/View;

    return-object p0
.end method

.method private a(Lccsanandroid/view/View;)V
    .locals 1

    .line 260
    if-nez p1, :cond_0

    .line 261
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->a:Lccsanandroid/content/Context;

    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->init(Lccsanandroid/content/Context;)V

    .line 262
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->preLoadData()V

    goto :goto_0

    .line 264
    :cond_0
    invoke-virtual {p1}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 265
    invoke-virtual {p1}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Lccsanandroid/view/ViewGroup;->removeView(Lccsanandroid/view/View;)V

    .line 267
    :cond_1
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->addView(Lccsanandroid/view/View;)V

    .line 268
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->b(Lccsanandroid/view/View;)Z

    .line 269
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->a()V

    .line 271
    :goto_0
    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;FF)V
    .locals 4

    .line 48
    const-string v0, "onClicked"

    .line 2429
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->J:Lccsanandroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 2431
    :try_start_0
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1}, Lccsanorg/json/JSONObject;-><init>()V

    .line 2432
    const-string v2, "code"

    sget v3, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->n:I

    invoke-virtual {v1, v2, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 2433
    const-string v2, "id"

    iget-object v3, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 2434
    new-instance v2, Lccsanorg/json/JSONObject;

    invoke-direct {v2}, Lccsanorg/json/JSONObject;-><init>()V

    .line 2435
    const-string v3, "x"

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 2436
    const-string p1, "y"

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 2437
    const-string p1, "data"

    invoke-virtual {v1, p1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 2438
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object p1

    iget-object p2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->J:Lccsanandroid/webkit/WebView;

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

    .line 2441
    goto :goto_0

    .line 2439
    :catch_0
    move-exception p1

    .line 2440
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/a/c;->a()Lccsancom/mbridge/msdk/video/bt/a/c;

    move-result-object p1

    iget-object p2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->J:Lccsanandroid/webkit/WebView;

    iget-object p0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->d:Ljava/lang/String;

    invoke-virtual {p1, p2, v0, p0}, Lccsancom/mbridge/msdk/video/bt/a/c;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;I)V
    .locals 2

    .line 48
    nop

    .line 2341
    nop

    .line 2343
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1}, Lccsanorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2344
    :try_start_1
    sget-object v0, Lccsancom/mbridge/msdk/foundation/same/a;->g:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->a(I)Lccsanorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_1
    .catch Lccsanorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2347
    goto :goto_1

    .line 2345
    :catch_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    .line 2351
    :catchall_0
    move-exception p0

    goto :goto_3

    .line 2345
    :catch_1
    move-exception p1

    .line 2346
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Lccsanorg/json/JSONException;->printStackTrace()V

    move-object v1, v0

    .line 2348
    :goto_1
    iget-object p0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->I:Lccsancom/mbridge/msdk/video/signal/a/j;

    if-eqz p0, :cond_1

    .line 2349
    const/4 p1, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_0
    const-string v0, ""

    :goto_2
    invoke-virtual {p0, p1, v0}, Lccsancom/mbridge/msdk/video/signal/a/j;->click(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2353
    :cond_1
    goto :goto_4

    .line 2352
    :goto_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BTBaseView"

    invoke-static {p1, p0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :goto_4
    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;Z)Z
    .locals 0

    .line 48
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->C:Z

    return p1
.end method

.method private b(Lccsanandroid/view/View;)Z
    .locals 4

    .line 358
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "mbridge_native_ec_layout"

    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->findID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/RelativeLayout;

    iput-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->r:Lccsanandroid/widget/RelativeLayout;

    .line 359
    const-string v1, "mbridge_iv_adbanner_bg"

    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->findID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/ImageView;

    iput-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->s:Lccsanandroid/widget/ImageView;

    .line 360
    const-string v1, "mbridge_iv_adbanner"

    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->findID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsancom/mbridge/msdk/videocommon/view/RoundImageView;

    iput-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->t:Lccsancom/mbridge/msdk/videocommon/view/RoundImageView;

    .line 361
    const-string v1, "mbridge_iv_icon"

    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->findID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/ImageView;

    iput-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->u:Lccsanandroid/widget/ImageView;

    .line 362
    const-string v1, "mbridge_iv_flag"

    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->findID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/ImageView;

    iput-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->v:Lccsanandroid/widget/ImageView;

    .line 363
    const-string v1, "mbridge_iv_link"

    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->findID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/ImageView;

    iput-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->w:Lccsanandroid/widget/ImageView;

    .line 364
    const-string v1, "mbridge_tv_apptitle"

    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->findID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/TextView;

    iput-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->x:Lccsanandroid/widget/TextView;

    .line 365
    const-string v1, "mbridge_tv_appdesc"

    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->findID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/TextView;

    iput-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->y:Lccsanandroid/widget/TextView;

    .line 366
    const-string v1, "mbridge_tv_number"

    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->findID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/TextView;

    iput-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->z:Lccsanandroid/widget/TextView;

    .line 367
    const-string v1, "mbridge_sv_starlevel"

    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->findID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsancom/mbridge/msdk/videocommon/view/StarLevelView;

    iput-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->A:Lccsancom/mbridge/msdk/videocommon/view/StarLevelView;

    .line 368
    const-string v1, "mbridge_iv_close"

    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->findID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->F:Lccsanandroid/view/View;

    .line 369
    const-string v1, "mbridge_tv_cta"

    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->findID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->G:Lccsanandroid/view/View;

    .line 370
    const/16 v1, 0x9

    new-array v1, v1, [Lccsanandroid/view/View;

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->s:Lccsanandroid/widget/ImageView;

    aput-object v2, v1, v0

    const/4 v2, 0x1

    iget-object v3, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->t:Lccsancom/mbridge/msdk/videocommon/view/RoundImageView;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->u:Lccsanandroid/widget/ImageView;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->x:Lccsanandroid/widget/TextView;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->y:Lccsanandroid/widget/TextView;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->z:Lccsanandroid/widget/TextView;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->A:Lccsancom/mbridge/msdk/videocommon/view/StarLevelView;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-object v3, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->F:Lccsanandroid/view/View;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    aput-object p1, v1, v2

    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->isNotNULL([Lccsanandroid/view/View;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    .line 371
    :catchall_0
    move-exception p1

    .line 372
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BTBaseView"

    invoke-static {v2, v1, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 374
    return v0
.end method

.method static synthetic b(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->B:Z

    return p0
.end method

.method static synthetic c(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;)Lccsanandroid/webkit/WebView;
    .locals 0

    .line 48
    iget-object p0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->J:Lccsanandroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic d(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;)Ljava/lang/String;
    .locals 0

    .line 48
    iget-object p0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->H:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method protected final a()V
    .locals 2

    .line 287
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->h:Z

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->r:Lccsanandroid/widget/RelativeLayout;

    new-instance v1, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC$3;

    invoke-direct {v1, p0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC$3;-><init>(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;)V

    invoke-virtual {v0, v1}, Lccsanandroid/widget/RelativeLayout;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 297
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->F:Lccsanandroid/view/View;

    new-instance v1, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC$4;

    invoke-direct {v1, p0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC$4;-><init>(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;)V

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 315
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->G:Lccsanandroid/view/View;

    new-instance v1, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC$5;

    invoke-direct {v1, p0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC$5;-><init>(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;)V

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 322
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->u:Lccsanandroid/widget/ImageView;

    new-instance v1, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC$6;

    invoke-direct {v1, p0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC$6;-><init>(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;)V

    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 329
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->t:Lccsancom/mbridge/msdk/videocommon/view/RoundImageView;

    new-instance v1, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC$7;

    invoke-direct {v1, p0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC$7;-><init>(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;)V

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/videocommon/view/RoundImageView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 337
    :cond_0
    return-void
.end method

.method public blurBitmap(Lccsanandroid/graphics/Bitmap;)Lccsanandroid/graphics/Bitmap;
    .locals 6

    .line 388
    :try_start_0
    invoke-virtual {p1}, Lccsanandroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lccsanandroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Lccsanandroid/graphics/Bitmap$Config;->ARGB_8888:Lccsanandroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Lccsanandroid/graphics/Bitmap;->createBitmap(IILccsanandroid/graphics/Bitmap$Config;)Lccsanandroid/graphics/Bitmap;

    move-result-object v0

    .line 390
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->a:Lccsanandroid/content/Context;

    invoke-virtual {v1}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lccsanandroid/renderscript/RenderScript;->create(Lccsanandroid/content/Context;)Lccsanandroid/renderscript/RenderScript;

    move-result-object v1

    .line 392
    invoke-static {v1}, Lccsanandroid/renderscript/Element;->U8_4(Lccsanandroid/renderscript/RenderScript;)Lccsanandroid/renderscript/Element;

    move-result-object v2

    invoke-static {v1, v2}, Lccsanandroid/renderscript/ScriptIntrinsicBlur;->create(Lccsanandroid/renderscript/RenderScript;Lccsanandroid/renderscript/Element;)Lccsanandroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v2

    .line 394
    invoke-static {v1, p1}, Lccsanandroid/renderscript/Allocation;->createFromBitmap(Lccsanandroid/renderscript/RenderScript;Lccsanandroid/graphics/Bitmap;)Lccsanandroid/renderscript/Allocation;

    move-result-object v3

    .line 395
    invoke-static {v1, v0}, Lccsanandroid/renderscript/Allocation;->createFromBitmap(Lccsanandroid/renderscript/RenderScript;Lccsanandroid/graphics/Bitmap;)Lccsanandroid/renderscript/Allocation;

    move-result-object v4

    .line 397
    const/high16 v5, 0x41200000    # 10.0f

    invoke-virtual {v2, v5}, Lccsanandroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 399
    invoke-virtual {v2, v3}, Lccsanandroid/renderscript/ScriptIntrinsicBlur;->setInput(Lccsanandroid/renderscript/Allocation;)V

    .line 400
    invoke-virtual {v2, v4}, Lccsanandroid/renderscript/ScriptIntrinsicBlur;->forEach(Lccsanandroid/renderscript/Allocation;)V

    .line 402
    invoke-virtual {v4, v0}, Lccsanandroid/renderscript/Allocation;->copyTo(Lccsanandroid/graphics/Bitmap;)V

    .line 403
    invoke-virtual {p1}, Lccsanandroid/graphics/Bitmap;->recycle()V

    .line 405
    invoke-virtual {v1}, Lccsanandroid/renderscript/RenderScript;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    return-object v0

    .line 408
    :catchall_0
    move-exception p1

    .line 409
    const/4 p1, 0x0

    return-object p1
.end method

.method public init(Lccsanandroid/content/Context;)V
    .locals 2

    .line 111
    nop

    .line 1378
    nop

    .line 1379
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->isLandscape()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1380
    const-string p1, "mbridge_reward_endcard_native_land"

    goto :goto_0

    .line 1379
    :cond_0
    const-string p1, "mbridge_reward_endcard_native_hor"

    .line 1382
    :goto_0
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->findLayout(Ljava/lang/String;)I

    move-result p1

    .line 111
    nop

    .line 112
    if-lez p1, :cond_2

    .line 113
    nop

    .line 2274
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->isLandscape()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2275
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->f:Lccsanandroid/view/LayoutInflater;

    invoke-virtual {v0, p1, v1}, Lccsanandroid/view/LayoutInflater;->inflate(ILccsanandroid/view/ViewGroup;)Lccsanandroid/view/View;

    move-result-object p1

    check-cast p1, Lccsanandroid/view/ViewGroup;

    iput-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->q:Lccsanandroid/view/ViewGroup;

    .line 2276
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->addView(Lccsanandroid/view/View;)V

    .line 2277
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->q:Lccsanandroid/view/ViewGroup;

    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->b(Lccsanandroid/view/View;)Z

    move-result p1

    goto :goto_1

    .line 2279
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->f:Lccsanandroid/view/LayoutInflater;

    invoke-virtual {v0, p1, v1}, Lccsanandroid/view/LayoutInflater;->inflate(ILccsanandroid/view/ViewGroup;)Lccsanandroid/view/View;

    move-result-object p1

    check-cast p1, Lccsanandroid/view/ViewGroup;

    iput-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->p:Lccsanandroid/view/ViewGroup;

    .line 2280
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->addView(Lccsanandroid/view/View;)V

    .line 2281
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->p:Lccsanandroid/view/ViewGroup;

    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->b(Lccsanandroid/view/View;)Z

    move-result p1

    .line 113
    :goto_1
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->h:Z

    .line 114
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->a()V

    .line 116
    :cond_2
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 9

    .line 120
    invoke-super {p0}, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;->onAttachedToWindow()V

    .line 121
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->E:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC$1;

    invoke-direct {v0, p0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC$1;-><init>(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->E:Ljava/lang/Runnable;

    .line 132
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->E:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 133
    iget v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->D:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 135
    :cond_1
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->h:Z

    const-string v1, "data"

    const-string v2, "unitId"

    const/4 v3, 0x2

    const-string v4, "id"

    const-string v5, "BTBaseView"

    if-nez v0, :cond_2

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->J:Lccsanandroid/webkit/WebView;

    if-eqz v0, :cond_2

    .line 136
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    .line 138
    :try_start_0
    iget-object v6, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->d:Ljava/lang/String;

    invoke-virtual {v0, v4, v6}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 139
    new-instance v6, Lccsanorg/json/JSONObject;

    invoke-direct {v6}, Lccsanorg/json/JSONObject;-><init>()V

    .line 140
    iget-object v7, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->H:Ljava/lang/String;

    invoke-virtual {v6, v2, v7}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 141
    invoke-virtual {v0, v1, v6}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 142
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NativeEC Call H5 onCloseBtnClicked "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    goto :goto_0

    .line 143
    :catch_0
    move-exception v6

    .line 144
    invoke-virtual {v6}, Lccsanorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :goto_0
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object v6

    iget-object v7, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->J:Lccsanandroid/webkit/WebView;

    invoke-virtual {v0}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, v3}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    const-string v8, "onCloseBtnClicked"

    invoke-virtual {v6, v7, v8, v0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :cond_2
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->J:Lccsanandroid/webkit/WebView;

    if-eqz v0, :cond_3

    .line 149
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    .line 151
    :try_start_1
    iget-object v6, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->d:Ljava/lang/String;

    invoke-virtual {v0, v4, v6}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 152
    new-instance v4, Lccsanorg/json/JSONObject;

    invoke-direct {v4}, Lccsanorg/json/JSONObject;-><init>()V

    .line 153
    iget-object v6, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->H:Ljava/lang/String;

    invoke-virtual {v4, v2, v6}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 154
    invoke-virtual {v0, v1, v4}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NativeEC Call H5 onEndCardShow "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lccsanorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 158
    goto :goto_1

    .line 156
    :catch_1
    move-exception v1

    .line 157
    invoke-virtual {v1}, Lccsanorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :goto_1
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object v1

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->J:Lccsanandroid/webkit/WebView;

    invoke-virtual {v0}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, v3}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    const-string v3, "onNativeECShow"

    invoke-virtual {v1, v2, v3, v0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_3
    return-void
.end method

.method public onDestory()V
    .locals 0

    .line 61
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 165
    invoke-super {p0}, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;->onDetachedFromWindow()V

    .line 166
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->E:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 169
    :cond_0
    return-void
.end method

.method public onSelfConfigurationChanged(Lccsanandroid/content/res/Configuration;)V
    .locals 1

    .line 248
    invoke-super {p0, p1}, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;->onSelfConfigurationChanged(Lccsanandroid/content/res/Configuration;)V

    .line 249
    iget p1, p1, Lccsanandroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->g:I

    .line 250
    iget p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->g:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 251
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->p:Lccsanandroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->removeView(Lccsanandroid/view/View;)V

    .line 252
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->q:Lccsanandroid/view/ViewGroup;

    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->a(Lccsanandroid/view/View;)V

    goto :goto_0

    .line 254
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->q:Lccsanandroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->removeView(Lccsanandroid/view/View;)V

    .line 255
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->p:Lccsanandroid/view/ViewGroup;

    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->a(Lccsanandroid/view/View;)V

    .line 257
    :goto_0
    return-void
.end method

.method public preLoadData()V
    .locals 7

    .line 173
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->h:Z

    if-eqz v0, :cond_8

    .line 174
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->e:Lccsancom/mbridge/msdk/videocommon/d/c;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->e:Lccsancom/mbridge/msdk/videocommon/d/c;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/videocommon/d/c;->n()I

    move-result v0

    iput v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->D:I

    .line 177
    :cond_0
    new-instance v0, Lccsancom/mbridge/msdk/video/module/a/a/e;

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->t:Lccsancom/mbridge/msdk/videocommon/view/RoundImageView;

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v3, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->H:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lccsancom/mbridge/msdk/video/module/a/a/e;-><init>(Lccsanandroid/widget/ImageView;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;)V

    .line 178
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->a:Lccsanandroid/content/Context;

    invoke-virtual {v1}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/same/c/b;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/same/c/b;

    move-result-object v1

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lccsancom/mbridge/msdk/foundation/same/c/b;->a(Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/same/c/c;)V

    .line 180
    new-instance v0, Lccsancom/mbridge/msdk/video/module/a/a/j;

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->u:Lccsanandroid/widget/ImageView;

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v2, v3}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Lccsanandroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lccsancom/mbridge/msdk/video/module/a/a/j;-><init>(Lccsanandroid/widget/ImageView;I)V

    .line 181
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->a:Lccsanandroid/content/Context;

    invoke-virtual {v1}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/same/c/b;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/same/c/b;

    move-result-object v1

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getIconUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lccsancom/mbridge/msdk/foundation/same/c/b;->a(Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/same/c/c;)V

    .line 183
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->x:Lccsanandroid/widget/TextView;

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->y:Lccsanandroid/widget/TextView;

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAppDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->z:Lccsanandroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getNumberRating()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->A:Lccsancom/mbridge/msdk/videocommon/view/StarLevelView;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/videocommon/view/StarLevelView;->removeAllViews()V

    .line 187
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRating()D

    move-result-wide v0

    .line 188
    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_1

    .line 189
    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    .line 191
    :cond_1
    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->A:Lccsancom/mbridge/msdk/videocommon/view/StarLevelView;

    invoke-virtual {v2, v0, v1}, Lccsancom/mbridge/msdk/videocommon/view/StarLevelView;->initScore(D)V

    .line 192
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    const/16 v2, 0x8

    if-ge v0, v1, :cond_2

    .line 193
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->s:Lccsanandroid/widget/ImageView;

    invoke-virtual {v0, v2}, Lccsanandroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 194
    return-void

    .line 197
    :cond_2
    :try_start_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->t:Lccsancom/mbridge/msdk/videocommon/view/RoundImageView;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/videocommon/view/RoundImageView;->getDrawable()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 198
    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->a(Lccsanandroid/graphics/drawable/Drawable;)Lccsanandroid/graphics/Bitmap;

    move-result-object v0

    .line 199
    if-eqz v0, :cond_3

    .line 200
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->blurBitmap(Lccsanandroid/graphics/Bitmap;)Lccsanandroid/graphics/Bitmap;

    move-result-object v0

    .line 201
    if-eqz v0, :cond_3

    .line 202
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->s:Lccsanandroid/widget/ImageView;

    invoke-virtual {v1, v0}, Lccsanandroid/widget/ImageView;->setImageBitmap(Lccsanandroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 207
    :cond_3
    goto :goto_0

    .line 205
    :catchall_0
    move-exception v0

    .line 206
    :try_start_2
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->s:Lccsanandroid/widget/ImageView;

    invoke-virtual {v0, v2}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 209
    :goto_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object v0

    const-string v1, "alecfc=1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->B:Z

    .line 213
    :cond_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 214
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-string v3, "drawable"

    if-nez v1, :cond_5

    :try_start_3
    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 215
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->v:Lccsanandroid/widget/ImageView;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v4

    const-string v5, "mbridge_reward_flag_cn"

    .line 216
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v6

    invoke-virtual {v6}, Lccsancom/mbridge/msdk/foundation/controller/a;->a()Ljava/lang/String;

    move-result-object v6

    .line 215
    invoke-virtual {v4, v5, v3, v6}, Lccsanandroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lccsanandroid/content/res/Resources;->getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setImageDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 218
    :cond_5
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->v:Lccsanandroid/widget/ImageView;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v4

    const-string v5, "mbridge_reward_flag_en"

    .line 219
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v6

    invoke-virtual {v6}, Lccsancom/mbridge/msdk/foundation/controller/a;->a()Ljava/lang/String;

    move-result-object v6

    .line 218
    invoke-virtual {v4, v5, v3, v6}, Lccsanandroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lccsanandroid/content/res/Resources;->getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setImageDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 221
    :goto_1
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v0

    .line 222
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccsancom/mbridge/msdk/b/b;->b(Ljava/lang/String;)Lccsancom/mbridge/msdk/b/a;

    move-result-object v0

    .line 223
    if-eqz v0, :cond_7

    .line 224
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/b/a;->K()Ljava/lang/String;

    move-result-object v0

    .line 225
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 226
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->w:Lccsanandroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 228
    :cond_6
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->w:Lccsanandroid/widget/ImageView;

    new-instance v3, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC$2;

    invoke-direct {v3, p0, v0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC$2;-><init>(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lccsanandroid/widget/ImageView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 234
    goto :goto_2

    .line 235
    :cond_7
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->w:Lccsanandroid/widget/ImageView;

    invoke-virtual {v0, v2}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 237
    :goto_2
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->C:Z

    if-nez v0, :cond_8

    .line 238
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->F:Lccsanandroid/view/View;

    invoke-virtual {v0, v2}, Lccsanandroid/view/View;->setVisibility(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 243
    :cond_8
    goto :goto_3

    .line 241
    :catchall_1
    move-exception v0

    .line 242
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BTBaseView"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    :goto_3
    return-void
.end method

.method public setCreateWebView(Lccsanandroid/webkit/WebView;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->J:Lccsanandroid/webkit/WebView;

    .line 107
    return-void
.end method

.method public setJSCommon(Lccsancom/mbridge/msdk/video/signal/a/j;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->I:Lccsancom/mbridge/msdk/video/signal/a/j;

    .line 100
    return-void
.end method

.method public setUnitId(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->H:Ljava/lang/String;

    .line 94
    return-void
.end method
