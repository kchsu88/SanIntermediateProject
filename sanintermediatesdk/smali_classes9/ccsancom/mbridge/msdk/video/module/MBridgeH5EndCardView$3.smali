.class final Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$3;
.super Lccsancom/mbridge/msdk/mbsignalcommon/b/b;
.source "MBridgeH5EndCardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->preLoadData(Lccsancom/mbridge/msdk/video/signal/factory/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$3;->a:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    invoke-direct {p0}, Lccsancom/mbridge/msdk/mbsignalcommon/b/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lccsanandroid/webkit/WebView;I)V
    .locals 2

    .line 283
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/mbsignalcommon/b/b;->a(Lccsanandroid/webkit/WebView;I)V

    .line 284
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "h5EncardView readyStatus:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "- isError"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$3;->a:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    iget-boolean v0, v0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->q:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WindVaneWebView"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$3;->a:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->a(Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;I)I

    .line 286
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$3;->a:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    iget-boolean p1, p1, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->q:Z

    if-nez p1, :cond_0

    .line 287
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$3;->a:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->b(Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;)J

    move-result-wide v0

    sub-long/2addr p1, v0

    .line 288
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$3;->a:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->a(Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;JZ)V

    .line 290
    :cond_0
    return-void
.end method

.method public final a(Lccsanandroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 272
    invoke-super {p0, p1, p2, p3, p4}, Lccsancom/mbridge/msdk/mbsignalcommon/b/b;->a(Lccsanandroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$3;->a:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    iget-boolean p1, p1, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->q:Z

    if-nez p1, :cond_0

    .line 274
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceivedError,url:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "MBridgeBaseView"

    invoke-static {p4, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$3;->a:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    iget-object p1, p1, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->e:Lccsancom/mbridge/msdk/video/module/a/a;

    const/16 p4, 0x76

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceivedError "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p4, p2}, Lccsancom/mbridge/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 276
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$3;->a:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    const/4 p2, 0x3

    invoke-virtual {p1, p3, p2}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->reportRenderResult(Ljava/lang/String;I)V

    .line 277
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$3;->a:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->q:Z

    .line 279
    :cond_0
    return-void
.end method

.method public final a(Lccsanandroid/webkit/WebView;Ljava/lang/String;)V
    .locals 6

    .line 232
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/mbsignalcommon/b/b;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;)V

    .line 233
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$3;->a:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    iget-boolean p1, p1, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->q:Z

    if-nez p1, :cond_6

    .line 234
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$3;->a:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->p:Z

    .line 235
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageFinished,url:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MBridgeBaseView"

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$3;->a:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    iget-object p1, p1, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->e:Lccsancom/mbridge/msdk/video/module/a/a;

    const/16 p2, 0x64

    const-string v1, ""

    invoke-interface {p1, p2, v1}, Lccsancom/mbridge/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 238
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$3;->a:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    iget-object p1, p1, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz p1, :cond_5

    .line 239
    new-instance p1, Lccsancom/mbridge/msdk/foundation/entity/m;

    invoke-direct {p1}, Lccsancom/mbridge/msdk/foundation/entity/m;-><init>()V

    .line 240
    iget-object p2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$3;->a:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    iget-object p2, p2, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/foundation/entity/m;->k(Ljava/lang/String;)V

    .line 241
    iget-object p2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$3;->a:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    iget-object p2, p2, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/foundation/entity/m;->l(Ljava/lang/String;)V

    .line 242
    iget-object p2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$3;->a:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    iget-object p2, p2, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/foundation/entity/m;->n(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/foundation/entity/m;->c(I)V

    .line 244
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object p2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$3;->a:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    invoke-static {p2}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->b(Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/foundation/entity/m;->q(Ljava/lang/String;)V

    .line 245
    const-string p2, "onPageFinished"

    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/foundation/entity/m;->p(Ljava/lang/String;)V

    .line 246
    iget-object p2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$3;->a:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    iget-object p2, p2, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    move-result p2

    const/16 v0, 0x11f

    const-string v2, "2"

    const-string v3, "1"

    if-ne p2, v0, :cond_0

    .line 247
    const-string p2, "3"

    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/foundation/entity/m;->h(Ljava/lang/String;)V

    goto :goto_0

    .line 248
    :cond_0
    iget-object p2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$3;->a:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    iget-object p2, p2, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    move-result p2

    const/16 v0, 0x5e

    if-ne p2, v0, :cond_1

    .line 249
    invoke-virtual {p1, v3}, Lccsancom/mbridge/msdk/foundation/entity/m;->h(Ljava/lang/String;)V

    goto :goto_0

    .line 250
    :cond_1
    iget-object p2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$3;->a:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    iget-object p2, p2, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    move-result p2

    const/16 v0, 0x2a

    if-ne p2, v0, :cond_2

    .line 251
    invoke-virtual {p1, v2}, Lccsancom/mbridge/msdk/foundation/entity/m;->h(Ljava/lang/String;)V

    .line 253
    :cond_2
    :goto_0
    iget-object p2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$3;->a:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    iget-object p2, p2, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isMraid()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 254
    sget p2, Lccsancom/mbridge/msdk/foundation/entity/m;->a:I

    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/foundation/entity/m;->a(I)V

    goto :goto_1

    .line 256
    :cond_3
    iget-object p2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$3;->a:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    iget-object p2, p2, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/foundation/entity/m;->f(Ljava/lang/String;)V

    .line 257
    nop

    .line 258
    iget-object p2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$3;->a:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    iget-object p2, p2, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lccsancom/mbridge/msdk/foundation/tools/x;->b(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$3;->a:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    iget-object p2, p2, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object p2

    const-string v0, ".zip"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 259
    move-object v2, v3

    .line 261
    :cond_4
    invoke-virtual {p1, v2}, Lccsancom/mbridge/msdk/foundation/entity/m;->g(Ljava/lang/String;)V

    .line 262
    sget p2, Lccsancom/mbridge/msdk/foundation/entity/m;->b:I

    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/foundation/entity/m;->a(I)V

    .line 264
    :goto_1
    iget-object p2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$3;->a:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    iget-object p2, p2, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->r:Ljava/lang/String;

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/foundation/same/report/b;->b(Lccsancom/mbridge/msdk/foundation/entity/m;Ljava/lang/String;)V

    .line 266
    :cond_5
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$3;->a:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    iget-object p1, p1, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->e:Lccsancom/mbridge/msdk/video/module/a/a;

    const/16 p2, 0x78

    invoke-interface {p1, p2, v1}, Lccsancom/mbridge/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 268
    :cond_6
    return-void
.end method

.method public final c(Lccsanandroid/webkit/WebView;I)V
    .locals 1

    .line 294
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/mbsignalcommon/b/b;->c(Lccsanandroid/webkit/WebView;I)V

    .line 295
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$3;->a:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->a(Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;I)I

    .line 296
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$3;->a:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    invoke-static {p1}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->c(Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 297
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$3;->a:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->a(Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;Z)Z

    .line 298
    if-ne p2, v0, :cond_0

    .line 299
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$3;->a:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    const/4 p2, 0x4

    const-string v0, "success"

    invoke-virtual {p1, v0, p2}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->reportRenderResult(Ljava/lang/String;I)V

    goto :goto_0

    .line 301
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$3;->a:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    iget-object p1, p1, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->e:Lccsancom/mbridge/msdk/video/module/a/a;

    const/16 p2, 0x7f

    const-string v0, ""

    invoke-interface {p1, p2, v0}, Lccsancom/mbridge/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 302
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$3;->a:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    const/4 p2, 0x6

    const-string v0, "failed"

    invoke-virtual {p1, v0, p2}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->reportRenderResult(Ljava/lang/String;I)V

    .line 305
    :cond_1
    :goto_0
    return-void
.end method
