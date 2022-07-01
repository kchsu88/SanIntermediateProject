.class final Lccsancom/mbridge/msdk/reward/adapter/c$3;
.super Ljava/lang/Object;
.source "RewardCampaignsResourceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/reward/adapter/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

.field final synthetic c:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

.field final synthetic d:Ljava/util/List;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lccsancom/mbridge/msdk/videocommon/d/c;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Lccsancom/mbridge/msdk/reward/adapter/c;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/reward/adapter/c;ZLccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/util/List;Ljava/lang/String;Lccsancom/mbridge/msdk/videocommon/d/c;Ljava/lang/String;)V
    .locals 0

    .line 1740
    iput-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$3;->h:Lccsancom/mbridge/msdk/reward/adapter/c;

    iput-boolean p2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$3;->a:Z

    iput-object p3, p0, Lccsancom/mbridge/msdk/reward/adapter/c$3;->b:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    iput-object p4, p0, Lccsancom/mbridge/msdk/reward/adapter/c$3;->c:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iput-object p5, p0, Lccsancom/mbridge/msdk/reward/adapter/c$3;->d:Ljava/util/List;

    iput-object p6, p0, Lccsancom/mbridge/msdk/reward/adapter/c$3;->e:Ljava/lang/String;

    iput-object p7, p0, Lccsancom/mbridge/msdk/reward/adapter/c$3;->f:Lccsancom/mbridge/msdk/videocommon/d/c;

    iput-object p8, p0, Lccsancom/mbridge/msdk/reward/adapter/c$3;->g:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1743
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/c$3;->h:Lccsancom/mbridge/msdk/reward/adapter/c;

    iget-boolean v1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$3;->a:Z

    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$3;->b:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    iget-object v3, p0, Lccsancom/mbridge/msdk/reward/adapter/c$3;->c:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v3

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;->d()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lccsancom/mbridge/msdk/reward/adapter/c$3;->c:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v6, p0, Lccsancom/mbridge/msdk/reward/adapter/c$3;->d:Ljava/util/List;

    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/g;->a()Lccsancom/mbridge/msdk/videocommon/download/g;

    move-result-object v4

    iget-object v7, p0, Lccsancom/mbridge/msdk/reward/adapter/c$3;->c:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v7}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v7

    invoke-virtual {v7}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lccsancom/mbridge/msdk/videocommon/download/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lccsancom/mbridge/msdk/reward/adapter/c$3;->e:Ljava/lang/String;

    iget-object v9, p0, Lccsancom/mbridge/msdk/reward/adapter/c$3;->f:Lccsancom/mbridge/msdk/videocommon/d/c;

    iget-object v10, p0, Lccsancom/mbridge/msdk/reward/adapter/c$3;->g:Ljava/lang/String;

    iget-object v4, p0, Lccsancom/mbridge/msdk/reward/adapter/c$3;->h:Lccsancom/mbridge/msdk/reward/adapter/c;

    invoke-static {v4}, Lccsancom/mbridge/msdk/reward/adapter/c;->b(Lccsancom/mbridge/msdk/reward/adapter/c;)Z

    move-result v11

    const/4 v4, 0x0

    invoke-static/range {v0 .. v11}, Lccsancom/mbridge/msdk/reward/adapter/c;->a(Lccsancom/mbridge/msdk/reward/adapter/c;ZLccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;Ljava/lang/String;ILccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/videocommon/d/c;Ljava/lang/String;Z)V

    .line 1744
    return-void
.end method
