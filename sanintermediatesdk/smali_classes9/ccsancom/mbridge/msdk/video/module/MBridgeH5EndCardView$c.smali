.class final Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$c;
.super Ljava/lang/Object;
.source "MBridgeH5EndCardView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private a:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

.field private b:I


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;I)V
    .locals 0

    .line 767
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 768
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$c;->a:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    .line 769
    iput p2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$c;->b:I

    .line 770
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 774
    const-string v0, "MBridgeBaseView"

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$c;->a:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    if-eqz v1, :cond_5

    iget-object v1, v1, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v1, :cond_5

    .line 776
    :try_start_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$c;->a:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    invoke-static {v1}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->g(Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 777
    const-string v1, "insertEndCardReadyState hasInsertLoadEndCardReport true return"

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    return-void

    .line 780
    :cond_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$c;->a:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->e(Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;Z)Z

    .line 781
    nop

    .line 782
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$c;->a:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    iget-object v1, v1, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/tools/x;->b(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "1"

    const-string v3, "2"

    if-eqz v1, :cond_1

    :try_start_1
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$c;->a:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    iget-object v1, v1, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object v1

    const-string v4, ".zip"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 783
    move-object v12, v2

    goto :goto_0

    .line 785
    :cond_1
    move-object v12, v3

    :goto_0
    const/16 v6, 0xc

    .line 786
    nop

    .line 787
    const-string v11, "ready timeout"

    .line 788
    new-instance v1, Lccsancom/mbridge/msdk/foundation/entity/m;

    const-string v5, "2000043"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$c;->b:I

    mul-int/lit16 v7, v7, 0x3e8

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ""

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v4, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$c;->a:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    iget-object v4, v4, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object v8

    iget-object v4, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$c;->a:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    iget-object v4, v4, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v9

    iget-object v4, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$c;->a:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    iget-object v10, v4, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->r:Ljava/lang/String;

    move-object v4, v1

    invoke-direct/range {v4 .. v12}, Lccsancom/mbridge/msdk/foundation/entity/m;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 790
    :try_start_2
    iget-object v4, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$c;->a:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    iget-object v4, v4, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    move-result v4

    const/16 v5, 0x11f

    if-ne v4, v5, :cond_2

    .line 791
    const-string v2, "3"

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/foundation/entity/m;->h(Ljava/lang/String;)V

    goto :goto_1

    .line 792
    :cond_2
    iget-object v4, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$c;->a:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    iget-object v4, v4, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    move-result v4

    const/16 v5, 0x5e

    if-ne v4, v5, :cond_3

    .line 793
    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/foundation/entity/m;->h(Ljava/lang/String;)V

    goto :goto_1

    .line 794
    :cond_3
    iget-object v2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$c;->a:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    iget-object v2, v2, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    move-result v2

    const/16 v4, 0x2a

    if-ne v2, v4, :cond_4

    .line 795
    invoke-virtual {v1, v3}, Lccsancom/mbridge/msdk/foundation/entity/m;->h(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 799
    :cond_4
    :goto_1
    goto :goto_2

    .line 797
    :catch_0
    move-exception v2

    .line 798
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 800
    :goto_2
    iget-object v2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$c;->a:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    iget-object v2, v2, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/foundation/entity/m;->k(Ljava/lang/String;)V

    .line 801
    iget-object v2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$c;->a:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    iget-object v2, v2, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/foundation/entity/m;->l(Ljava/lang/String;)V

    .line 802
    iget-object v2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$c;->a:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    iget-object v2, v2, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->r:Ljava/lang/String;

    invoke-static {v1, v2}, Lccsancom/mbridge/msdk/foundation/same/report/b;->a(Lccsancom/mbridge/msdk/foundation/entity/m;Ljava/lang/String;)V

    .line 804
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$c;->a:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->isLoadSuccess()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 821
    goto :goto_3

    .line 819
    :catchall_0
    move-exception v1

    .line 820
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 823
    :cond_5
    :goto_3
    return-void
.end method
