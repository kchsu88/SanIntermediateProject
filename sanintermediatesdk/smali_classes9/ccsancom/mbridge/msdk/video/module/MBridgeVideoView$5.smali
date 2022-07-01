.class final Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$5;
.super Ljava/lang/Object;
.source "MBridgeVideoView.java"

# interfaces
.implements Lccsancom/mbridge/msdk/widget/dialog/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->showAlertView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;)V
    .locals 0

    .line 442
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$5;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 449
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$5;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->b(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;Z)Z

    .line 450
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$5;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->g(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->setShowingAlertViewCover(Z)V

    .line 451
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$5;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->d(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$5;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->h(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;)I

    move-result v0

    sget v1, Lccsancom/mbridge/msdk/foundation/same/a;->n:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$5;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->h(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;)I

    move-result v0

    sget v1, Lccsancom/mbridge/msdk/foundation/same/a;->m:I

    if-ne v0, v1, :cond_1

    .line 452
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$5;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->c(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;Z)Z

    .line 453
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$5;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    iget-object v0, v0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->e:Lccsancom/mbridge/msdk/video/module/a/a;

    const/16 v2, 0x7c

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Lccsancom/mbridge/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 454
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$5;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->d(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;Z)Z

    .line 455
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$5;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->gonePlayingCloseView()V

    .line 457
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$5;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->i(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;)V

    .line 458
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$5;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    iget-object v1, v0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->a:Lccsanandroid/content/Context;

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$5;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    iget-object v2, v0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$5;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->j(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$5;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->k(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lccsancom/mbridge/msdk/foundation/same/report/d;->a(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;II)V

    .line 459
    return-void
.end method

.method public final b()V
    .locals 7

    .line 463
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$5;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->b(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;Z)Z

    .line 464
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$5;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->e(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;Z)Z

    .line 465
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$5;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->g(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->setShowingAlertViewCover(Z)V

    .line 466
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$5;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    iget-object v1, v0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->a:Lccsanandroid/content/Context;

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$5;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    iget-object v2, v0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$5;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->j(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$5;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->k(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lccsancom/mbridge/msdk/foundation/same/report/d;->a(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;II)V

    .line 468
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$5;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->d(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$5;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->h(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;)I

    move-result v0

    sget v2, Lccsancom/mbridge/msdk/foundation/same/a;->m:I

    if-ne v0, v2, :cond_0

    .line 469
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$5;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    iget-object v0, v0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->e:Lccsancom/mbridge/msdk/video/module/a/a;

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$5;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {v2}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->l(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;)Z

    move-result v3

    invoke-static {v2, v3}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->f(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lccsancom/mbridge/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 470
    return-void

    .line 473
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$5;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->d(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$5;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->h(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;)I

    move-result v0

    sget v2, Lccsancom/mbridge/msdk/foundation/same/a;->n:I

    if-ne v0, v2, :cond_1

    .line 474
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$5;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->i(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;)V

    .line 475
    return-void

    .line 478
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$5;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    iget-object v0, v0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->e:Lccsancom/mbridge/msdk/video/module/a/a;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lccsancom/mbridge/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 479
    return-void
.end method
