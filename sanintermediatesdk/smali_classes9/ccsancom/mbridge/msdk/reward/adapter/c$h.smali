.class final Lccsancom/mbridge/msdk/reward/adapter/c$h;
.super Lccsanandroid/os/Handler;
.source "RewardCampaignsResourceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/reward/adapter/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "h"
.end annotation


# instance fields
.field private a:Lccsanandroid/content/Context;

.field private b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lccsancom/mbridge/msdk/reward/adapter/c$c;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lccsanandroid/os/Looper;)V
    .locals 0

    .line 932
    invoke-direct {p0, p1}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    .line 933
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$h;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 934
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$h;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 935
    return-void
.end method


# virtual methods
.method public final a(Lccsanandroid/content/Context;)V
    .locals 0

    .line 942
    iput-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$h;->a:Lccsanandroid/content/Context;

    .line 943
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/reward/adapter/c$c;)V
    .locals 1

    .line 938
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$h;->b:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 939
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;)V"
        }
    .end annotation

    .line 946
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/c$h;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 947
    return-void
.end method

.method public final handleMessage(Lccsanandroid/os/Message;)V
    .locals 23

    .line 951
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Lccsanandroid/os/Message;->getData()Lccsanandroid/os/Bundle;

    move-result-object v2

    .line 952
    sget-object v3, Lccsancom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lccsanandroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 953
    const-string v4, "unit_id"

    invoke-virtual {v2, v4}, Lccsanandroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 954
    const-string v4, "request_id"

    invoke-virtual {v2, v4}, Lccsanandroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 955
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 956
    invoke-static {}, Lccsancom/mbridge/msdk/reward/adapter/c;->c()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Lccsancom/mbridge/msdk/reward/adapter/c$a;

    .line 957
    iget-object v4, v1, Lccsancom/mbridge/msdk/reward/adapter/c$h;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v12}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Lccsancom/mbridge/msdk/reward/adapter/c$c;

    .line 958
    iget-object v4, v1, Lccsancom/mbridge/msdk/reward/adapter/c$h;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v12}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v22, v4

    check-cast v22, Ljava/util/List;

    .line 959
    iget v4, v0, Lccsanandroid/os/Message;->what:I

    const/4 v5, 0x0

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_9

    .line 997
    :sswitch_0
    if-eqz v13, :cond_f

    if-eqz v14, :cond_f

    .line 998
    const-string v4, "message"

    invoke-virtual {v2, v4}, Lccsanandroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 999
    if-nez v4, :cond_0

    .line 1000
    const-string v4, ""

    .line 1002
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "resource download failed "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lccsanandroid/os/Message;->what:I

    .line 2062
    nop

    .line 2162
    packed-switch v7, :pswitch_data_0

    .line 2172
    :pswitch_0
    const-string v7, "unknown"

    goto :goto_0

    .line 2168
    :pswitch_1
    const-string v7, "tpl"

    goto :goto_0

    .line 2166
    :pswitch_2
    const-string v7, "temp"

    goto :goto_0

    .line 2164
    :pswitch_3
    const-string v7, "zip/html"

    goto :goto_0

    .line 2170
    :pswitch_4
    const-string v7, "video"

    .line 1002
    :goto_0
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1004
    :try_start_0
    iget-boolean v4, v13, Lccsancom/mbridge/msdk/reward/adapter/c$a;->a:Z

    if-eqz v4, :cond_b

    iget-object v4, v13, Lccsancom/mbridge/msdk/reward/adapter/c$a;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v4, :cond_b

    .line 1005
    iget v4, v13, Lccsancom/mbridge/msdk/reward/adapter/c$a;->c:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_1

    .line 1006
    iget-object v8, v13, Lccsancom/mbridge/msdk/reward/adapter/c$a;->h:Ljava/util/List;

    move-object v4, v14

    move-object v5, v3

    move-object v6, v10

    move-object v7, v11

    invoke-interface/range {v4 .. v9}, Lccsancom/mbridge/msdk/reward/adapter/c$c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 1007
    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/adapter/c$h;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v12}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1008
    invoke-static {}, Lccsancom/mbridge/msdk/reward/adapter/c;->c()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1009
    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/adapter/c$h;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v12}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    .line 1011
    :cond_1
    const-string v4, "url"

    invoke-virtual {v2, v4}, Lccsanandroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1012
    iget v0, v0, Lccsanandroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1

    :pswitch_5
    goto/16 :goto_4

    .line 1038
    :pswitch_6
    iget-object v0, v13, Lccsancom/mbridge/msdk/reward/adapter/c$a;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 1039
    invoke-static {}, Lccsancom/mbridge/msdk/reward/adapter/c;->c()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1040
    invoke-static {}, Lccsancom/mbridge/msdk/reward/adapter/c;->c()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1041
    goto/16 :goto_4

    .line 1028
    :pswitch_7
    nop

    :goto_1
    iget-object v0, v13, Lccsancom/mbridge/msdk/reward/adapter/c$a;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_3

    .line 1029
    iget-object v0, v13, Lccsancom/mbridge/msdk/reward/adapter/c$a;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 1030
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1031
    iget-object v0, v13, Lccsancom/mbridge/msdk/reward/adapter/c$a;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    .line 1028
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1034
    :cond_3
    invoke-static {}, Lccsancom/mbridge/msdk/reward/adapter/c;->c()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1035
    invoke-static {}, Lccsancom/mbridge/msdk/reward/adapter/c;->c()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1036
    goto/16 :goto_4

    .line 1014
    :pswitch_8
    nop

    :goto_2
    iget-object v0, v13, Lccsancom/mbridge/msdk/reward/adapter/c$a;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_6

    .line 1015
    iget-object v0, v13, Lccsancom/mbridge/msdk/reward/adapter/c$a;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 1016
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v4

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1017
    iget-object v4, v13, Lccsancom/mbridge/msdk/reward/adapter/c$a;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    .line 1020
    :cond_4
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1021
    iget-object v0, v13, Lccsancom/mbridge/msdk/reward/adapter/c$a;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    .line 1014
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1024
    :cond_6
    invoke-static {}, Lccsancom/mbridge/msdk/reward/adapter/c;->c()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1025
    invoke-static {}, Lccsancom/mbridge/msdk/reward/adapter/c;->c()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1026
    goto :goto_4

    .line 1043
    :pswitch_9
    nop

    :goto_3
    iget-object v0, v13, Lccsancom/mbridge/msdk/reward/adapter/c$a;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_8

    .line 1044
    iget-object v0, v13, Lccsancom/mbridge/msdk/reward/adapter/c$a;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 1045
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1046
    iget-object v0, v13, Lccsancom/mbridge/msdk/reward/adapter/c$a;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    .line 1043
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1049
    :cond_8
    invoke-static {}, Lccsancom/mbridge/msdk/reward/adapter/c;->c()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1050
    invoke-static {}, Lccsancom/mbridge/msdk/reward/adapter/c;->c()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1054
    :goto_4
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/c;->getInstance()Lccsancom/mbridge/msdk/videocommon/download/c;

    move-result-object v0

    const/16 v16, 0x5e

    iget-object v2, v13, Lccsancom/mbridge/msdk/reward/adapter/c$a;->e:Ljava/lang/String;

    iget-boolean v4, v13, Lccsancom/mbridge/msdk/reward/adapter/c$a;->b:Z

    iget v5, v13, Lccsancom/mbridge/msdk/reward/adapter/c$a;->d:I

    iget-boolean v6, v13, Lccsancom/mbridge/msdk/reward/adapter/c$a;->a:Z

    iget v7, v13, Lccsancom/mbridge/msdk/reward/adapter/c$a;->c:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object v8, v15

    move-object v15, v0

    move-object/from16 v17, v2

    move/from16 v18, v4

    move/from16 v19, v5

    move/from16 v20, v6

    move/from16 v21, v7

    :try_start_1
    invoke-virtual/range {v15 .. v22}, Lccsancom/mbridge/msdk/videocommon/download/c;->a(ILjava/lang/String;ZIZILjava/util/List;)Z

    move-result v0

    .line 1055
    if-eqz v0, :cond_9

    .line 1056
    iget-object v0, v13, Lccsancom/mbridge/msdk/reward/adapter/c$a;->h:Ljava/util/List;

    invoke-interface {v14, v3, v10, v11, v0}, Lccsancom/mbridge/msdk/reward/adapter/c$c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 1057
    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/adapter/c$h;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v12}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1058
    invoke-static {}, Lccsancom/mbridge/msdk/reward/adapter/c;->c()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1059
    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/adapter/c$h;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v12}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 1061
    :cond_9
    iget-object v0, v13, Lccsancom/mbridge/msdk/reward/adapter/c$a;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-nez v0, :cond_a

    .line 1062
    iget-object v0, v13, Lccsancom/mbridge/msdk/reward/adapter/c$a;->h:Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v4, v14

    move-object v5, v3

    move-object v6, v10

    move-object v7, v11

    move-object v2, v8

    move-object v8, v0

    :try_start_2
    invoke-interface/range {v4 .. v9}, Lccsancom/mbridge/msdk/reward/adapter/c$c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 1063
    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/adapter/c$h;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v12}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1064
    invoke-static {}, Lccsancom/mbridge/msdk/reward/adapter/c;->c()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1065
    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/adapter/c$h;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v12}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1068
    :cond_a
    :goto_5
    goto :goto_6

    .line 1083
    :catch_0
    move-exception v0

    move-object v2, v8

    goto :goto_7

    .line 1004
    :cond_b
    move-object v2, v15

    .line 1070
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/c;->getInstance()Lccsancom/mbridge/msdk/videocommon/download/c;

    move-result-object v15

    const/16 v16, 0x5e

    iget-object v0, v13, Lccsancom/mbridge/msdk/reward/adapter/c$a;->e:Ljava/lang/String;

    iget-boolean v4, v13, Lccsancom/mbridge/msdk/reward/adapter/c$a;->b:Z

    iget v5, v13, Lccsancom/mbridge/msdk/reward/adapter/c$a;->d:I

    iget-boolean v6, v13, Lccsancom/mbridge/msdk/reward/adapter/c$a;->a:Z

    iget v7, v13, Lccsancom/mbridge/msdk/reward/adapter/c$a;->c:I

    move-object/from16 v17, v0

    move/from16 v18, v4

    move/from16 v19, v5

    move/from16 v20, v6

    move/from16 v21, v7

    invoke-virtual/range {v15 .. v22}, Lccsancom/mbridge/msdk/videocommon/download/c;->a(ILjava/lang/String;ZIZILjava/util/List;)Z

    move-result v0

    .line 1071
    if-eqz v0, :cond_c

    .line 1072
    iget-object v0, v13, Lccsancom/mbridge/msdk/reward/adapter/c$a;->h:Ljava/util/List;

    invoke-interface {v14, v3, v10, v11, v0}, Lccsancom/mbridge/msdk/reward/adapter/c$c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 1073
    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/adapter/c$h;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v12}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1074
    invoke-static {}, Lccsancom/mbridge/msdk/reward/adapter/c;->c()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1075
    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/adapter/c$h;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v12}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 1077
    :cond_c
    iget-object v8, v13, Lccsancom/mbridge/msdk/reward/adapter/c$a;->h:Ljava/util/List;

    move-object v4, v14

    move-object v5, v3

    move-object v6, v10

    move-object v7, v11

    invoke-interface/range {v4 .. v9}, Lccsancom/mbridge/msdk/reward/adapter/c$c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 1078
    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/adapter/c$h;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v12}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1079
    invoke-static {}, Lccsancom/mbridge/msdk/reward/adapter/c;->c()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1080
    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/adapter/c$h;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v12}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1085
    :goto_6
    goto/16 :goto_9

    .line 1083
    :catch_1
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v0

    move-object v2, v15

    .line 1084
    :goto_7
    iget-object v8, v13, Lccsancom/mbridge/msdk/reward/adapter/c$a;->h:Ljava/util/List;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v4, v14

    move-object v5, v3

    move-object v6, v10

    move-object v7, v11

    invoke-interface/range {v4 .. v9}, Lccsancom/mbridge/msdk/reward/adapter/c$c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_9

    .line 972
    :sswitch_1
    if-eqz v13, :cond_f

    .line 973
    if-eqz v14, :cond_f

    .line 976
    :try_start_3
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/c;->getInstance()Lccsancom/mbridge/msdk/videocommon/download/c;

    move-result-object v15

    const/16 v16, 0x5e

    iget-object v0, v13, Lccsancom/mbridge/msdk/reward/adapter/c$a;->e:Ljava/lang/String;

    iget-boolean v2, v13, Lccsancom/mbridge/msdk/reward/adapter/c$a;->b:Z

    iget v4, v13, Lccsancom/mbridge/msdk/reward/adapter/c$a;->d:I

    iget-boolean v6, v13, Lccsancom/mbridge/msdk/reward/adapter/c$a;->a:Z

    iget v7, v13, Lccsancom/mbridge/msdk/reward/adapter/c$a;->c:I

    move-object/from16 v17, v0

    move/from16 v18, v2

    move/from16 v19, v4

    move/from16 v20, v6

    move/from16 v21, v7

    invoke-virtual/range {v15 .. v22}, Lccsancom/mbridge/msdk/videocommon/download/c;->a(ILjava/lang/String;ZIZILjava/util/List;)Z

    move-result v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 982
    goto :goto_8

    .line 977
    :catch_3
    move-exception v0

    .line 978
    sget-boolean v2, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v2, :cond_d

    .line 979
    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "RewardCampaignsResourceManager"

    invoke-static {v2, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    :cond_d
    nop

    .line 983
    :goto_8
    if-eqz v5, :cond_e

    .line 984
    iget-object v0, v13, Lccsancom/mbridge/msdk/reward/adapter/c$a;->h:Ljava/util/List;

    invoke-interface {v14, v3, v10, v11, v0}, Lccsancom/mbridge/msdk/reward/adapter/c$c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 985
    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/adapter/c$h;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v12}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 986
    invoke-static {}, Lccsancom/mbridge/msdk/reward/adapter/c;->c()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 987
    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/adapter/c$h;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v12}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 989
    :cond_e
    goto :goto_9

    .line 963
    :sswitch_2
    goto :goto_9

    .line 961
    :sswitch_3
    nop

    .line 1091
    :cond_f
    :goto_9
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x1 -> :sswitch_2
        0x64 -> :sswitch_1
        0x65 -> :sswitch_1
        0x66 -> :sswitch_1
        0x67 -> :sswitch_1
        0x68 -> :sswitch_1
        0x69 -> :sswitch_1
        0xc8 -> :sswitch_0
        0xc9 -> :sswitch_0
        0xca -> :sswitch_1
        0xcb -> :sswitch_0
        0xcc -> :sswitch_1
        0xcd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc8
        :pswitch_9
        :pswitch_8
        :pswitch_5
        :pswitch_7
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
