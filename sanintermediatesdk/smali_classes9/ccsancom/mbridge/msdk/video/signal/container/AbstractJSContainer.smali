.class public abstract Lccsancom/mbridge/msdk/video/signal/container/AbstractJSContainer;
.super Lccsanandroid/widget/FrameLayout;
.source "AbstractJSContainer.java"

# interfaces
.implements Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;


# instance fields
.field private a:I

.field private b:I

.field protected j:Lccsanandroid/app/Activity;

.field protected k:Ljava/lang/String;

.field protected l:Ljava/lang/String;

.field protected m:Lccsancom/mbridge/msdk/videocommon/d/c;

.field protected n:Ljava/lang/String;

.field protected o:Lccsancom/mbridge/msdk/videocommon/b/c;

.field protected p:Ljava/lang/String;

.field protected q:I

.field protected r:Z

.field protected s:Z

.field protected t:I

.field protected u:I

.field protected v:I

.field protected w:Z

.field protected x:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1

    .line 58
    invoke-direct {p0, p1}, Lccsanandroid/widget/FrameLayout;-><init>(Lccsanandroid/content/Context;)V

    .line 39
    const/4 p1, 0x0

    iput p1, p0, Lccsancom/mbridge/msdk/video/signal/container/AbstractJSContainer;->a:I

    .line 40
    const/4 v0, 0x1

    iput v0, p0, Lccsancom/mbridge/msdk/video/signal/container/AbstractJSContainer;->b:I

    .line 49
    const/4 v0, 0x2

    iput v0, p0, Lccsancom/mbridge/msdk/video/signal/container/AbstractJSContainer;->q:I

    .line 50
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/signal/container/AbstractJSContainer;->r:Z

    .line 51
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/signal/container/AbstractJSContainer;->s:Z

    .line 55
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/signal/container/AbstractJSContainer;->w:Z

    .line 65
    new-instance p1, Lccsancom/mbridge/msdk/video/signal/factory/a;

    invoke-direct {p1}, Lccsancom/mbridge/msdk/video/signal/factory/a;-><init>()V

    iput-object p1, p0, Lccsancom/mbridge/msdk/video/signal/container/AbstractJSContainer;->x:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    .line 59
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Lccsanandroid/widget/FrameLayout;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 39
    const/4 p1, 0x0

    iput p1, p0, Lccsancom/mbridge/msdk/video/signal/container/AbstractJSContainer;->a:I

    .line 40
    const/4 p2, 0x1

    iput p2, p0, Lccsancom/mbridge/msdk/video/signal/container/AbstractJSContainer;->b:I

    .line 49
    const/4 p2, 0x2

    iput p2, p0, Lccsancom/mbridge/msdk/video/signal/container/AbstractJSContainer;->q:I

    .line 50
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/signal/container/AbstractJSContainer;->r:Z

    .line 51
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/signal/container/AbstractJSContainer;->s:Z

    .line 55
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/signal/container/AbstractJSContainer;->w:Z

    .line 65
    new-instance p1, Lccsancom/mbridge/msdk/video/signal/factory/a;

    invoke-direct {p1}, Lccsancom/mbridge/msdk/video/signal/factory/a;-><init>()V

    iput-object p1, p0, Lccsancom/mbridge/msdk/video/signal/container/AbstractJSContainer;->x:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    .line 63
    return-void
.end method

