.class final Lccsancom/mbridge/msdk/reward/adapter/c$e;
.super Ljava/lang/Object;
.source "RewardCampaignsResourceManager.java"

# interfaces
.implements Lccsancom/mbridge/msdk/foundation/same/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/reward/adapter/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e"
.end annotation


# instance fields
.field private a:Lccsanandroid/os/Handler;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;


# direct methods
.method public constructor <init>(Lccsanandroid/os/Handler;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 0

    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 421
    iput-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$e;->a:Lccsanandroid/os/Handler;

    .line 422
    iput p2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$e;->b:I

    .line 423
    iput-object p3, p0, Lccsancom/mbridge/msdk/reward/adapter/c$e;->d:Ljava/lang/String;

    .line 424
    iput-object p4, p0, Lccsancom/mbridge/msdk/reward/adapter/c$e;->c:Ljava/lang/String;

    .line 425
    iput-object p5, p0, Lccsancom/mbridge/msdk/reward/adapter/c$e;->e:Ljava/lang/String;

    .line 426
    iput-object p6, p0, Lccsancom/mbridge/msdk/reward/adapter/c$e;->f:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 427
    return-void
.end method


# virtual methods
.method public final onFailedLoad(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 444
    const-string p2, "RewardCampaignsResourceManager"

    invoke-static {}, Lccsanandroid/os/Message;->obtain()Lccsanandroid/os/Message;

    move-result-object v0

    .line 445
    iget v1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$e;->b:I

    if-nez v1, :cond_0

    const/16 v1, 0xca

    goto :goto_0

    :cond_0
    const/16 v1, 0xcc

    :goto_0
    iput v1, v0, Lccsanandroid/os/Message;->what:I

    .line 446
    new-instance v1, Lccsanandroid/os/Bundle;

    invoke-direct {v1}, Lccsanandroid/os/Bundle;-><init>()V

    .line 447
    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$e;->c:Ljava/lang/String;

    const-string v3, "unit_id"

    invoke-virtual {v1, v3, v2}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    sget-object v2, Lccsancom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    iget-object v3, p0, Lccsancom/mbridge/msdk/reward/adapter/c$e;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$e;->e:Ljava/lang/String;

    const-string v3, "request_id"

    invoke-virtual {v1, v3, v2}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    invoke-virtual {v0, v1}, Lccsanandroid/os/Message;->setData(Lccsanandroid/os/Bundle;)V

    .line 451
    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$e;->a:Lccsanandroid/os/Handler;

    invoke-virtual {v1, v0}, Lccsanandroid/os/Handler;->sendMessage(Lccsanandroid/os/Message;)Z

    .line 453
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/c$e;->f:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_1

    .line 455
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/db/f;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/db/f;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/db/p;->a(Lccsancom/mbridge/msdk/foundation/db/e;)Lccsancom/mbridge/msdk/foundation/db/p;

    move-result-object v0

    .line 456
    const-string v1, "campaign is null"

    invoke-static {p2, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    new-instance v1, Lccsancom/mbridge/msdk/foundation/entity/m;

    invoke-direct {v1}, Lccsancom/mbridge/msdk/foundation/entity/m;-><init>()V

    .line 459
    const-string v2, "2000044"

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/foundation/entity/m;->o(Ljava/lang/String;)V

    .line 460
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lccsancom/mbridge/msdk/foundation/tools/m;->n(Lccsanandroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/foundation/entity/m;->b(I)V

    .line 461
    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$e;->f:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/foundation/entity/m;->n(Ljava/lang/String;)V

    .line 462
    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$e;->f:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/foundation/entity/m;->d(Ljava/lang/String;)V

    .line 463
    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$e;->f:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/foundation/entity/m;->k(Ljava/lang/String;)V

    .line 464
    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$e;->f:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/foundation/entity/m;->l(Ljava/lang/String;)V

    .line 465
    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$e;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/foundation/entity/m;->m(Ljava/lang/String;)V

    .line 466
    invoke-virtual {v1, p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->p(Ljava/lang/String;)V

    .line 467
    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/db/p;->a(Lccsancom/mbridge/msdk/foundation/entity/m;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    goto :goto_1

    .line 468
    :catch_0
    move-exception p1

    .line 469
    sget-boolean v0, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 470
    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    :cond_1
    :goto_1
    return-void
.end method

.method public final onSuccessLoad(Lccsanandroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 2

    .line 431
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/i;->a()Lccsancom/mbridge/msdk/videocommon/download/i;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lccsancom/mbridge/msdk/videocommon/download/i;->c(Ljava/lang/String;Z)V

    .line 432
    invoke-static {}, Lccsanandroid/os/Message;->obtain()Lccsanandroid/os/Message;

    move-result-object p1

    .line 433
    iget p2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$e;->b:I

    if-nez p2, :cond_0

    const/16 p2, 0x66

    goto :goto_0

    :cond_0
    const/16 p2, 0x68

    :goto_0
    iput p2, p1, Lccsanandroid/os/Message;->what:I

    .line 434
    new-instance p2, Lccsanandroid/os/Bundle;

    invoke-direct {p2}, Lccsanandroid/os/Bundle;-><init>()V

    .line 435
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/c$e;->c:Ljava/lang/String;

    const-string v1, "unit_id"

    invoke-virtual {p2, v1, v0}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    sget-object v0, Lccsancom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$e;->d:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/c$e;->e:Ljava/lang/String;

    const-string v1, "request_id"

    invoke-virtual {p2, v1, v0}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    invoke-virtual {p1, p2}, Lccsanandroid/os/Message;->setData(Lccsanandroid/os/Bundle;)V

    .line 439
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$e;->a:Lccsanandroid/os/Handler;

    invoke-virtual {p2, p1}, Lccsanandroid/os/Handler;->sendMessage(Lccsanandroid/os/Message;)Z

    .line 440
    return-void
.end method
