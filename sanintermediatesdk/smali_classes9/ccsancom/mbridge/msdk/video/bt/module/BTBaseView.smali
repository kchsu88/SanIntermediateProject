.class public abstract Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;
.super Lccsanandroid/widget/FrameLayout;
.source "BTBaseView.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "BTBaseView"

.field protected static n:I

.field protected static o:I


# instance fields
.field protected a:Lccsanandroid/content/Context;

.field protected b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

.field protected c:Ljava/lang/String;

.field protected d:Ljava/lang/String;

.field protected e:Lccsancom/mbridge/msdk/videocommon/d/c;

.field protected f:Lccsanandroid/view/LayoutInflater;

.field protected g:I

.field protected h:Z

.field protected i:F

.field protected j:F

.field protected k:Lccsanandroid/graphics/Rect;

.field protected l:I

.field protected m:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    const/4 v0, 0x0

    sput v0, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;->n:I

    .line 55
    const/4 v0, 0x1

    sput v0, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;->o:I

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1

    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2}, Lccsanandroid/widget/FrameLayout;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 39
    const-string p2, ""

    iput-object p2, p0, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;->d:Ljava/lang/String;

    .line 43
    const/4 p2, 0x1

    iput p2, p0, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;->g:I

    .line 45
    const/4 p2, 0x0

    iput-boolean p2, p0, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;->h:Z

    .line 79
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;->a:Lccsanandroid/content/Context;

    .line 80
    invoke-static {p1}, Lccsanandroid/view/LayoutInflater;->from(Lccsanandroid/content/Context;)Lccsanandroid/view/LayoutInflater;

    move-result-object p2

    iput-object p2, p0, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;->f:Lccsanandroid/view/LayoutInflater;

    .line 81
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;->init(Lccsanandroid/content/Context;)V

    .line 82
    return-void
.end method

