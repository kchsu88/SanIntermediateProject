.class final Lccsancom/mbridge/msdk/reward/adapter/c$f;
.super Ljava/lang/Object;
.source "RewardCampaignsResourceManager.java"

# interfaces
.implements Lccsancom/mbridge/msdk/videocommon/listener/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/reward/adapter/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "f"
.end annotation


# instance fields
.field private a:Lccsanandroid/os/Handler;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lccsanandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 485
    iput-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$f;->a:Lccsanandroid/os/Handler;

    .line 486
    iput-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$f;->c:Ljava/lang/String;

    .line 487
    iput-object p3, p0, Lccsancom/mbridge/msdk/reward/adapter/c$f;->b:Ljava/lang/String;

    .line 488
    iput-object p4, p0, Lccsancom/mbridge/msdk/reward/adapter/c$f;->d:Ljava/lang/String;

    .line 489
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 4

    .line 493
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/i;->a()Lccsancom/mbridge/msdk/videocommon/download/i;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lccsancom/mbridge/msdk/videocommon/download/i;->a(Ljava/lang/String;Z)V

    .line 494
    invoke-static {}, Lccsanandroid/os/Message;->obtain()Lccsanandroid/os/Message;

    move-result-object v0

    .line 495
    const/16 v1, 0x64

    iput v1, v0, Lccsanandroid/os/Message;->what:I

    .line 496
    new-instance v1, Lccsanandroid/os/Bundle;

    invoke-direct {v1}, Lccsanandroid/os/Bundle;-><init>()V

    .line 497
    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$f;->b:Ljava/lang/String;

    const-string v3, "unit_id"

    invoke-virtual {v1, v3, v2}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    sget-object v2, Lccsancom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    iget-object v3, p0, Lccsancom/mbridge/msdk/reward/adapter/c$f;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$f;->d:Ljava/lang/String;

    const-string v3, "request_id"

    invoke-virtual {v1, v3, v2}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    const-string v2, "url"

    invoke-virtual {v1, v2, p1}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    invoke-virtual {v0, v1}, Lccsanandroid/os/Message;->setData(Lccsanandroid/os/Bundle;)V

    .line 502
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$f;->a:Lccsanandroid/os/Handler;

    invoke-virtual {p1, v0}, Lccsanandroid/os/Handler;->sendMessage(Lccsanandroid/os/Message;)Z

    .line 503
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 507
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/i;->a()Lccsancom/mbridge/msdk/videocommon/download/i;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lccsancom/mbridge/msdk/videocommon/download/i;->a(Ljava/lang/String;Z)V

    .line 508
    invoke-static {}, Lccsanandroid/os/Message;->obtain()Lccsanandroid/os/Message;

    move-result-object v0

    .line 509
    const/16 v1, 0xc8

    iput v1, v0, Lccsanandroid/os/Message;->what:I

    .line 510
    new-instance v1, Lccsanandroid/os/Bundle;

    invoke-direct {v1}, Lccsanandroid/os/Bundle;-><init>()V

    .line 511
    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$f;->b:Ljava/lang/String;

    const-string v3, "unit_id"

    invoke-virtual {v1, v3, v2}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    sget-object v2, Lccsancom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    iget-object v3, p0, Lccsancom/mbridge/msdk/reward/adapter/c$f;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$f;->d:Ljava/lang/String;

    const-string v3, "request_id"

    invoke-virtual {v1, v3, v2}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    const-string v2, "url"

    invoke-virtual {v1, v2, p2}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    const-string p2, "message"

    invoke-virtual {v1, p2, p1}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    invoke-virtual {v0, v1}, Lccsanandroid/os/Message;->setData(Lccsanandroid/os/Bundle;)V

    .line 517
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$f;->a:Lccsanandroid/os/Handler;

    invoke-virtual {p1, v0}, Lccsanandroid/os/Handler;->sendMessage(Lccsanandroid/os/Message;)Z

    .line 518
    return-void
.end method
