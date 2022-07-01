.class final Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$5;
.super Ljava/lang/Object;
.source "MBTempContainer.java"

# interfaces
.implements Lccsancom/mbridge/msdk/mbsignalcommon/mraid/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;)V
    .locals 0

    .line 661
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$5;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(D)V
    .locals 3

    .line 664
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "volume is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$5;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-static {v0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->d(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;)Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isMraid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$5;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    iget-object v0, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->f:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$5;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    iget-object v0, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->f:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->getH5EndCardView()Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 667
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$5;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    iget-object v0, v0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->f:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->getH5EndCardView()Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->volumeChange(D)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 671
    :cond_0
    goto :goto_0

    .line 669
    :catch_0
    move-exception p1

    .line 670
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    :goto_0
    return-void
.end method