.method protected static a(Lccsanandroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 323
    :try_start_0
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    .line 324
    const-string v1, "code"

    sget v2, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;->n:I

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 325
    const-string v1, "id"

    invoke-virtual {v0, v1, p2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 326
    new-instance p2, Lccsanorg/json/JSONObject;

    invoke-direct {p2}, Lccsanorg/json/JSONObject;-><init>()V

    .line 327
    const-string v1, "data"

    invoke-virtual {v0, v1, p2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 328
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object p2

    invoke-virtual {v0}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p0, p1, v0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    goto :goto_0

    .line 329
    :catch_0
    move-exception p1

    .line 330
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/a/c;->a()Lccsancom/mbridge/msdk/video/bt/a/c;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p0, v0}, Lccsancom/mbridge/msdk/video/bt/a/c;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;)V

    .line 331
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BTBaseView"

    invoke-static {p1, p0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    :goto_0
    return-void
.end method


# virtual methods
.method protected final a(I)Lccsanorg/json/JSONObject;
    .locals 4

    .line 281
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    .line 283
    :try_start_0
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1}, Lccsanorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 284
    :try_start_1
    sget-object v0, Lccsancom/mbridge/msdk/foundation/same/a;->e:Ljava/lang/String;

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v2

    iget v3, p0, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;->i:F

    invoke-static {v2, v3}, Lccsancom/mbridge/msdk/foundation/tools/u;->a(Lccsanandroid/content/Context;F)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 285
    sget-object v0, Lccsancom/mbridge/msdk/foundation/same/a;->f:Ljava/lang/String;

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v2

    iget v3, p0, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;->j:F

    invoke-static {v2, v3}, Lccsancom/mbridge/msdk/foundation/tools/u;->a(Lccsanandroid/content/Context;F)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 286
    sget-object v0, Lccsancom/mbridge/msdk/foundation/same/a;->h:Ljava/lang/String;

    invoke-virtual {v1, v0, p1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;
    :try_end_1
    .catch Lccsanorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 288
    :try_start_2
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;->getContext()Lccsanandroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Lccsanandroid/content/res/Resources;->getConfiguration()Lccsanandroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Lccsanandroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;->g:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lccsanorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 291
    goto :goto_0

    .line 289
    :catch_0
    move-exception p1

    .line 290
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 292
    :goto_0
    sget-object p1, Lccsancom/mbridge/msdk/foundation/same/a;->i:Ljava/lang/String;

    iget v0, p0, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;->g:I

    invoke-virtual {v1, p1, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 293
    sget-object p1, Lccsancom/mbridge/msdk/foundation/same/a;->j:Ljava/lang/String;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/u;->d(Lccsanandroid/content/Context;)F

    move-result v0

    float-to-double v2, v0

    invoke-virtual {v1, p1, v2, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;D)Lccsanorg/json/JSONObject;
    :try_end_3
    .catch Lccsanorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    .line 296
    goto :goto_2

    .line 294
    :catch_1
    move-exception p1

    move-object v0, v1

    goto :goto_1

    :catch_2
    move-exception p1

    .line 295
    :goto_1
    invoke-virtual {p1}, Lccsanorg/json/JSONException;->printStackTrace()V

    move-object v1, v0

    .line 297
    :goto_2
    return-object v1
.end method

.method protected a()V
    .locals 0

    .line 95
    return-void
.end method

.method public defaultShow()V
    .locals 2

    .line 163
    const-string v0, "BTBaseView"

    const-string v1, "defaultShow"

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method public findColor(Ljava/lang/String;)I
    .locals 2

    .line 114
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;->a:Lccsanandroid/content/Context;

    invoke-virtual {v0}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "color"

    invoke-static {v0, p1, v1}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public findDrawable(Ljava/lang/String;)I
    .locals 2

    .line 118
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;->a:Lccsanandroid/content/Context;

    invoke-virtual {v0}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "drawable"

    invoke-static {v0, p1, v1}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public findID(Ljava/lang/String;)I
    .locals 2

    .line 106
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;->a:Lccsanandroid/content/Context;

    invoke-virtual {v0}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    invoke-static {v0, p1, v1}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public findLayout(Ljava/lang/String;)I
    .locals 2

    .line 110
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;->a:Lccsanandroid/content/Context;

    invoke-virtual {v0}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "layout"

    invoke-static {v0, p1, v1}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getCampaign()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;
    .locals 1

    .line 266
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    return-object v0
.end method

.method public getInstanceId()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getParentFrameLayoutParams()Lccsanandroid/widget/FrameLayout$LayoutParams;
    .locals 2

    .line 258
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 259
    instance-of v1, v0, Lccsanandroid/widget/FrameLayout$LayoutParams;

    if-eqz v1, :cond_0

    .line 260
    check-cast v0, Lccsanandroid/widget/FrameLayout$LayoutParams;

    return-object v0

    .line 262
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getParentLinearLayoutParams()Lccsanandroid/widget/LinearLayout$LayoutParams;
    .locals 2

    .line 250
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 251
    instance-of v1, v0, Lccsanandroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_0

    .line 252
    check-cast v0, Lccsanandroid/widget/LinearLayout$LayoutParams;

    return-object v0

    .line 254
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getParentRelativeLayoutParams()Lccsanandroid/widget/RelativeLayout$LayoutParams;
    .locals 2

    .line 242
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 243
    instance-of v1, v0, Lccsanandroid/widget/RelativeLayout$LayoutParams;

    if-eqz v1, :cond_0

    .line 244
    check-cast v0, Lccsanandroid/widget/RelativeLayout$LayoutParams;

    return-object v0

    .line 246
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRect()Lccsanandroid/graphics/Rect;
    .locals 1

    .line 301
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;->k:Lccsanandroid/graphics/Rect;

    return-object v0
.end method

.method public getUnitId()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getViewHeight()I
    .locals 1

    .line 318
    iget v0, p0, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;->m:I

    return v0
.end method

.method public getViewWidth()I
    .locals 1

    .line 314
    iget v0, p0, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;->l:I

    return v0
.end method

.method public abstract init(Lccsanandroid/content/Context;)V
.end method

.method public isLandscape()Z
    .locals 2

    .line 167
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;->a:Lccsanandroid/content/Context;

    invoke-virtual {v0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/content/res/Resources;->getConfiguration()Lccsanandroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Lccsanandroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public varargs isNotNULL([Lccsanandroid/view/View;)Z
    .locals 4

    .line 122
    nop

    .line 123
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 124
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 125
    if-eqz v3, :cond_0

    .line 126
    nop

    .line 124
    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    goto :goto_0

    .line 128
    :cond_0
    nop

    .line 129
    goto :goto_1

    .line 124
    :cond_1
    move v0, v3

    .line 133
    :cond_2
    :goto_1
    return v0
.end method

.method public onConfigurationChanged(Lccsanandroid/content/res/Configuration;)V
    .locals 1

    .line 86
    iget v0, p1, Lccsanandroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;->g:I

    .line 87
    invoke-super {p0, p1}, Lccsanandroid/widget/FrameLayout;->onConfigurationChanged(Lccsanandroid/content/res/Configuration;)V

    .line 88
    return-void
.end method

.method public abstract onDestory()V
.end method

.method public onInterceptTouchEvent(Lccsanandroid/view/MotionEvent;)Z
    .locals 1

    .line 271
    invoke-virtual {p1}, Lccsanandroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;->i:F

    .line 272
    invoke-virtual {p1}, Lccsanandroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;->j:F

    .line 273
    invoke-super {p0, p1}, Lccsanandroid/widget/FrameLayout;->onInterceptTouchEvent(Lccsanandroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onSelfConfigurationChanged(Lccsanandroid/content/res/Configuration;)V
    .locals 0

    .line 91
    iget p1, p1, Lccsanandroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;->g:I

    .line 92
    return-void
.end method

.method public setCampaign(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 99
    return-void
.end method

.method public setInstanceId(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;->d:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setLayout(II)V
    .locals 0

    .line 309
    iput p1, p0, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;->l:I

    .line 310
    iput p2, p0, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;->m:I

    .line 311
    return-void
.end method

.method public setLayoutCenter(II)V
    .locals 4

    .line 171
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;->getParentFrameLayoutParams()Lccsanandroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    .line 172
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;->getParentRelativeLayoutParams()Lccsanandroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    .line 173
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;->getParentLinearLayoutParams()Lccsanandroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    .line 174
    const/16 v3, -0x3e7

    if-eqz v1, :cond_2

    .line 175
    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Lccsanandroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 176
    if-eq p1, v3, :cond_0

    .line 177
    iput p1, v1, Lccsanandroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 179
    :cond_0
    if-eq p2, v3, :cond_1

    .line 180
    iput p2, v1, Lccsanandroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 182
    :cond_1
    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 183
    :cond_2
    const/16 v1, 0x11

    if-eqz v2, :cond_5

    .line 184
    iput v1, v2, Lccsanandroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 185
    if-eq p1, v3, :cond_3

    .line 186
    iput p1, v2, Lccsanandroid/widget/LinearLayout$LayoutParams;->width:I

    .line 188
    :cond_3
    if-eq p2, v3, :cond_4

    .line 189
    iput p2, v2, Lccsanandroid/widget/LinearLayout$LayoutParams;->height:I

    .line 191
    :cond_4
    invoke-virtual {p0, v2}, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 192
    :cond_5
    if-eqz v0, :cond_8

    .line 193
    iput v1, v0, Lccsanandroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 194
    if-eq p1, v3, :cond_6

    .line 195
    iput p1, v0, Lccsanandroid/widget/FrameLayout$LayoutParams;->width:I

    .line 197
    :cond_6
    if-eq p2, v3, :cond_7

    .line 198
    iput p2, v0, Lccsanandroid/widget/FrameLayout$LayoutParams;->height:I

    .line 200
    :cond_7
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 202
    :cond_8
    :goto_0
    return-void
.end method

.method public setLayoutParam(IIII)V
    .locals 4

    .line 205
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;->getParentFrameLayoutParams()Lccsanandroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    .line 206
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;->getParentRelativeLayoutParams()Lccsanandroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    .line 207
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;->getParentLinearLayoutParams()Lccsanandroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    .line 208
    const/16 v3, -0x3e7

    if-eqz v1, :cond_2

    .line 209
    iput p2, v1, Lccsanandroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 210
    iput p1, v1, Lccsanandroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 211
    if-eq p3, v3, :cond_0

    .line 212
    iput p3, v1, Lccsanandroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 214
    :cond_0
    if-eq p4, v3, :cond_1

    .line 215
    iput p4, v1, Lccsanandroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 217
    :cond_1
    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 218
    :cond_2
    if-eqz v2, :cond_5

    .line 219
    iput p2, v2, Lccsanandroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 220
    iput p1, v2, Lccsanandroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 221
    if-eq p3, v3, :cond_3

    .line 222
    iput p3, v2, Lccsanandroid/widget/LinearLayout$LayoutParams;->width:I

    .line 224
    :cond_3
    if-eq p4, v3, :cond_4

    .line 225
    iput p4, v2, Lccsanandroid/widget/LinearLayout$LayoutParams;->height:I

    .line 227
    :cond_4
    invoke-virtual {p0, v2}, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 228
    :cond_5
    if-eqz v0, :cond_8

    .line 229
    iput p2, v0, Lccsanandroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 230
    iput p1, v0, Lccsanandroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 231
    if-eq p3, v3, :cond_6

    .line 232
    iput p3, v0, Lccsanandroid/widget/FrameLayout$LayoutParams;->width:I

    .line 234
    :cond_6
    if-eq p4, v3, :cond_7

    .line 235
    iput p4, v0, Lccsanandroid/widget/FrameLayout$LayoutParams;->height:I

    .line 237
    :cond_7
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 239
    :cond_8
    :goto_0
    return-void
.end method

.method public setMatchParent()V
    .locals 2

    .line 137
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 138
    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 139
    new-instance v0, Lccsanandroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Lccsanandroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 140
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 142
    :cond_0
    iput v1, v0, Lccsanandroid/view/ViewGroup$LayoutParams;->height:I

    .line 143
    iput v1, v0, Lccsanandroid/view/ViewGroup$LayoutParams;->width:I

    .line 145
    :goto_0
    return-void
.end method

.method public setRect(Lccsanandroid/graphics/Rect;)V
    .locals 0

    .line 305
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;->k:Lccsanandroid/graphics/Rect;

    .line 306
    return-void
.end method

.method public setRewardUnitSetting(Lccsancom/mbridge/msdk/videocommon/d/c;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;->e:Lccsancom/mbridge/msdk/videocommon/d/c;

    .line 103
    return-void
.end method

.method public setUnitId(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;->c:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setWrapContent()V
    .locals 2

    .line 148
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 149
    const/4 v1, -0x2

    if-nez v0, :cond_0

    .line 150
    new-instance v0, Lccsanandroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Lccsanandroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 151
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 153
    :cond_0
    iput v1, v0, Lccsanandroid/view/ViewGroup$LayoutParams;->height:I

    .line 154
    iput v1, v0, Lccsanandroid/view/ViewGroup$LayoutParams;->width:I

    .line 156
    :goto_0
    return-void
.end method