.method private a(I)Ljava/lang/String;
    .locals 3

    .line 174
    const-string v0, ""

    .line 176
    :try_start_0
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1}, Lccsanorg/json/JSONObject;-><init>()V

    .line 177
    const-string v2, "code"

    invoke-virtual {v1, v2, p1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 178
    invoke-virtual {v1}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 179
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 180
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/4 v1, 0x2

    invoke-static {p1, v1}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p1

    .line 184
    :cond_0
    goto :goto_0

    .line 182
    :catchall_0
    move-exception p1

    .line 183
    const-string p1, "AbstractJSContainer"

    const-string v1, "code to string is error"

    invoke-static {p1, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :goto_0
    return-object v0
.end method

.method private b(I)Z
    .locals 3

    .line 295
    nop

    .line 297
    const/16 v0, 0x12

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    .line 299
    :pswitch_0
    :try_start_0
    sget p1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v0, :cond_0

    .line 300
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/signal/container/AbstractJSContainer;->j:Lccsanandroid/app/Activity;

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Lccsanandroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 302
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/signal/container/AbstractJSContainer;->j:Lccsanandroid/app/Activity;

    invoke-virtual {p1, v1}, Lccsanandroid/app/Activity;->setRequestedOrientation(I)V

    .line 304
    :goto_0
    nop

    .line 305
    const/4 v1, 0x1

    goto :goto_2

    .line 307
    :pswitch_1
    sget p1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v0, :cond_1

    .line 308
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/signal/container/AbstractJSContainer;->j:Lccsanandroid/app/Activity;

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Lccsanandroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_1

    .line 310
    :cond_1
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/signal/container/AbstractJSContainer;->j:Lccsanandroid/app/Activity;

    invoke-virtual {p1, v2}, Lccsanandroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    :goto_1
    const/4 v1, 0x1

    goto :goto_2

    .line 315
    :catchall_0
    move-exception p1

    .line 316
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AbstractJSContainer"

    invoke-static {v2, v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 317
    :goto_2
    nop

    .line 318
    :goto_3
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected final a(Lccsancom/mbridge/msdk/videocommon/d/c;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 2

    .line 280
    invoke-virtual {p0, p2}, Lccsancom/mbridge/msdk/video/signal/container/AbstractJSContainer;->c(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)I

    move-result v0

    .line 281
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 282
    return-void

    .line 284
    :cond_0
    const/4 v0, 0x0

    .line 285
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 286
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;->b()I

    move-result p2

    invoke-direct {p0, p2}, Lccsancom/mbridge/msdk/video/signal/container/AbstractJSContainer;->b(I)Z

    move-result v0

    .line 288
    :cond_1
    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    .line 289
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/signal/container/AbstractJSContainer;->m:Lccsancom/mbridge/msdk/videocommon/d/c;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/videocommon/d/c;->c()I

    move-result p1

    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/video/signal/container/AbstractJSContainer;->b(I)Z

    .line 291
    :cond_2
    return-void
.end method

.method protected final a(Ljava/lang/Object;)V
    .locals 2

    .line 156
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object v0

    iget v1, p0, Lccsancom/mbridge/msdk/video/signal/container/AbstractJSContainer;->a:I

    invoke-direct {p0, v1}, Lccsancom/mbridge/msdk/video/signal/container/AbstractJSContainer;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method protected final a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 167
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    const/4 v1, 0x2

    invoke-static {p2, v1}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 1

    .line 247
    const-string v0, "AbstractJSContainer"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/signal/container/AbstractJSContainer;->j:Lccsanandroid/app/Activity;

    if-eqz p1, :cond_0

    .line 249
    invoke-virtual {p1}, Lccsanandroid/app/Activity;->finish()V

    .line 251
    :cond_0
    return-void
.end method

.method protected final b(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)Lccsancom/mbridge/msdk/video/signal/a/j;
    .locals 2

    .line 254
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 255
    return-object v0

    .line 258
    :cond_0
    iget-boolean v1, p0, Lccsancom/mbridge/msdk/video/signal/container/AbstractJSContainer;->r:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x11f

    goto :goto_0

    :cond_1
    const/16 v1, 0x5e

    .line 257
    :goto_0
    invoke-static {v1, p1}, Lccsancom/mbridge/msdk/videocommon/a;->a(ILccsancom/mbridge/msdk/foundation/entity/CampaignEx;)Lccsancom/mbridge/msdk/videocommon/a$a;

    move-result-object p1

    .line 260
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/videocommon/a$a;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 261
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/videocommon/a$a;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    move-result-object p1

    .line 262
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lccsancom/mbridge/msdk/video/signal/a/j;

    if-eqz v1, :cond_2

    .line 263
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/mbridge/msdk/video/signal/a/j;

    .line 264
    return-object p1

    .line 267
    :cond_2
    return-object v0
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    .line 322
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/container/AbstractJSContainer;->l:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/container/AbstractJSContainer;->m:Lccsancom/mbridge/msdk/videocommon/d/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/videocommon/d/c;->z()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 324
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/container/AbstractJSContainer;->m:Lccsancom/mbridge/msdk/videocommon/d/c;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/videocommon/d/c;->z()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 327
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/container/AbstractJSContainer;->l:Ljava/lang/String;

    return-object v0
.end method

.method protected final c(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)I
    .locals 0

    .line 271
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/video/signal/container/AbstractJSContainer;->b(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)Lccsancom/mbridge/msdk/video/signal/a/j;

    move-result-object p1

    .line 272
    if-eqz p1, :cond_0

    .line 273
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/video/signal/a/j;->l()I

    move-result p1

    return p1

    .line 275
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getActivityProxy()Lccsancom/mbridge/msdk/video/signal/a;
    .locals 1

    .line 121
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/container/AbstractJSContainer;->x:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getActivityProxy()Lccsancom/mbridge/msdk/video/signal/a;

    move-result-object v0

    return-object v0
.end method

.method public getIJSRewardVideoV1()Lccsancom/mbridge/msdk/video/signal/h;
    .locals 1

    .line 146
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/container/AbstractJSContainer;->x:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getIJSRewardVideoV1()Lccsancom/mbridge/msdk/video/signal/h;

    move-result-object v0

    return-object v0
.end method

.method public getJSBTModule()Lccsancom/mbridge/msdk/video/signal/b;
    .locals 1

    .line 151
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/container/AbstractJSContainer;->x:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSBTModule()Lccsancom/mbridge/msdk/video/signal/b;

    move-result-object v0

    return-object v0
.end method

.method public getJSCommon()Lccsancom/mbridge/msdk/video/signal/c;
    .locals 1

    .line 126
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/container/AbstractJSContainer;->x:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSCommon()Lccsancom/mbridge/msdk/video/signal/c;

    move-result-object v0

    return-object v0
.end method

.method public getJSContainerModule()Lccsancom/mbridge/msdk/video/signal/e;
    .locals 1

    .line 141
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/container/AbstractJSContainer;->x:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSContainerModule()Lccsancom/mbridge/msdk/video/signal/e;

    move-result-object v0

    return-object v0
.end method

.method public getJSNotifyProxy()Lccsancom/mbridge/msdk/video/signal/f;
    .locals 1

    .line 136
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/container/AbstractJSContainer;->x:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSNotifyProxy()Lccsancom/mbridge/msdk/video/signal/f;

    move-result-object v0

    return-object v0
.end method

.method public getJSVideoModule()Lccsancom/mbridge/msdk/video/signal/i;
    .locals 1

    .line 131
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/container/AbstractJSContainer;->x:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSVideoModule()Lccsancom/mbridge/msdk/video/signal/i;

    move-result-object v0

    return-object v0
.end method

.method public getPlacementId()Ljava/lang/String;
    .locals 1

    .line 205
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/container/AbstractJSContainer;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getUnitId()Ljava/lang/String;
    .locals 1

    .line 201
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/container/AbstractJSContainer;->k:Ljava/lang/String;

    return-object v0
.end method

.method public onConfigurationChanged(Lccsanandroid/content/res/Configuration;)V
    .locals 1

    .line 114
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getJSCommon()Lccsancom/mbridge/msdk/video/signal/c;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getActivityProxy()Lccsancom/mbridge/msdk/video/signal/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lccsancom/mbridge/msdk/video/signal/a;->a(Lccsanandroid/content/res/Configuration;)V

    .line 117
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 107
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getJSCommon()Lccsancom/mbridge/msdk/video/signal/c;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getActivityProxy()Lccsancom/mbridge/msdk/video/signal/a;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/a;->f()V

    .line 110
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 79
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getJSCommon()Lccsancom/mbridge/msdk/video/signal/c;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getActivityProxy()Lccsancom/mbridge/msdk/video/signal/a;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/a;->a()V

    .line 82
    :cond_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getActivityProxy()Lccsancom/mbridge/msdk/video/signal/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lccsancom/mbridge/msdk/video/signal/a;->a(I)V

    .line 83
    return-void
.end method

.method public onRestart()V
    .locals 2

    .line 93
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getJSCommon()Lccsancom/mbridge/msdk/video/signal/c;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getActivityProxy()Lccsancom/mbridge/msdk/video/signal/a;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/a;->e()V

    .line 96
    :cond_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getActivityProxy()Lccsancom/mbridge/msdk/video/signal/a;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lccsancom/mbridge/msdk/video/signal/a;->a(I)V

    .line 97
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 72
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getJSCommon()Lccsancom/mbridge/msdk/video/signal/c;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getActivityProxy()Lccsancom/mbridge/msdk/video/signal/a;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/a;->b()V

    .line 75
    :cond_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getActivityProxy()Lccsancom/mbridge/msdk/video/signal/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lccsancom/mbridge/msdk/video/signal/a;->a(I)V

    .line 76
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 100
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getJSCommon()Lccsancom/mbridge/msdk/video/signal/c;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getActivityProxy()Lccsancom/mbridge/msdk/video/signal/a;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/a;->d()V

    .line 103
    :cond_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getActivityProxy()Lccsancom/mbridge/msdk/video/signal/a;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lccsancom/mbridge/msdk/video/signal/a;->a(I)V

    .line 104
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 86
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getJSCommon()Lccsancom/mbridge/msdk/video/signal/c;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getActivityProxy()Lccsancom/mbridge/msdk/video/signal/a;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/a;->c()V

    .line 89
    :cond_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getActivityProxy()Lccsancom/mbridge/msdk/video/signal/a;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lccsancom/mbridge/msdk/video/signal/a;->a(I)V

    .line 90
    return-void
.end method

.method public registerJsFactory(Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/signal/container/AbstractJSContainer;->x:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    .line 69
    return-void
.end method

.method public setActivity(Lccsanandroid/app/Activity;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/signal/container/AbstractJSContainer;->j:Lccsanandroid/app/Activity;

    .line 214
    return-void
.end method

.method public setBidCampaign(Z)V
    .locals 0

    .line 229
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/signal/container/AbstractJSContainer;->s:Z

    .line 230
    return-void
.end method

.method public setBigOffer(Z)V
    .locals 0

    .line 239
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/signal/container/AbstractJSContainer;->w:Z

    .line 240
    return-void
.end method

.method public setIV(Z)V
    .locals 0

    .line 225
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/signal/container/AbstractJSContainer;->r:Z

    .line 226
    return-void
.end method

.method public setIVRewardEnable(III)V
    .locals 0

    .line 233
    iput p1, p0, Lccsancom/mbridge/msdk/video/signal/container/AbstractJSContainer;->t:I

    .line 234
    iput p2, p0, Lccsancom/mbridge/msdk/video/signal/container/AbstractJSContainer;->u:I

    .line 235
    iput p3, p0, Lccsancom/mbridge/msdk/video/signal/container/AbstractJSContainer;->v:I

    .line 236
    return-void
.end method

.method public setMute(I)V
    .locals 0

    .line 221
    iput p1, p0, Lccsancom/mbridge/msdk/video/signal/container/AbstractJSContainer;->q:I

    .line 222
    return-void
.end method

.method public setPlacementId(Ljava/lang/String;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/signal/container/AbstractJSContainer;->l:Ljava/lang/String;

    .line 210
    return-void
.end method

.method public setReward(Lccsancom/mbridge/msdk/videocommon/b/c;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/signal/container/AbstractJSContainer;->o:Lccsancom/mbridge/msdk/videocommon/b/c;

    .line 218
    return-void
.end method

.method public setRewardId(Ljava/lang/String;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/signal/container/AbstractJSContainer;->p:Ljava/lang/String;

    .line 190
    return-void
.end method

.method public setRewardUnitSetting(Lccsancom/mbridge/msdk/videocommon/d/c;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/signal/container/AbstractJSContainer;->m:Lccsancom/mbridge/msdk/videocommon/d/c;

    .line 244
    return-void
.end method

.method public setUnitId(Ljava/lang/String;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/signal/container/AbstractJSContainer;->k:Ljava/lang/String;

    .line 198
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/signal/container/AbstractJSContainer;->n:Ljava/lang/String;

    .line 194
    return-void
.end method
