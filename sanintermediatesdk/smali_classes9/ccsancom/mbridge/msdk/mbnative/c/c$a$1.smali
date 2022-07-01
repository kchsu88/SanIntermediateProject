.class final Lccsancom/mbridge/msdk/mbnative/c/c$a$1;
.super Ljava/lang/Object;
.source "NativePreloadController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/mbnative/c/c$a;->a(Ljava/util/List;Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;

.field final synthetic b:Lccsancom/mbridge/msdk/mbnative/c/c$a;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/mbnative/c/c$a;Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;)V
    .locals 0

    .line 759
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a$1;->b:Lccsancom/mbridge/msdk/mbnative/c/c$a;

    iput-object p2, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a$1;->a:Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 763
    nop

    .line 764
    sget-boolean v0, Lccsancom/mbridge/msdk/MBridgeConstans;->PRELOAD_RESULT_IN_SUBTHREAD:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lccsanandroid/os/Looper;->myLooper()Lccsanandroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 765
    invoke-static {}, Lccsanandroid/os/Looper;->prepare()V

    .line 766
    const/4 v0, 0x1

    goto :goto_0

    .line 768
    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a$1;->b:Lccsancom/mbridge/msdk/mbnative/c/c$a;

    invoke-static {v3}, Lccsancom/mbridge/msdk/mbnative/c/c$a;->a(Lccsancom/mbridge/msdk/mbnative/c/c$a;)Ljava/lang/Runnable;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 769
    iget-object v3, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a$1;->b:Lccsancom/mbridge/msdk/mbnative/c/c$a;

    iget-object v3, v3, Lccsancom/mbridge/msdk/mbnative/c/c$a;->a:Lccsancom/mbridge/msdk/mbnative/c/c;

    invoke-static {v3}, Lccsancom/mbridge/msdk/mbnative/c/c;->a(Lccsancom/mbridge/msdk/mbnative/c/c;)Lccsanandroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a$1;->b:Lccsancom/mbridge/msdk/mbnative/c/c$a;

    invoke-static {v4}, Lccsancom/mbridge/msdk/mbnative/c/c$a;->a(Lccsancom/mbridge/msdk/mbnative/c/c$a;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lccsanandroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 771
    :cond_1
    invoke-static {}, Lccsancom/mbridge/msdk/mbnative/c/c;->f()Ljava/util/Map;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a$1;->b:Lccsancom/mbridge/msdk/mbnative/c/c$a;

    iget-object v6, v6, Lccsancom/mbridge/msdk/mbnative/c/c$a;->d:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 772
    invoke-static {}, Lccsancom/mbridge/msdk/mbnative/c/c;->f()Ljava/util/Map;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a$1;->b:Lccsancom/mbridge/msdk/mbnative/c/c$a;

    iget-object v5, v5, Lccsancom/mbridge/msdk/mbnative/c/c$a;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    :cond_2
    iget-object v3, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a$1;->b:Lccsancom/mbridge/msdk/mbnative/c/c$a;

    invoke-static {v3}, Lccsancom/mbridge/msdk/mbnative/c/c$a;->b(Lccsancom/mbridge/msdk/mbnative/c/c$a;)I

    move-result v3

    if-lez v3, :cond_4

    .line 776
    iget-object v3, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a$1;->a:Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;

    iget-object v3, v3, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->ads:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a$1;->b:Lccsancom/mbridge/msdk/mbnative/c/c$a;

    invoke-static {v4}, Lccsancom/mbridge/msdk/mbnative/c/c$a;->b(Lccsancom/mbridge/msdk/mbnative/c/c$a;)I

    move-result v4

    if-le v3, v4, :cond_3

    .line 777
    iget-object v3, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a$1;->b:Lccsancom/mbridge/msdk/mbnative/c/c$a;

    invoke-static {v3}, Lccsancom/mbridge/msdk/mbnative/c/c$a;->b(Lccsancom/mbridge/msdk/mbnative/c/c$a;)I

    move-result v4

    invoke-static {v3, v4}, Lccsancom/mbridge/msdk/mbnative/c/c$a;->a(Lccsancom/mbridge/msdk/mbnative/c/c$a;I)I

    goto/16 :goto_2

    .line 779
    :cond_3
    iget-object v3, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a$1;->b:Lccsancom/mbridge/msdk/mbnative/c/c$a;

    iget-object v4, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a$1;->a:Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;

    iget-object v4, v4, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->ads:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v3, v4}, Lccsancom/mbridge/msdk/mbnative/c/c$a;->a(Lccsancom/mbridge/msdk/mbnative/c/c$a;I)I

    goto/16 :goto_2

    .line 782
    :cond_4
    iget-object v3, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a$1;->b:Lccsancom/mbridge/msdk/mbnative/c/c$a;

    invoke-static {v3}, Lccsancom/mbridge/msdk/mbnative/c/c$a;->b(Lccsancom/mbridge/msdk/mbnative/c/c$a;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_5

    .line 783
    iget-object v3, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a$1;->b:Lccsancom/mbridge/msdk/mbnative/c/c$a;

    invoke-static {v3, v2}, Lccsancom/mbridge/msdk/mbnative/c/c$a;->a(Lccsancom/mbridge/msdk/mbnative/c/c$a;I)I

    goto :goto_2

    .line 784
    :cond_5
    iget-object v3, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a$1;->b:Lccsancom/mbridge/msdk/mbnative/c/c$a;

    invoke-static {v3}, Lccsancom/mbridge/msdk/mbnative/c/c$a;->b(Lccsancom/mbridge/msdk/mbnative/c/c$a;)I

    move-result v3

    const/4 v4, -0x3

    if-ne v3, v4, :cond_6

    .line 785
    iget-object v3, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a$1;->b:Lccsancom/mbridge/msdk/mbnative/c/c$a;

    iget-object v4, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a$1;->a:Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;

    iget-object v4, v4, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->ads:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v3, v4}, Lccsancom/mbridge/msdk/mbnative/c/c$a;->a(Lccsancom/mbridge/msdk/mbnative/c/c$a;I)I

    goto :goto_2

    .line 786
    :cond_6
    iget-object v3, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a$1;->b:Lccsancom/mbridge/msdk/mbnative/c/c$a;

    invoke-static {v3}, Lccsancom/mbridge/msdk/mbnative/c/c$a;->b(Lccsancom/mbridge/msdk/mbnative/c/c$a;)I

    move-result v3

    const/4 v4, -0x2

    if-ne v3, v4, :cond_9

    .line 788
    iget-object v3, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a$1;->a:Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->getTemplate()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_7

    .line 789
    iget-object v3, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a$1;->b:Lccsancom/mbridge/msdk/mbnative/c/c$a;

    invoke-static {v3}, Lccsancom/mbridge/msdk/mbnative/c/c$a;->c(Lccsancom/mbridge/msdk/mbnative/c/c$a;)I

    move-result v3

    if-eqz v3, :cond_8

    .line 790
    iget-object v3, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a$1;->b:Lccsancom/mbridge/msdk/mbnative/c/c$a;

    invoke-static {v3}, Lccsancom/mbridge/msdk/mbnative/c/c$a;->c(Lccsancom/mbridge/msdk/mbnative/c/c$a;)I

    move-result v4

    invoke-static {v3, v4}, Lccsancom/mbridge/msdk/mbnative/c/c$a;->a(Lccsancom/mbridge/msdk/mbnative/c/c$a;I)I

    goto :goto_1

    .line 793
    :cond_7
    iget-object v3, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a$1;->b:Lccsancom/mbridge/msdk/mbnative/c/c$a;

    invoke-static {v3}, Lccsancom/mbridge/msdk/mbnative/c/c$a;->d(Lccsancom/mbridge/msdk/mbnative/c/c$a;)I

    move-result v3

    if-eqz v3, :cond_8

    .line 794
    iget-object v3, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a$1;->b:Lccsancom/mbridge/msdk/mbnative/c/c$a;

    invoke-static {v3}, Lccsancom/mbridge/msdk/mbnative/c/c$a;->d(Lccsancom/mbridge/msdk/mbnative/c/c$a;)I

    move-result v4

    invoke-static {v3, v4}, Lccsancom/mbridge/msdk/mbnative/c/c$a;->a(Lccsancom/mbridge/msdk/mbnative/c/c$a;I)I

    .line 797
    :cond_8
    :goto_1
    iget-object v3, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a$1;->b:Lccsancom/mbridge/msdk/mbnative/c/c$a;

    invoke-static {v3}, Lccsancom/mbridge/msdk/mbnative/c/c$a;->e(Lccsancom/mbridge/msdk/mbnative/c/c$a;)I

    move-result v3

    if-gtz v3, :cond_9

    .line 798
    invoke-static {}, Lccsancom/mbridge/msdk/mbnative/c/c;->g()Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a$1;->b:Lccsancom/mbridge/msdk/mbnative/c/c$a;

    iget-object v4, v4, Lccsancom/mbridge/msdk/mbnative/c/c$a;->d:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 799
    iget-object v4, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a$1;->b:Lccsancom/mbridge/msdk/mbnative/c/c$a;

    invoke-static {v4, v3}, Lccsancom/mbridge/msdk/mbnative/c/c$a;->a(Lccsancom/mbridge/msdk/mbnative/c/c$a;I)I

    .line 802
    :cond_9
    :goto_2
    iget-object v3, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a$1;->a:Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;

    iget-object v3, v3, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->ads:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a$1;->b:Lccsancom/mbridge/msdk/mbnative/c/c$a;

    invoke-static {v4}, Lccsancom/mbridge/msdk/mbnative/c/c$a;->e(Lccsancom/mbridge/msdk/mbnative/c/c$a;)I

    move-result v4

    if-ge v3, v4, :cond_a

    .line 803
    iget-object v3, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a$1;->b:Lccsancom/mbridge/msdk/mbnative/c/c$a;

    iget-object v4, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a$1;->a:Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;

    iget-object v4, v4, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->ads:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v3, v4}, Lccsancom/mbridge/msdk/mbnative/c/c$a;->a(Lccsancom/mbridge/msdk/mbnative/c/c$a;I)I

    .line 806
    :cond_a
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 807
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 809
    nop

    .line 811
    const/4 v5, 0x0

    :goto_3
    iget-object v6, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a$1;->a:Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;

    iget-object v6, v6, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->ads:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_c

    .line 812
    iget-object v6, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a$1;->a:Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;

    iget-object v6, v6, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->ads:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 813
    iget-object v7, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a$1;->b:Lccsancom/mbridge/msdk/mbnative/c/c$a;

    iget-object v7, v7, Lccsancom/mbridge/msdk/mbnative/c/c$a;->d:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setCampaignUnitId(Ljava/lang/String;)V

    .line 815
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    iget-object v8, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a$1;->b:Lccsancom/mbridge/msdk/mbnative/c/c$a;

    invoke-static {v8}, Lccsancom/mbridge/msdk/mbnative/c/c$a;->e(Lccsancom/mbridge/msdk/mbnative/c/c$a;)I

    move-result v8

    if-ge v7, v8, :cond_b

    .line 816
    invoke-virtual {v6}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getOfferType()I

    move-result v7

    const/16 v8, 0x63

    if-eq v7, v8, :cond_b

    .line 817
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 818
    invoke-virtual {v6}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 819
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 824
    :cond_b
    iget-object v7, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a$1;->b:Lccsancom/mbridge/msdk/mbnative/c/c$a;

    iget-object v7, v7, Lccsancom/mbridge/msdk/mbnative/c/c$a;->a:Lccsancom/mbridge/msdk/mbnative/c/c;

    iget-object v8, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a$1;->b:Lccsancom/mbridge/msdk/mbnative/c/c$a;

    iget-object v8, v8, Lccsancom/mbridge/msdk/mbnative/c/c$a;->a:Lccsancom/mbridge/msdk/mbnative/c/c;

    invoke-static {v8}, Lccsancom/mbridge/msdk/mbnative/c/c;->b(Lccsancom/mbridge/msdk/mbnative/c/c;)Z

    move-result v8

    invoke-virtual {v7, v8, v6}, Lccsancom/mbridge/msdk/mbnative/c/c;->a(ZLccsancom/mbridge/msdk/out/Campaign;)V

    .line 811
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 827
    :cond_c
    iget-object v5, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a$1;->b:Lccsancom/mbridge/msdk/mbnative/c/c$a;

    iget-object v5, v5, Lccsancom/mbridge/msdk/mbnative/c/c$a;->a:Lccsancom/mbridge/msdk/mbnative/c/c;

    iget-object v6, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a$1;->b:Lccsancom/mbridge/msdk/mbnative/c/c$a;

    iget-object v6, v6, Lccsancom/mbridge/msdk/mbnative/c/c$a;->d:Ljava/lang/String;

    invoke-static {v5, v4, v6}, Lccsancom/mbridge/msdk/mbnative/c/c;->a(Lccsancom/mbridge/msdk/mbnative/c/c;Ljava/util/List;Ljava/lang/String;)V

    .line 829
    nop

    .line 830
    iget-object v4, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a$1;->a:Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_d

    .line 831
    iget-object v1, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a$1;->a:Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getType()I

    move-result v1

    .line 833
    :cond_d
    invoke-static {v1}, Lccsancom/mbridge/msdk/mbnative/a/c;->a(I)Lccsancom/mbridge/msdk/mbnative/a/b;

    move-result-object v1

    .line 834
    if-eqz v1, :cond_e

    .line 835
    iget-object v4, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a$1;->b:Lccsancom/mbridge/msdk/mbnative/c/c$a;

    iget-object v4, v4, Lccsancom/mbridge/msdk/mbnative/c/c$a;->d:Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Lccsancom/mbridge/msdk/mbnative/a/b;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 838
    :cond_e
    iget-object v1, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a$1;->b:Lccsancom/mbridge/msdk/mbnative/c/c$a;

    invoke-static {v1}, Lccsancom/mbridge/msdk/mbnative/c/c$a;->f(Lccsancom/mbridge/msdk/mbnative/c/c$a;)I

    move-result v1

    iget-object v3, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a$1;->b:Lccsancom/mbridge/msdk/mbnative/c/c$a;

    iget-object v3, v3, Lccsancom/mbridge/msdk/mbnative/c/c$a;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lccsancom/mbridge/msdk/mbnative/c/c;->a(ILjava/lang/String;)V

    .line 839
    invoke-static {}, Lccsanandroid/os/Looper;->myLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_f

    if-eqz v0, :cond_f

    .line 840
    invoke-static {}, Lccsanandroid/os/Looper;->loop()V

    .line 843
    :cond_f
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a$1;->a:Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 844
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a$1;->a:Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMaitve()I

    move-result v1

    iget-object v3, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a$1;->a:Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMaitve_src()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lccsancom/mbridge/msdk/click/b;->a(Lccsanandroid/content/Context;ILjava/lang/String;)V

    .line 846
    :cond_10
    return-void
.end method
