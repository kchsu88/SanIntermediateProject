.class final Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity$3;
.super Ljava/lang/Object;
.source "MBRewardVideoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;)V
    .locals 0

    .line 432
    iput-object p1, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity$3;->a:Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 435
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity$3;->a:Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->b(Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity$3;->a:Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->b(Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 436
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity$3;->a:Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->b(Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/mbridge/msdk/videocommon/download/a;

    .line 437
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/videocommon/download/a;->g()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 438
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/a/a;->a()Lccsancom/mbridge/msdk/videocommon/a/a;

    move-result-object v2

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/videocommon/download/a;->g()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v1

    iget-object v3, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity$3;->a:Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;

    invoke-static {v3}, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->e(Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lccsancom/mbridge/msdk/videocommon/a/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;)V

    .line 440
    :cond_0
    goto :goto_0

    .line 442
    :cond_1
    return-void
.end method
