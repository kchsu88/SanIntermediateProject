.class final Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer$2;
.super Ljava/lang/Object;
.source "MBridgeBTContainer.java"

# interfaces
.implements Lccsancom/mbridge/msdk/video/dynview/d/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer$2;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lccsanandroid/view/View;)V
    .locals 7

    .line 235
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer$2;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    invoke-static {v0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->d(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;)Lccsanandroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    .line 236
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer$2;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    invoke-static {v0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->d(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;)Lccsanandroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/widget/FrameLayout;->removeAllViews()V

    .line 237
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer$2;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    invoke-static {v0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->d(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;)Lccsanandroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroid/widget/FrameLayout;->addView(Lccsanandroid/view/View;)V

    .line 239
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer$2;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    invoke-static {p1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->e(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;)Lccsancom/mbridge/msdk/video/bt/module/a/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 240
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer$2;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    invoke-static {p1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->e(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;)Lccsancom/mbridge/msdk/video/bt/module/a/a;

    move-result-object p1

    invoke-interface {p1}, Lccsancom/mbridge/msdk/video/bt/module/a/a;->a()V

    .line 241
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer$2;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    invoke-static {p1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->e(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;)Lccsancom/mbridge/msdk/video/bt/module/a/a;

    move-result-object p1

    const/4 v0, 0x2

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer$2;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    invoke-static {v1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->f(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer$2;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    invoke-static {v2}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->g(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lccsancom/mbridge/msdk/video/bt/module/a/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 243
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer$2;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    invoke-static {p1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->a(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer$2;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    invoke-static {p1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->a(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 244
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer$2;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    invoke-static {p1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->a(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 245
    if-eqz p1, :cond_3

    .line 246
    const/4 v4, 0x0

    .line 247
    const/4 v5, 0x1

    .line 249
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getOnlyImpressionURL()Ljava/lang/String;

    move-result-object v0

    .line 250
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/d/b;->a()Lccsancom/mbridge/msdk/videocommon/d/b;

    move-result-object v1

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer$2;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    invoke-static {v3}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->h(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lccsancom/mbridge/msdk/videocommon/d/b;->a(Ljava/lang/String;Ljava/lang/String;)Lccsancom/mbridge/msdk/videocommon/d/c;

    move-result-object v1

    .line 251
    nop

    .line 252
    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 253
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/videocommon/d/c;->y()I

    move-result v1

    goto :goto_0

    .line 252
    :cond_1
    const/4 v1, 0x1

    .line 255
    :goto_0
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getSpareOfferFlag()I

    move-result v3

    const-string v6, "&tmorl="

    if-ne v3, v2, :cond_2

    .line 256
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&to=1&cbt="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getCbt()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_1

    .line 258
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&to=0&cbt="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getCbt()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 260
    :goto_1
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer$2;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    invoke-static {v1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->i(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;)Ljava/lang/String;

    move-result-object v2

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lccsancom/mbridge/msdk/click/a;->a(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 262
    sget-object v0, Lccsancom/mbridge/msdk/foundation/same/a/d;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getOnlyImpressionURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer$2;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 265
    :cond_3
    goto :goto_2

    .line 267
    :cond_4
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer$2;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    const-string v0, "nativeview is null"

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->a(Ljava/lang/String;)V

    .line 269
    :cond_5
    :goto_2
    return-void
.end method

.method public final a(Lccsancom/mbridge/msdk/video/dynview/c/a;)V
    .locals 3

    .line 273
    nop

    .line 274
    if-eqz p1, :cond_0

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "errorCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/video/dynview/c/a;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "Msg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/video/dynview/c/a;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 274
    :cond_0
    const-string p1, ""

    .line 277
    :goto_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer$2;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nativeview is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->a(Ljava/lang/String;)V

    .line 278
    return-void
.end method
