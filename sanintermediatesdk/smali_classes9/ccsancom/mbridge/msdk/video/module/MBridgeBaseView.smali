.class public abstract Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;
.super Lccsanandroid/widget/RelativeLayout;
.source "MBridgeBaseView.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "MBridgeBaseView"


# instance fields
.field protected a:Lccsanandroid/content/Context;

.field protected b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

.field protected c:Lccsanandroid/view/LayoutInflater;

.field protected d:I

.field protected e:Lccsancom/mbridge/msdk/video/module/a/a;

.field protected f:Z

.field protected g:F

.field protected h:F

.field protected i:Z


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1

    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lccsanandroid/widget/RelativeLayout;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 35
    const/4 p2, 0x1

    iput p2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;->d:I

    .line 37
    new-instance p2, Lccsancom/mbridge/msdk/video/module/a/a/f;

    invoke-direct {p2}, Lccsancom/mbridge/msdk/video/module/a/a/f;-><init>()V

    iput-object p2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;->e:Lccsancom/mbridge/msdk/video/module/a/a;

    .line 39
    const/4 p2, 0x0

    iput-boolean p2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;->f:Z

    .line 62
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;->a:Lccsanandroid/content/Context;

    .line 63
    invoke-static {p1}, Lccsanandroid/view/LayoutInflater;->from(Lccsanandroid/content/Context;)Lccsanandroid/view/LayoutInflater;

    move-result-object p2

    iput-object p2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;->c:Lccsanandroid/view/LayoutInflater;

    .line 64
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;->init(Lccsanandroid/content/Context;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;Z)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lccsanandroid/widget/RelativeLayout;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 35
    const/4 p2, 0x1

    iput p2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;->d:I

    .line 37
    new-instance p2, Lccsancom/mbridge/msdk/video/module/a/a/f;

    invoke-direct {p2}, Lccsancom/mbridge/msdk/video/module/a/a/f;-><init>()V

    iput-object p2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;->e:Lccsancom/mbridge/msdk/video/module/a/a;

    .line 39
    const/4 p2, 0x0

    iput-boolean p2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;->f:Z

    .line 54
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;->a:Lccsanandroid/content/Context;

    .line 55
    invoke-static {p1}, Lccsanandroid/view/LayoutInflater;->from(Lccsanandroid/content/Context;)Lccsanandroid/view/LayoutInflater;

    move-result-object p2

    iput-object p2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;->c:Lccsanandroid/view/LayoutInflater;

    .line 56
    iput-boolean p3, p0, Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;->i:Z

    .line 57
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;->init(Lccsanandroid/content/Context;)V

    .line 58
    return-void
.end method


