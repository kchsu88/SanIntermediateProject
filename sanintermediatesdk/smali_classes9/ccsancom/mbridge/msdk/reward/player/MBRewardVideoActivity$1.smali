.class final Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity$1;
.super Ljava/lang/Object;
.source "MBRewardVideoActivity.java"

# interfaces
.implements Lccsancom/mbridge/msdk/video/dynview/d/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;
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

    .line 86
    iput-object p1, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity$1;->a:Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 116
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity$1;->a:Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->a(Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;)Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    new-instance v0, Lccsancom/mbridge/msdk/video/dynview/g/b;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/video/dynview/g/b;-><init>()V

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity$1;->a:Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;

    invoke-static {v1}, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->a(Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;)Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lccsancom/mbridge/msdk/video/dynview/g/b;->b(Lccsanandroid/view/View;J)V

    .line 119
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity$1;->a:Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->c(Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;)V

    .line 120
    return-void
.end method

.method public final a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 5

    .line 90
    if-eqz p1, :cond_3

    .line 91
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity$1;->a:Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->a(Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;)Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    new-instance v0, Lccsancom/mbridge/msdk/video/dynview/g/b;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/video/dynview/g/b;-><init>()V

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity$1;->a:Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;

    invoke-static {v1}, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->a(Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;)Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lccsancom/mbridge/msdk/video/dynview/g/b;->b(Lccsanandroid/view/View;J)V

    .line 94
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "offer \u88ab\u70b9\u51fb\uff1a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RewardMVVideoAdapter"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity$1;->a:Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->a(Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 96
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity$1;->a:Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->b(Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity$1;->a:Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->b(Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 97
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity$1;->a:Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->b(Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/mbridge/msdk/videocommon/download/a;

    .line 98
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/videocommon/download/a;->g()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v2

    .line 99
    if-eqz v2, :cond_1

    .line 100
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lccsanandroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lccsanandroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 101
    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity$1;->a:Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;

    invoke-static {v2, v1}, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->a(Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;Lccsancom/mbridge/msdk/videocommon/download/a;)Lccsancom/mbridge/msdk/videocommon/download/a;

    .line 104
    :cond_1
    goto :goto_0

    .line 106
    :cond_2
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity$1;->a:Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->c(Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;)V

    goto :goto_1

    .line 108
    :cond_3
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity$1;->a:Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;

    const-string v0, "campaign is null"

    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->a(Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;Ljava/lang/String;)V

    .line 111
    :goto_1
    return-void
.end method
