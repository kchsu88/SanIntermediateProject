.class final Lccsancom/mbridge/msdk/reward/adapter/c$d;
.super Ljava/lang/Object;
.source "RewardCampaignsResourceManager.java"

# interfaces
.implements Lccsancom/mbridge/msdk/videocommon/download/g$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/reward/adapter/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# instance fields
.field private a:Z

.field private b:I

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private f:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

.field private g:Lccsancom/mbridge/msdk/reward/adapter/c$i;

.field private h:Lccsanandroid/os/Handler;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;"
        }
    .end annotation
.end field

.field private final j:J


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsancom/mbridge/msdk/reward/adapter/c$i;Lccsanandroid/os/Handler;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            "Lccsancom/mbridge/msdk/reward/adapter/c$i;",
            "Lccsanandroid/os/Handler;",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;)V"
        }
    .end annotation

    .line 754
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 743
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/reward/adapter/c$d;->a:Z

    .line 755
    iput p1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$d;->b:I

    .line 756
    iput-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$d;->c:Ljava/lang/String;

    .line 757
    iput-object p3, p0, Lccsancom/mbridge/msdk/reward/adapter/c$d;->d:Ljava/lang/String;

    .line 758
    iput-object p4, p0, Lccsancom/mbridge/msdk/reward/adapter/c$d;->e:Ljava/lang/String;

    .line 759
    iput-object p5, p0, Lccsancom/mbridge/msdk/reward/adapter/c$d;->f:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 760
    iput-object p6, p0, Lccsancom/mbridge/msdk/reward/adapter/c$d;->g:Lccsancom/mbridge/msdk/reward/adapter/c$i;

    .line 761
    iput-object p7, p0, Lccsancom/mbridge/msdk/reward/adapter/c$d;->h:Lccsanandroid/os/Handler;

    .line 762
    iput-object p8, p0, Lccsancom/mbridge/msdk/reward/adapter/c$d;->i:Ljava/util/List;

    .line 763
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$d;->j:J

    .line 764
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 12

    .line 772
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/i;->a()Lccsancom/mbridge/msdk/videocommon/download/i;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lccsancom/mbridge/msdk/videocommon/download/i;->b(Ljava/lang/String;Z)V

    .line 773
    iget v0, p0, Lccsancom/mbridge/msdk/reward/adapter/c$d;->b:I

    const-string v1, "url"

    const/16 v2, 0x65

    const-string v3, "request_id"

    const-string v4, "unit_id"

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_2

    .line 821
    :sswitch_0
    invoke-static {}, Lccsanandroid/os/Message;->obtain()Lccsanandroid/os/Message;

    move-result-object v0

    .line 822
    const/16 v1, 0x69

    iput v1, v0, Lccsanandroid/os/Message;->what:I

    .line 823
    new-instance v1, Lccsanandroid/os/Bundle;

    invoke-direct {v1}, Lccsanandroid/os/Bundle;-><init>()V

    .line 824
    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$d;->d:Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    sget-object v2, Lccsancom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    iget-object v4, p0, Lccsancom/mbridge/msdk/reward/adapter/c$d;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$d;->e:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    invoke-virtual {v0, v1}, Lccsanandroid/os/Message;->setData(Lccsanandroid/os/Bundle;)V

    .line 828
    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$d;->h:Lccsanandroid/os/Handler;

    invoke-virtual {v1, v0}, Lccsanandroid/os/Handler;->sendMessage(Lccsanandroid/os/Message;)Z

    .line 830
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/c$d;->g:Lccsancom/mbridge/msdk/reward/adapter/c$i;

    if-eqz v0, :cond_3

    .line 831
    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$d;->c:Ljava/lang/String;

    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$d;->d:Ljava/lang/String;

    iget-object v3, p0, Lccsancom/mbridge/msdk/reward/adapter/c$d;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, p1}, Lccsancom/mbridge/msdk/reward/adapter/c$i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 775
    :sswitch_1
    invoke-static {}, Lccsanandroid/os/Message;->obtain()Lccsanandroid/os/Message;

    move-result-object v0

    .line 776
    iput v2, v0, Lccsanandroid/os/Message;->what:I

    .line 777
    new-instance v2, Lccsanandroid/os/Bundle;

    invoke-direct {v2}, Lccsanandroid/os/Bundle;-><init>()V

    .line 778
    iget-object v5, p0, Lccsancom/mbridge/msdk/reward/adapter/c$d;->d:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    sget-object v4, Lccsancom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    iget-object v5, p0, Lccsancom/mbridge/msdk/reward/adapter/c$d;->c:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    iget-object v4, p0, Lccsancom/mbridge/msdk/reward/adapter/c$d;->e:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    invoke-virtual {v2, v1, p1}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    invoke-virtual {v0, v2}, Lccsanandroid/os/Message;->setData(Lccsanandroid/os/Bundle;)V

    .line 783
    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$d;->h:Lccsanandroid/os/Handler;

    invoke-virtual {v1, v0}, Lccsanandroid/os/Handler;->sendMessage(Lccsanandroid/os/Message;)Z

    .line 785
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/reward/adapter/c$d;->a:Z

    if-eqz v0, :cond_3

    .line 786
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$d;->j:J

    sub-long/2addr v0, v2

    .line 788
    :try_start_0
    new-instance v11, Lccsancom/mbridge/msdk/foundation/entity/m;

    const-string v3, "2000043"

    const/16 v4, 0x14

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/c$d;->f:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lccsancom/mbridge/msdk/reward/adapter/c$d;->d:Ljava/lang/String;

    const-string v9, ""

    const-string v10, "2"

    move-object v2, v11

    move-object v6, p1

    invoke-direct/range {v2 .. v10}, Lccsancom/mbridge/msdk/foundation/entity/m;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$d;->f:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v11, p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->k(Ljava/lang/String;)V

    .line 790
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$d;->f:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v11, p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->l(Ljava/lang/String;)V

    .line 791
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$d;->f:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v11, p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->n(Ljava/lang/String;)V

    .line 792
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$d;->f:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    move-result p1

    const/16 v0, 0x11f

    if-ne p1, v0, :cond_0

    .line 793
    const-string p1, "3"

    invoke-virtual {v11, p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->h(Ljava/lang/String;)V

    goto :goto_0

    .line 794
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$d;->f:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    move-result p1

    const/16 v0, 0x5e

    if-ne p1, v0, :cond_1

    .line 795
    const-string p1, "1"

    invoke-virtual {v11, p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->h(Ljava/lang/String;)V

    .line 797
    :cond_1
    :goto_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$d;->d:Ljava/lang/String;

    invoke-static {v11, p1}, Lccsancom/mbridge/msdk/foundation/same/report/b;->a(Lccsancom/mbridge/msdk/foundation/entity/m;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 802
    goto :goto_1

    .line 798
    :catch_0
    move-exception p1

    .line 799
    sget-boolean v0, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 800
    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RewardCampaignsResourceManager"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    :cond_2
    :goto_1
    goto :goto_2

    .line 807
    :sswitch_2
    invoke-static {}, Lccsanandroid/os/Message;->obtain()Lccsanandroid/os/Message;

    move-result-object v0

    .line 808
    iput v2, v0, Lccsanandroid/os/Message;->what:I

    .line 809
    new-instance v2, Lccsanandroid/os/Bundle;

    invoke-direct {v2}, Lccsanandroid/os/Bundle;-><init>()V

    .line 810
    iget-object v5, p0, Lccsancom/mbridge/msdk/reward/adapter/c$d;->d:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    sget-object v4, Lccsancom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    iget-object v5, p0, Lccsancom/mbridge/msdk/reward/adapter/c$d;->c:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    iget-object v4, p0, Lccsancom/mbridge/msdk/reward/adapter/c$d;->e:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    invoke-virtual {v2, v1, p1}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    invoke-virtual {v0, v2}, Lccsanandroid/os/Message;->setData(Lccsanandroid/os/Bundle;)V

    .line 815
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$d;->h:Lccsanandroid/os/Handler;

    invoke-virtual {p1, v0}, Lccsanandroid/os/Handler;->sendMessage(Lccsanandroid/os/Message;)Z

    .line 817
    nop

    .line 836
    :cond_3
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0x139 -> :sswitch_2
        0x1f1 -> :sswitch_1
        0x35b -> :sswitch_0
    .end sparse-switch
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 840
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/i;->a()Lccsancom/mbridge/msdk/videocommon/download/i;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lccsancom/mbridge/msdk/videocommon/download/i;->b(Ljava/lang/String;Z)V

    .line 841
    iget v0, p0, Lccsancom/mbridge/msdk/reward/adapter/c$d;->b:I

    const-string v1, "url"

    const/16 v2, 0xc9

    const-string v3, "message"

    const-string v4, "request_id"

    const-string v5, "unit_id"

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_2

    .line 890
    :sswitch_0
    invoke-static {}, Lccsanandroid/os/Message;->obtain()Lccsanandroid/os/Message;

    move-result-object v0

    .line 891
    const/16 v1, 0xcd

    iput v1, v0, Lccsanandroid/os/Message;->what:I

    .line 892
    new-instance v1, Lccsanandroid/os/Bundle;

    invoke-direct {v1}, Lccsanandroid/os/Bundle;-><init>()V

    .line 893
    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$d;->d:Ljava/lang/String;

    invoke-virtual {v1, v5, v2}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    sget-object v2, Lccsancom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    iget-object v5, p0, Lccsancom/mbridge/msdk/reward/adapter/c$d;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v5}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$d;->e:Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    invoke-virtual {v1, v3, p2}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    invoke-virtual {v0, v1}, Lccsanandroid/os/Message;->setData(Lccsanandroid/os/Bundle;)V

    .line 898
    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$d;->h:Lccsanandroid/os/Handler;

    invoke-virtual {v1, v0}, Lccsanandroid/os/Handler;->sendMessage(Lccsanandroid/os/Message;)Z

    .line 900
    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$d;->g:Lccsancom/mbridge/msdk/reward/adapter/c$i;

    if-eqz v2, :cond_3

    .line 901
    iget-object v3, p0, Lccsancom/mbridge/msdk/reward/adapter/c$d;->c:Ljava/lang/String;

    iget-object v4, p0, Lccsancom/mbridge/msdk/reward/adapter/c$d;->d:Ljava/lang/String;

    iget-object v5, p0, Lccsancom/mbridge/msdk/reward/adapter/c$d;->e:Ljava/lang/String;

    move-object v6, p1

    move-object v7, p2

    invoke-interface/range {v2 .. v7}, Lccsancom/mbridge/msdk/reward/adapter/c$i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 843
    :sswitch_1
    invoke-static {}, Lccsanandroid/os/Message;->obtain()Lccsanandroid/os/Message;

    move-result-object v0

    .line 844
    iput v2, v0, Lccsanandroid/os/Message;->what:I

    .line 845
    new-instance v2, Lccsanandroid/os/Bundle;

    invoke-direct {v2}, Lccsanandroid/os/Bundle;-><init>()V

    .line 846
    iget-object v6, p0, Lccsancom/mbridge/msdk/reward/adapter/c$d;->d:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    sget-object v5, Lccsancom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    iget-object v6, p0, Lccsancom/mbridge/msdk/reward/adapter/c$d;->c:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    iget-object v5, p0, Lccsancom/mbridge/msdk/reward/adapter/c$d;->e:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    invoke-virtual {v2, v1, p1}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    invoke-virtual {v2, v3, p2}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    invoke-virtual {v0, v2}, Lccsanandroid/os/Message;->setData(Lccsanandroid/os/Bundle;)V

    .line 852
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$d;->h:Lccsanandroid/os/Handler;

    invoke-virtual {p2, v0}, Lccsanandroid/os/Handler;->sendMessage(Lccsanandroid/os/Message;)Z

    .line 854
    iget-boolean p2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$d;->a:Z

    if-eqz p2, :cond_3

    .line 855
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$d;->j:J

    sub-long/2addr v0, v2

    .line 857
    :try_start_0
    new-instance p2, Lccsancom/mbridge/msdk/foundation/entity/m;

    const-string v3, "2000043"

    const/16 v4, 0x15

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/c$d;->f:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lccsancom/mbridge/msdk/reward/adapter/c$d;->d:Ljava/lang/String;

    const-string v9, "url download failed"

    const-string v10, "2"

    move-object v2, p2

    move-object v6, p1

    invoke-direct/range {v2 .. v10}, Lccsancom/mbridge/msdk/foundation/entity/m;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$d;->f:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->k(Ljava/lang/String;)V

    .line 859
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$d;->f:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->l(Ljava/lang/String;)V

    .line 860
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$d;->f:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->n(Ljava/lang/String;)V

    .line 861
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$d;->f:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    move-result p1

    const/16 v0, 0x11f

    if-ne p1, v0, :cond_0

    .line 862
    const-string p1, "3"

    invoke-virtual {p2, p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->h(Ljava/lang/String;)V

    goto :goto_0

    .line 863
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$d;->f:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    move-result p1

    const/16 v0, 0x5e

    if-ne p1, v0, :cond_1

    .line 864
    const-string p1, "1"

    invoke-virtual {p2, p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->h(Ljava/lang/String;)V

    .line 866
    :cond_1
    :goto_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$d;->d:Ljava/lang/String;

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/same/report/b;->a(Lccsancom/mbridge/msdk/foundation/entity/m;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 871
    goto :goto_1

    .line 867
    :catch_0
    move-exception p1

    .line 868
    sget-boolean p2, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz p2, :cond_2

    .line 869
    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RewardCampaignsResourceManager"

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    :cond_2
    :goto_1
    goto :goto_2

    .line 876
    :sswitch_2
    invoke-static {}, Lccsanandroid/os/Message;->obtain()Lccsanandroid/os/Message;

    move-result-object v0

    .line 877
    iput v2, v0, Lccsanandroid/os/Message;->what:I

    .line 878
    new-instance v2, Lccsanandroid/os/Bundle;

    invoke-direct {v2}, Lccsanandroid/os/Bundle;-><init>()V

    .line 879
    iget-object v6, p0, Lccsancom/mbridge/msdk/reward/adapter/c$d;->d:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    sget-object v5, Lccsancom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    iget-object v6, p0, Lccsancom/mbridge/msdk/reward/adapter/c$d;->c:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    iget-object v5, p0, Lccsancom/mbridge/msdk/reward/adapter/c$d;->e:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    invoke-virtual {v2, v1, p1}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    invoke-virtual {v2, v3, p2}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    invoke-virtual {v0, v2}, Lccsanandroid/os/Message;->setData(Lccsanandroid/os/Bundle;)V

    .line 885
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$d;->h:Lccsanandroid/os/Handler;

    invoke-virtual {p1, v0}, Lccsanandroid/os/Handler;->sendMessage(Lccsanandroid/os/Message;)Z

    .line 887
    nop

    .line 906
    :cond_3
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x139 -> :sswitch_2
        0x1f1 -> :sswitch_1
        0x35b -> :sswitch_0
    .end sparse-switch
.end method

.method public final a(Z)V
    .locals 0

    .line 767
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$d;->a:Z

    .line 768
    return-void
.end method