# virtual methods
.method protected final a(I)Lccsanorg/json/JSONObject;
    .locals 4

    .line 234
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    .line 236
    :try_start_0
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1}, Lccsanorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 237
    :try_start_1
    sget-object v0, Lccsancom/mbridge/msdk/foundation/same/a;->e:Ljava/lang/String;

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v2

    iget v3, p0, Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;->g:F

    invoke-static {v2, v3}, Lccsancom/mbridge/msdk/foundation/tools/u;->a(Lccsanandroid/content/Context;F)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 238
    sget-object v0, Lccsancom/mbridge/msdk/foundation/same/a;->f:Ljava/lang/String;

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v2

    iget v3, p0, Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;->h:F

    invoke-static {v2, v3}, Lccsancom/mbridge/msdk/foundation/tools/u;->a(Lccsanandroid/content/Context;F)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 239
    sget-object v0, Lccsancom/mbridge/msdk/foundation/same/a;->h:Ljava/lang/String;

    invoke-virtual {v1, v0, p1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;
    :try_end_1
    .catch Lccsanorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 241
    :try_start_2
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;->getContext()Lccsanandroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Lccsanandroid/content/res/Resources;->getConfiguration()Lccsanandroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Lccsanandroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;->d:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lccsanorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 244
    goto :goto_0

    .line 242
    :catch_0
    move-exception p1

    .line 243
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 245
    :goto_0
    sget-object p1, Lccsancom/mbridge/msdk/foundation/same/a;->i:Ljava/lang/String;

    iget v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;->d:I

    invoke-virtual {v1, p1, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 246
    sget-object p1, Lccsancom/mbridge/msdk/foundation/same/a;->j:Ljava/lang/String;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/u;->d(Lccsanandroid/content/Context;)F

    move-result v0

    float-to-double v2, v0

    invoke-virtual {v1, p1, v2, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;D)Lccsanorg/json/JSONObject;
    :try_end_3
    .catch Lccsanorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    .line 249
    goto :goto_2

    .line 247
    :catch_1
    move-exception p1

    move-object v0, v1

    goto :goto_1

    :catch_2
    move-exception p1

    .line 248
    :goto_1
    invoke-virtual {p1}, Lccsanorg/json/JSONException;->printStackTrace()V

    move-object v1, v0

    .line 250
    :goto_2
    return-object v1
.end method

.method protected c()V
    .locals 0

    .line 84
    return-void
.end method

.method protected final d()Ljava/lang/String;
    .locals 1

    .line 230
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;->a(I)Lccsanorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public defaultShow()V
    .locals 2

    .line 146
    const-string v0, "MBridgeBaseView"

    const-string v1, "defaultShow"

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public findColor(Ljava/lang/String;)I
    .locals 2

    .line 99
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;->a:Lccsanandroid/content/Context;

    invoke-virtual {v0}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "color"

    invoke-static {v0, p1, v1}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public findDrawable(Ljava/lang/String;)I
    .locals 2

    .line 103
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;->a:Lccsanandroid/content/Context;

    invoke-virtual {v0}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "drawable"

    invoke-static {v0, p1, v1}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public findID(Ljava/lang/String;)I
    .locals 2

    .line 91
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;->a:Lccsanandroid/content/Context;

    invoke-virtual {v0}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    invoke-static {v0, p1, v1}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public findLayout(Ljava/lang/String;)I
    .locals 2

    .line 95
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;->a:Lccsanandroid/content/Context;

    invoke-virtual {v0}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "layout"

    invoke-static {v0, p1, v1}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getCampaign()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;
    .locals 1

    .line 219
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    return-object v0
.end method

.method public getParentLinearLayoutParams()Lccsanandroid/widget/LinearLayout$LayoutParams;
    .locals 2

    .line 211
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 212
    instance-of v1, v0, Lccsanandroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_0

    .line 213
    check-cast v0, Lccsanandroid/widget/LinearLayout$LayoutParams;

    return-object v0

    .line 215
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getParentRelativeLayoutParams()Lccsanandroid/widget/RelativeLayout$LayoutParams;
    .locals 2

    .line 204
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 205
    instance-of v1, v0, Lccsanandroid/widget/RelativeLayout$LayoutParams;

    if-eqz v1, :cond_0

    .line 206
    check-cast v0, Lccsanandroid/widget/RelativeLayout$LayoutParams;

    return-object v0

    .line 208
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract init(Lccsanandroid/content/Context;)V
.end method

.method public isLandscape()Z
    .locals 2

    .line 150
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;->a:Lccsanandroid/content/Context;

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

    .line 107
    nop

    .line 108
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 109
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 110
    if-eqz v3, :cond_0

    .line 111
    nop

    .line 109
    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    goto :goto_0

    .line 113
    :cond_0
    nop

    .line 114
    goto :goto_1

    .line 109
    :cond_1
    move v0, v3

    .line 118
    :cond_2
    :goto_1
    return v0
.end method

.method public onConfigurationChanged(Lccsanandroid/content/res/Configuration;)V
    .locals 2

    .line 69
    iget v0, p1, Lccsanandroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;->d:I

    .line 70
    invoke-super {p0, p1}, Lccsanandroid/widget/RelativeLayout;->onConfigurationChanged(Lccsanandroid/content/res/Configuration;)V

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigurationChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lccsanandroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MBridgeBaseView"

    invoke-static {v0, p1}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    return-void
.end method

.method public onInterceptTouchEvent(Lccsanandroid/view/MotionEvent;)Z
    .locals 1

    .line 224
    invoke-virtual {p1}, Lccsanandroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;->g:F

    .line 225
    invoke-virtual {p1}, Lccsanandroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;->h:F

    .line 226
    invoke-super {p0, p1}, Lccsanandroid/widget/RelativeLayout;->onInterceptTouchEvent(Lccsanandroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onSelfConfigurationChanged(Lccsanandroid/content/res/Configuration;)V
    .locals 2

    .line 75
    iget v0, p1, Lccsanandroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;->d:I

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSelfConfigurationChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lccsanandroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MBridgeBaseView"

    invoke-static {v0, p1}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return-void
.end method

.method public setCampaign(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 88
    return-void
.end method

.method public setLayoutCenter(II)V
    .locals 3

    .line 154
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;->getParentRelativeLayoutParams()Lccsanandroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 155
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;->getParentLinearLayoutParams()Lccsanandroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 156
    const/16 v2, -0x3e7

    if-eqz v0, :cond_2

    .line 157
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lccsanandroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 158
    if-eq p1, v2, :cond_0

    .line 159
    iput p1, v0, Lccsanandroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 161
    :cond_0
    if-eq p2, v2, :cond_1

    .line 162
    iput p2, v0, Lccsanandroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 164
    :cond_1
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 165
    :cond_2
    if-eqz v1, :cond_5

    .line 166
    const/16 v0, 0x11

    iput v0, v1, Lccsanandroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 167
    if-eq p1, v2, :cond_3

    .line 168
    iput p1, v1, Lccsanandroid/widget/LinearLayout$LayoutParams;->width:I

    .line 170
    :cond_3
    if-eq p2, v2, :cond_4

    .line 171
    iput p2, v1, Lccsanandroid/widget/LinearLayout$LayoutParams;->height:I

    .line 173
    :cond_4
    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 175
    :cond_5
    :goto_0
    return-void
.end method

.method public setLayoutParam(IIII)V
    .locals 3

    .line 178
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;->getParentRelativeLayoutParams()Lccsanandroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 179
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;->getParentLinearLayoutParams()Lccsanandroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 180
    const/16 v2, -0x3e7

    if-eqz v0, :cond_2

    .line 181
    iput p2, v0, Lccsanandroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 182
    iput p1, v0, Lccsanandroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 183
    if-eq p3, v2, :cond_0

    .line 184
    iput p3, v0, Lccsanandroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 186
    :cond_0
    if-eq p4, v2, :cond_1

    .line 187
    iput p4, v0, Lccsanandroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 189
    :cond_1
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 190
    :cond_2
    if-eqz v1, :cond_5

    .line 191
    iput p2, v1, Lccsanandroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 192
    iput p1, v1, Lccsanandroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 193
    if-eq p3, v2, :cond_3

    .line 194
    iput p3, v1, Lccsanandroid/widget/LinearLayout$LayoutParams;->width:I

    .line 196
    :cond_3
    if-eq p4, v2, :cond_4

    .line 197
    iput p4, v1, Lccsanandroid/widget/LinearLayout$LayoutParams;->height:I

    .line 199
    :cond_4
    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 201
    :cond_5
    :goto_0
    return-void
.end method

.method public setMatchParent()V
    .locals 2

    .line 122
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 123
    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Lccsanandroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Lccsanandroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 125
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 127
    :cond_0
    iput v1, v0, Lccsanandroid/view/ViewGroup$LayoutParams;->height:I

    .line 128
    iput v1, v0, Lccsanandroid/view/ViewGroup$LayoutParams;->width:I

    .line 130
    :goto_0
    return-void
.end method

.method public setNotifyListener(Lccsancom/mbridge/msdk/video/module/a/a;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;->e:Lccsancom/mbridge/msdk/video/module/a/a;

    .line 81
    return-void
.end method

.method public setWrapContent()V
    .locals 2

    .line 132
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 133
    const/4 v1, -0x2

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Lccsanandroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Lccsanandroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 135
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/video/module/MBridgeBaseView;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 137
    :cond_0
    iput v1, v0, Lccsanandroid/view/ViewGroup$LayoutParams;->height:I

    .line 138
    iput v1, v0, Lccsanandroid/view/ViewGroup$LayoutParams;->width:I

    .line 140
    :goto_0
    return-void
.end method
