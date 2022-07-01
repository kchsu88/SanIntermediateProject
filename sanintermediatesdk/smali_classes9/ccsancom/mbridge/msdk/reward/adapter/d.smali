.class public final Lccsancom/mbridge/msdk/reward/adapter/d;
.super Ljava/lang/Object;
.source "RewardMVVideoAdapter.java"

# interfaces
.implements Lccsancom/mbridge/msdk/reward/adapter/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/reward/adapter/d$d;,
        Lccsancom/mbridge/msdk/reward/adapter/d$e;,
        Lccsancom/mbridge/msdk/reward/adapter/d$f;,
        Lccsancom/mbridge/msdk/reward/adapter/d$a;,
        Lccsancom/mbridge/msdk/reward/adapter/d$c;,
        Lccsancom/mbridge/msdk/reward/adapter/d$b;
    }
.end annotation


# instance fields
.field private A:I

.field private B:Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;

.field private C:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;"
        }
    .end annotation
.end field

.field private D:Z

.field private E:J

.field private F:Lccsancom/mbridge/msdk/reward/adapter/d$d;

.field private G:Z

.field private H:Z

.field private I:Lccsanandroid/os/Handler;

.field private J:J

.field private K:Ljava/lang/String;

.field private L:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;"
        }
    .end annotation
.end field

.field private M:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;"
        }
    .end annotation
.end field

.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field c:Z

.field volatile d:Z

.field volatile e:Z

.field volatile f:Z

.field volatile g:Z

.field volatile h:Z

.field private i:Lccsanandroid/content/Context;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:I

.field private m:I

.field private n:I

.field private o:Z

.field private p:Ljava/lang/String;

.field private q:Lccsancom/mbridge/msdk/video/bt/module/b/h;

.field private volatile r:Lccsancom/mbridge/msdk/reward/adapter/b;

.field private s:Lccsancom/mbridge/msdk/videocommon/d/c;

.field private t:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;"
        }
    .end annotation
.end field

.field private u:I

.field private v:Z

.field private w:Z

.field private x:Ljava/lang/String;

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 937
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->t:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 120
    const/4 v0, 0x2

    iput v0, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->u:I

    .line 123
    const-string v0, ""

    iput-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->x:Ljava/lang/String;

    .line 130
    const/4 v1, 0x0

    iput-boolean v1, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->D:Z

    .line 132
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->E:J

    .line 135
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->G:Z

    .line 136
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->H:Z

    .line 137
    iput-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->a:Ljava/lang/String;

    .line 138
    iput-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->b:Ljava/lang/String;

    .line 186
    new-instance v4, Lccsancom/mbridge/msdk/reward/adapter/d$1;

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lccsancom/mbridge/msdk/reward/adapter/d$1;-><init>(Lccsancom/mbridge/msdk/reward/adapter/d;Lccsanandroid/os/Looper;)V

    iput-object v4, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->I:Lccsanandroid/os/Handler;

    .line 961
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->c:Z

    .line 1138
    iput-wide v2, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->J:J

    .line 1472
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->d:Z

    .line 1473
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->e:Z

    .line 1474
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->f:Z

    .line 1475
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->g:Z

    .line 1476
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->h:Z

    .line 1477
    iput-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->K:Ljava/lang/String;

    .line 939
    :try_start_0
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->i:Lccsanandroid/content/Context;

    .line 940
    iput-object p3, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->j:Ljava/lang/String;

    .line 941
    iput-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->k:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 944
    goto :goto_0

    .line 942
    :catch_0
    move-exception p1

    .line 943
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 945
    :goto_0
    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/reward/adapter/d;J)J
    .locals 0

    .line 82
    iput-wide p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->E:J

    return-wide p1
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsancom/mbridge/msdk/reward/adapter/b;
    .locals 0

    .line 82
    iget-object p0, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->r:Lccsancom/mbridge/msdk/reward/adapter/b;

    return-object p0
.end method

.method private a(Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;",
            ")",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;"
        }
    .end annotation

    .line 2730
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2731
    nop

    .line 2733
    nop

    .line 2734
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->s:Lccsancom/mbridge/msdk/videocommon/d/c;

    if-eqz v2, :cond_0

    .line 2735
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/videocommon/d/c;->s()I

    .line 2736
    nop

    .line 2740
    :cond_0
    const v2, 0x7fffffff

    .line 2741
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_11

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_11

    .line 2742
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v3

    .line 2743
    iput-object v3, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->L:Ljava/util/List;

    .line 2744
    const/4 v4, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 2745
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object p1

    .line 2746
    const/4 v5, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 2747
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 2748
    iget-object v7, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->j:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setCampaignUnitId(Ljava/lang/String;)V

    .line 2749
    invoke-interface {p1, v5, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2746
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2752
    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge p1, v5, :cond_11

    if-ge p1, v2, :cond_11

    .line 2753
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 2755
    invoke-virtual {v5}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isMraid()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 2756
    invoke-virtual {v5}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMraid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_10

    .line 2757
    nop

    .line 2758
    invoke-virtual {v5}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/16 v7, 0x11f

    const-string v8, ""

    if-ne v6, v7, :cond_2

    .line 2759
    :try_start_1
    const-string v6, "3"

    goto :goto_2

    .line 2760
    :cond_2
    invoke-virtual {v5}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    move-result v6

    const/16 v7, 0x5e

    if-ne v6, v7, :cond_3

    .line 2761
    const-string v6, "1"

    goto :goto_2

    .line 2762
    :cond_3
    invoke-virtual {v5}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    move-result v6

    const/16 v7, 0x2a

    if-ne v6, v7, :cond_4

    .line 2763
    const-string v6, "2"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    goto :goto_2

    .line 2762
    :cond_4
    move-object v6, v8

    .line 2766
    :goto_2
    :try_start_2
    sget-object v7, Lccsancom/mbridge/msdk/foundation/same/b/c;->g:Lccsancom/mbridge/msdk/foundation/same/b/c;

    invoke-static {v7}, Lccsancom/mbridge/msdk/foundation/same/b/e;->b(Lccsancom/mbridge/msdk/foundation/same/b/c;)Ljava/lang/String;

    move-result-object v7

    .line 2767
    invoke-virtual {v5}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMraid()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lccsancom/mbridge/msdk/foundation/tools/SameMD5;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2768
    invoke-static {v9}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 2769
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    :cond_5
    nop

    :goto_3
    const-string v10, ".html"

    invoke-virtual {v9, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2770
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2771
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2773
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2774
    const-string v9, "<script>"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lccsancom/mbridge/msdk/b/b/a;->a()Lccsancom/mbridge/msdk/b/b/a;

    move-result-object v9

    invoke-virtual {v9}, Lccsancom/mbridge/msdk/b/b/a;->b()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "</script>"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2775
    invoke-virtual {v5}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMraid()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2777
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 2778
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->flush()V

    .line 2779
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setMraid(Ljava/lang/String;)V

    .line 2781
    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->j:Ljava/lang/String;

    invoke-static {v5, v8, v1, v6}, Lccsancom/mbridge/msdk/foundation/same/report/b;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2787
    nop

    .line 2788
    :try_start_4
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2792
    move-object v1, v7

    goto :goto_5

    .line 2840
    :catchall_0
    move-exception p1

    move-object v1, v7

    goto/16 :goto_d

    .line 2836
    :catch_0
    move-exception p1

    move-object v1, v7

    goto/16 :goto_a

    .line 2787
    :catchall_1
    move-exception p1

    move-object v1, v7

    goto :goto_6

    .line 2782
    :catch_1
    move-exception v1

    move-object v11, v7

    move-object v7, v1

    move-object v1, v11

    goto :goto_4

    .line 2787
    :catchall_2
    move-exception p1

    goto :goto_6

    .line 2782
    :catch_2
    move-exception v7

    .line 2783
    :goto_4
    :try_start_5
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 2784
    invoke-virtual {v5, v8}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setMraid(Ljava/lang/String;)V

    .line 2785
    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->j:Ljava/lang/String;

    invoke-static {v5, v7, v8, v6}, Lccsancom/mbridge/msdk/foundation/same/report/b;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2787
    if-eqz v1, :cond_6

    .line 2788
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 2792
    :cond_6
    :goto_5
    new-instance v6, Ljava/io/File;

    invoke-virtual {v5}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMraid()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2793
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v6}, Ljava/io/File;->canRead()Z

    move-result v6

    if-nez v6, :cond_9

    .line 2794
    :cond_7
    const-string v5, "mraid resource write fail"

    invoke-direct {p0, v5}, Lccsancom/mbridge/msdk/reward/adapter/d;->c(Ljava/lang/String;)V

    .line 2795
    goto/16 :goto_9

    .line 2787
    :goto_6
    if-eqz v1, :cond_8

    .line 2788
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 2790
    :cond_8
    throw p1

    .line 2802
    :cond_9
    if-eqz v5, :cond_10

    invoke-virtual {v5}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getOfferType()I

    move-result v6

    const/16 v7, 0x63

    if-eq v6, v7, :cond_10

    .line 2803
    nop

    .line 2804
    invoke-direct {p0, v5}, Lccsancom/mbridge/msdk/reward/adapter/d;->b(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_a

    .line 2805
    invoke-virtual {v5}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lccsancom/mbridge/msdk/foundation/tools/x;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual {v5}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMraid()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 2806
    const/4 v6, 0x0

    goto :goto_7

    .line 2809
    :cond_a
    invoke-virtual {v5}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lccsancom/mbridge/msdk/foundation/tools/x;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 2810
    const/4 v6, 0x0

    goto :goto_7

    .line 2815
    :cond_b
    const/4 v6, 0x1

    :goto_7
    if-eqz v6, :cond_f

    .line 2817
    invoke-virtual {v5}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getWtick()I

    move-result v6

    if-eq v6, v7, :cond_e

    iget-object v6, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->i:Lccsanandroid/content/Context;

    invoke-virtual {v5}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lccsancom/mbridge/msdk/foundation/tools/u;->c(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_c

    goto :goto_8

    .line 2820
    :cond_c
    invoke-static {v5}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 2821
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 2823
    :cond_d
    iget-object v6, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->j:Ljava/lang/String;

    sget v7, Lccsancom/mbridge/msdk/foundation/same/a;->u:I

    invoke-static {v6, v5, v7}, Lccsancom/mbridge/msdk/foundation/tools/u;->a(Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;I)V

    .line 2825
    const-string v5, "APP ALREADY INSTALLED"

    iput-object v5, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->K:Ljava/lang/String;

    goto :goto_9

    .line 2818
    :cond_e
    :goto_8
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 2830
    :cond_f
    const-string v5, "No video campaign"

    iput-object v5, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->K:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 2752
    :cond_10
    :goto_9
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_1

    .line 2840
    :cond_11
    if-eqz v1, :cond_12

    .line 2842
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_b

    .line 2840
    :catchall_3
    move-exception p1

    goto :goto_d

    .line 2836
    :catch_3
    move-exception p1

    .line 2838
    :goto_a
    :try_start_8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 2840
    if-eqz v1, :cond_12

    .line 2842
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 2845
    :goto_b
    goto :goto_c

    .line 2843
    :catch_4
    move-exception p1

    goto :goto_b

    .line 2848
    :cond_12
    :goto_c
    return-object v0

    .line 2840
    :goto_d
    if-eqz v1, :cond_13

    .line 2842
    :try_start_a
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 2845
    goto :goto_e

    .line 2843
    :catch_5
    move-exception v0

    .line 2847
    :cond_13
    :goto_e
    goto :goto_10

    :goto_f
    throw p1

    :goto_10
    goto :goto_f
.end method

.method private a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 2

    .line 2141
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/a/a;->a()Lccsancom/mbridge/msdk/videocommon/a/a;

    move-result-object v0

    .line 2142
    if-eqz v0, :cond_0

    .line 2143
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/videocommon/a/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2147
    :cond_0
    goto :goto_0

    .line 2145
    :catchall_0
    move-exception p1

    .line 2146
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RewardMVVideoAdapter"

    invoke-static {v1, v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2148
    :goto_0
    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/reward/adapter/d;Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;)V
    .locals 20

    .line 82
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 8480
    iput-object v2, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->B:Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;

    .line 8481
    invoke-direct/range {p0 .. p1}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->C:Ljava/util/List;

    .line 8483
    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v6, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->i:Lccsanandroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "start download resource tpl "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v7}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMof_template_url()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->j:Ljava/lang/String;

    iget-boolean v9, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->w:Z

    const-string v10, ""

    const-string v11, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iget-wide v14, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->J:J

    sub-long/2addr v12, v14

    invoke-static/range {v5 .. v13}, Lccsancom/mbridge/msdk/reward/b/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8485
    goto :goto_1

    .line 8484
    :catch_0
    move-exception v0

    .line 8486
    :goto_1
    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->C:Ljava/util/List;

    .line 8920
    new-instance v0, Ljava/lang/Thread;

    new-instance v5, Lccsancom/mbridge/msdk/reward/adapter/d$6;

    invoke-direct {v5, v1, v2}, Lccsancom/mbridge/msdk/reward/adapter/d$6;-><init>(Lccsancom/mbridge/msdk/reward/adapter/d;Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;)V

    invoke-direct {v0, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 8931
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 8488
    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->C:Ljava/util/List;

    const-string v5, "RewardMVVideoAdapter"

    if-eqz v0, :cond_c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_c

    .line 8489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onload load\u6210\u529f size:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->C:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 8490
    nop

    .line 9286
    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->I:Lccsanandroid/os/Handler;

    if-eqz v0, :cond_1

    .line 9287
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Lccsanandroid/os/Handler;->sendEmptyMessage(I)Z

    .line 8490
    :cond_1
    nop

    .line 8500
    if-eqz v2, :cond_2

    .line 8501
    invoke-virtual/range {p1 .. p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->getSessionId()Ljava/lang/String;

    move-result-object v0

    .line 9995
    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/x;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 9996
    sput-object v0, Lccsancom/mbridge/msdk/reward/a/a;->a:Ljava/lang/String;

    .line 8504
    :cond_2
    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->C:Ljava/util/List;

    .line 10937
    if-eqz v0, :cond_3

    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 10938
    iget v2, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->l:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v2, v0

    iput v2, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->l:I

    .line 10940
    :cond_3
    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->s:Lccsancom/mbridge/msdk/videocommon/d/c;

    if-eqz v0, :cond_4

    iget v2, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->l:I

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/videocommon/d/c;->t()I

    move-result v0

    if-le v2, v0, :cond_5

    .line 10941
    :cond_4
    iput v4, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->l:I

    .line 10944
    :cond_5
    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->j:Ljava/lang/String;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/x;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 10945
    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->j:Ljava/lang/String;

    iget v2, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->l:I

    invoke-static {v0, v2}, Lccsancom/mbridge/msdk/reward/a/a;->a(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 10949
    :cond_6
    goto :goto_2

    .line 10947
    :catch_1
    move-exception v0

    .line 10948
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 8505
    :goto_2
    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->C:Ljava/util/List;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 8506
    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->k:Ljava/lang/String;

    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->j:Ljava/lang/String;

    iget-object v5, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->C:Ljava/util/List;

    .line 11389
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/a/a;->a()Lccsancom/mbridge/msdk/videocommon/a/a;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 11390
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/a/a;->a()Lccsancom/mbridge/msdk/videocommon/a/a;

    move-result-object v6

    invoke-virtual {v6, v0, v2, v5}, Lccsancom/mbridge/msdk/videocommon/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 8510
    :cond_7
    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->C:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 8511
    invoke-virtual {v7}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMof_template_url()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 8512
    xor-int/2addr v0, v3

    invoke-virtual {v7}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getNscpt()I

    move-result v2

    .line 8514
    iput-boolean v4, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->d:Z

    .line 8515
    iput-boolean v4, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->e:Z

    .line 8516
    iput-boolean v4, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->f:Z

    .line 8517
    iput-boolean v4, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->h:Z

    .line 8518
    iput-boolean v4, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->g:Z

    .line 8520
    if-eqz v7, :cond_a

    invoke-virtual {v7}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMof_template_url()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lccsancom/mbridge/msdk/foundation/tools/u;->f(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 8521
    iget-object v3, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->C:Ljava/util/List;

    if-eqz v3, :cond_8

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x2

    if-ge v3, v5, :cond_a

    .line 8522
    :cond_8
    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->j:Ljava/lang/String;

    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->L:Ljava/util/List;

    iget-boolean v3, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->w:Z

    invoke-direct {v1, v0, v2, v3}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(Ljava/lang/String;Ljava/util/List;Z)V

    .line 8523
    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->K:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "no available campaign"

    goto :goto_3

    :cond_9
    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->K:Ljava/lang/String;

    .line 8524
    :goto_3
    iget-object v2, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->C:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v9, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->i:Lccsanandroid/content/Context;

    iget-object v11, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->j:Ljava/lang/String;

    iget-boolean v12, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->w:Z

    invoke-virtual {v7}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v14

    move-object v10, v0

    invoke-static/range {v8 .. v14}, Lccsancom/mbridge/msdk/reward/b/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 8525
    iget-object v1, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->r:Lccsancom/mbridge/msdk/reward/adapter/b;

    invoke-interface {v1, v0}, Lccsancom/mbridge/msdk/reward/adapter/b;->a(Ljava/lang/String;)V

    .line 8526
    goto :goto_5

    .line 12081
    :cond_a
    invoke-static {}, Lccsancom/mbridge/msdk/reward/adapter/c$m;->a()Lccsancom/mbridge/msdk/reward/adapter/c;

    move-result-object v8

    .line 8529
    iget-object v9, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->i:Lccsanandroid/content/Context;

    iget-boolean v12, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->w:Z

    iget-boolean v3, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->v:Z

    if-eqz v3, :cond_b

    const/16 v3, 0x11f

    const/16 v13, 0x11f

    goto :goto_4

    :cond_b
    const/16 v3, 0x5e

    const/16 v13, 0x5e

    :goto_4
    iget-object v14, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->k:Ljava/lang/String;

    iget-object v15, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->j:Ljava/lang/String;

    invoke-virtual {v7}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v16

    iget-object v3, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->C:Ljava/util/List;

    new-instance v4, Lccsancom/mbridge/msdk/reward/adapter/d$3;

    invoke-direct {v4, v1, v0, v7, v2}, Lccsancom/mbridge/msdk/reward/adapter/d$3;-><init>(Lccsancom/mbridge/msdk/reward/adapter/d;ZLccsancom/mbridge/msdk/foundation/entity/CampaignEx;I)V

    new-instance v5, Lccsancom/mbridge/msdk/reward/adapter/d$4;

    invoke-direct {v5, v1, v0, v7, v2}, Lccsancom/mbridge/msdk/reward/adapter/d$4;-><init>(Lccsancom/mbridge/msdk/reward/adapter/d;ZLccsancom/mbridge/msdk/foundation/entity/CampaignEx;I)V

    move v10, v0

    move v11, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    invoke-virtual/range {v8 .. v19}, Lccsancom/mbridge/msdk/reward/adapter/c;->a(Lccsanandroid/content/Context;ZIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lccsancom/mbridge/msdk/reward/adapter/c$c;Lccsancom/mbridge/msdk/reward/adapter/c$i;)V

    .line 8809
    if-eqz v0, :cond_e

    .line 13081
    invoke-static {}, Lccsancom/mbridge/msdk/reward/adapter/c$m;->a()Lccsancom/mbridge/msdk/reward/adapter/c;

    move-result-object v5

    .line 8810
    iget-object v6, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->i:Lccsanandroid/content/Context;

    iget-object v8, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->k:Ljava/lang/String;

    iget-object v9, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->j:Ljava/lang/String;

    invoke-virtual {v7}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lccsancom/mbridge/msdk/reward/adapter/d$5;

    invoke-direct {v11, v1, v7, v0, v2}, Lccsancom/mbridge/msdk/reward/adapter/d$5;-><init>(Lccsancom/mbridge/msdk/reward/adapter/d;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;ZI)V

    invoke-virtual/range {v5 .. v11}, Lccsancom/mbridge/msdk/reward/adapter/c;->a(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/reward/adapter/c$i;)V

    goto :goto_5

    .line 8492
    :cond_c
    const-string v0, "onload load\u5931\u8d25 \u8fd4\u56de\u7684compaign \u6ca1\u6709\u5e26\u89c6\u9891\u7d20\u6750"

    invoke-static {v5, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 8493
    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->K:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 8494
    const-string v0, "APP ALREADY INSTALLED"

    iput-object v0, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->K:Ljava/lang/String;

    .line 8496
    :cond_d
    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->K:Ljava/lang/String;

    invoke-direct {v1, v0}, Lccsancom/mbridge/msdk/reward/adapter/d;->c(Ljava/lang/String;)V

    .line 8497
    nop

    .line 82
    :cond_e
    :goto_5
    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/reward/adapter/d;Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/videocommon/d/c;Ljava/lang/String;)V
    .locals 17

    .line 82
    move-object/from16 v0, p0

    move-object/from16 v12, p3

    move-object/from16 v6, p4

    .line 6677
    :try_start_0
    new-instance v13, Lccsancom/mbridge/msdk/videocommon/a$a;

    invoke-direct {v13}, Lccsancom/mbridge/msdk/videocommon/a$a;-><init>()V

    .line 6678
    new-instance v14, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-direct {v14, v1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;-><init>(Lccsanandroid/content/Context;)V

    .line 6679
    invoke-virtual {v13, v14}, Lccsancom/mbridge/msdk/videocommon/a$a;->a(Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;)V

    .line 6681
    const/4 v1, 0x0

    if-eqz v6, :cond_0

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 6682
    new-instance v2, Lccsancom/mbridge/msdk/video/signal/a/j;

    invoke-direct {v2, v1, v12, v6}, Lccsancom/mbridge/msdk/video/signal/a/j;-><init>(Lccsanandroid/app/Activity;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/util/List;)V

    move-object v15, v2

    goto :goto_0

    .line 6684
    :cond_0
    new-instance v2, Lccsancom/mbridge/msdk/video/signal/a/j;

    invoke-direct {v2, v1, v12}, Lccsancom/mbridge/msdk/video/signal/a/j;-><init>(Lccsanandroid/app/Activity;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    move-object v15, v2

    .line 6686
    :goto_0
    iget v1, v0, Lccsancom/mbridge/msdk/reward/adapter/d;->u:I

    invoke-virtual {v15, v1}, Lccsancom/mbridge/msdk/video/signal/a/j;->a(I)V

    .line 6687
    move-object/from16 v11, p6

    invoke-virtual {v15, v11}, Lccsancom/mbridge/msdk/video/signal/a/j;->a(Ljava/lang/String;)V

    .line 6688
    move-object/from16 v9, p7

    invoke-virtual {v15, v9}, Lccsancom/mbridge/msdk/video/signal/a/j;->a(Lccsancom/mbridge/msdk/videocommon/d/c;)V

    .line 6689
    iget-boolean v1, v0, Lccsancom/mbridge/msdk/reward/adapter/d;->D:Z

    invoke-virtual {v15, v1}, Lccsancom/mbridge/msdk/video/signal/a/j;->d(Z)V

    .line 6690
    new-instance v10, Lccsancom/mbridge/msdk/reward/adapter/d$c;

    iget v8, v0, Lccsancom/mbridge/msdk/reward/adapter/d;->u:I

    move-object v1, v10

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p6

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v16, v8

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 p4, v10

    move/from16 v10, v16

    move-object/from16 v11, p0

    invoke-direct/range {v1 .. v11}, Lccsancom/mbridge/msdk/reward/adapter/d$c;-><init>(Lccsancom/mbridge/msdk/reward/adapter/d;Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/videocommon/d/c;ILccsancom/mbridge/msdk/reward/adapter/d;)V

    .line 6691
    new-instance v10, Lccsancom/mbridge/msdk/reward/adapter/d$f;

    iget-object v9, v0, Lccsancom/mbridge/msdk/reward/adapter/d;->I:Lccsanandroid/os/Handler;

    move-object v1, v10

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p6

    move-object v5, v13

    move-object/from16 v6, p3

    move-object/from16 v7, p0

    move-object/from16 v8, p4

    invoke-direct/range {v1 .. v9}, Lccsancom/mbridge/msdk/reward/adapter/d$f;-><init>(Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/videocommon/a$a;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsancom/mbridge/msdk/reward/adapter/d;Lccsancom/mbridge/msdk/reward/adapter/d$c;Lccsanandroid/os/Handler;)V

    .line 6692
    invoke-virtual {v14, v10}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->setWebViewListener(Lccsancom/mbridge/msdk/mbsignalcommon/windvane/d;)V

    .line 6693
    invoke-virtual {v14, v15}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->setObject(Ljava/lang/Object;)V

    .line 6694
    move-object/from16 v1, p5

    invoke-virtual {v14, v1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->loadUrl(Ljava/lang/String;)V

    .line 6695
    iget-object v0, v0, Lccsancom/mbridge/msdk/reward/adapter/d;->I:Lccsanandroid/os/Handler;

    const-wide/16 v1, 0x1388

    move-object/from16 v3, p4

    invoke-virtual {v0, v3, v1, v2}, Lccsanandroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 6700
    :catchall_0
    move-exception v0

    .line 6701
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RewardMVVideoAdapter"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 6696
    :catch_0
    move-exception v0

    .line 6697
    sget-boolean v1, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 6698
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 6702
    :cond_1
    :goto_1
    nop

    .line 82
    :goto_2
    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/reward/adapter/d;Ljava/lang/String;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/reward/adapter/d;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/reward/adapter/d;Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/videocommon/d/c;)V
    .locals 16

    .line 82
    move-object/from16 v0, p0

    move-object/from16 v10, p2

    .line 7644
    :try_start_0
    new-instance v11, Lccsancom/mbridge/msdk/videocommon/a$a;

    invoke-direct {v11}, Lccsancom/mbridge/msdk/videocommon/a$a;-><init>()V

    .line 7645
    new-instance v12, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-direct {v12, v1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;-><init>(Lccsanandroid/content/Context;)V

    .line 7646
    invoke-virtual {v11, v12}, Lccsancom/mbridge/msdk/videocommon/a$a;->a(Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;)V

    .line 7647
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/a/c;->a()Lccsancom/mbridge/msdk/video/bt/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/video/bt/a/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 7648
    invoke-virtual {v11, v1}, Lccsancom/mbridge/msdk/videocommon/a$a;->a(Ljava/lang/String;)V

    .line 7650
    iget-object v2, v0, Lccsancom/mbridge/msdk/reward/adapter/d;->B:Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lccsancom/mbridge/msdk/reward/adapter/d;->B:Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 7651
    new-instance v2, Lccsancom/mbridge/msdk/video/signal/a/j;

    iget-object v4, v0, Lccsancom/mbridge/msdk/reward/adapter/d;->B:Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v2, v3, v10, v4}, Lccsancom/mbridge/msdk/video/signal/a/j;-><init>(Lccsanandroid/app/Activity;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/util/List;)V

    move-object v13, v2

    goto :goto_0

    .line 7653
    :cond_0
    new-instance v2, Lccsancom/mbridge/msdk/video/signal/a/j;

    invoke-direct {v2, v3, v10}, Lccsancom/mbridge/msdk/video/signal/a/j;-><init>(Lccsanandroid/app/Activity;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    move-object v13, v2

    .line 7655
    :goto_0
    iget v2, v0, Lccsancom/mbridge/msdk/reward/adapter/d;->u:I

    invoke-virtual {v13, v2}, Lccsancom/mbridge/msdk/video/signal/a/j;->a(I)V

    .line 7656
    move-object/from16 v14, p4

    invoke-virtual {v13, v14}, Lccsancom/mbridge/msdk/video/signal/a/j;->a(Ljava/lang/String;)V

    .line 7657
    invoke-virtual {v13, v1}, Lccsancom/mbridge/msdk/video/signal/a/j;->c(Ljava/lang/String;)V

    .line 7658
    move-object/from16 v7, p5

    invoke-virtual {v13, v7}, Lccsancom/mbridge/msdk/video/signal/a/j;->a(Lccsancom/mbridge/msdk/videocommon/d/c;)V

    .line 7659
    iget-boolean v1, v0, Lccsancom/mbridge/msdk/reward/adapter/d;->D:Z

    invoke-virtual {v13, v1}, Lccsancom/mbridge/msdk/video/signal/a/j;->d(Z)V

    .line 7660
    new-instance v15, Lccsancom/mbridge/msdk/reward/adapter/d$b;

    iget v8, v0, Lccsancom/mbridge/msdk/reward/adapter/d;->u:I

    move-object v1, v15

    move-object/from16 v2, p0

    move-object/from16 v3, p4

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v9, p0

    invoke-direct/range {v1 .. v9}, Lccsancom/mbridge/msdk/reward/adapter/d$b;-><init>(Lccsancom/mbridge/msdk/reward/adapter/d;Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/videocommon/d/c;ILccsancom/mbridge/msdk/reward/adapter/d;)V

    .line 7661
    new-instance v9, Lccsancom/mbridge/msdk/reward/adapter/d$a;

    iget-object v8, v0, Lccsancom/mbridge/msdk/reward/adapter/d;->I:Lccsanandroid/os/Handler;

    move-object v1, v9

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move-object v4, v11

    move-object/from16 v5, p2

    move-object/from16 v6, p0

    move-object v7, v15

    invoke-direct/range {v1 .. v8}, Lccsancom/mbridge/msdk/reward/adapter/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/videocommon/a$a;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsancom/mbridge/msdk/reward/adapter/d;Lccsancom/mbridge/msdk/reward/adapter/d$b;Lccsanandroid/os/Handler;)V

    .line 7662
    invoke-virtual {v12, v9}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->setWebViewListener(Lccsancom/mbridge/msdk/mbsignalcommon/windvane/d;)V

    .line 7663
    invoke-virtual {v12, v13}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->setObject(Ljava/lang/Object;)V

    .line 7664
    move-object/from16 v1, p3

    invoke-virtual {v12, v1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->loadUrl(Ljava/lang/String;)V

    .line 7665
    iget-object v0, v0, Lccsancom/mbridge/msdk/reward/adapter/d;->I:Lccsanandroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v15, v1, v2}, Lccsanandroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 7670
    :catchall_0
    move-exception v0

    .line 7671
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RewardMVVideoAdapter"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 7666
    :catch_0
    move-exception v0

    .line 7667
    sget-boolean v1, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 7668
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 7672
    :cond_1
    :goto_1
    nop

    .line 82
    :goto_2
    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/reward/adapter/d;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 82
    nop

    .line 8067
    const/4 v0, 0x5

    :try_start_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->t:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v1, :cond_7

    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 8068
    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->t:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 8069
    if-eqz v2, :cond_4

    .line 8070
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v3

    .line 8071
    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8072
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->t:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 8073
    invoke-direct {p0, v2}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 8074
    goto :goto_3

    .line 8076
    :cond_0
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object v3

    .line 8077
    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8078
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->t:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 8079
    invoke-direct {p0, v2}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 8080
    goto :goto_3

    .line 8082
    :cond_1
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v3

    .line 8083
    if-eqz v3, :cond_4

    .line 8084
    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;->e()Ljava/util/List;

    move-result-object v4

    .line 8085
    if-eqz v4, :cond_3

    .line 8086
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c$a;

    .line 8087
    if-eqz v5, :cond_2

    iget-object v6, v5, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c$a;->b:Ljava/util/List;

    if-eqz v6, :cond_2

    .line 8088
    iget-object v5, v5, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c$a;->b:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 8089
    iget-object v4, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->t:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 8090
    invoke-direct {p0, v2}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 8091
    goto :goto_2

    .line 8094
    :cond_2
    goto :goto_1

    .line 8096
    :cond_3
    :goto_2
    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;->d()Ljava/lang/String;

    move-result-object v3

    .line 8097
    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 8098
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->t:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 8099
    invoke-direct {p0, v2}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 8100
    goto :goto_3

    .line 8104
    :cond_4
    goto/16 :goto_0

    .line 8105
    :cond_5
    :goto_3
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->r:Lccsancom/mbridge/msdk/reward/adapter/b;

    if-eqz p2, :cond_9

    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->t:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p2

    if-nez p2, :cond_9

    .line 8106
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->I:Lccsanandroid/os/Handler;

    if-eqz p2, :cond_6

    .line 8107
    invoke-virtual {p2, v0}, Lccsanandroid/os/Handler;->removeMessages(I)V

    .line 8109
    :cond_6
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/reward/adapter/d;->c(Ljava/lang/String;)V

    .line 8110
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->r:Lccsancom/mbridge/msdk/reward/adapter/b;

    invoke-interface {p2, p1}, Lccsancom/mbridge/msdk/reward/adapter/b;->a(Ljava/lang/String;)V

    goto :goto_4

    .line 8114
    :cond_7
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->r:Lccsancom/mbridge/msdk/reward/adapter/b;

    if-eqz p2, :cond_9

    .line 8115
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->I:Lccsanandroid/os/Handler;

    if-eqz p2, :cond_8

    .line 8116
    invoke-virtual {p2, v0}, Lccsanandroid/os/Handler;->removeMessages(I)V

    .line 8118
    :cond_8
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/reward/adapter/d;->c(Ljava/lang/String;)V

    .line 8119
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->r:Lccsancom/mbridge/msdk/reward/adapter/b;

    invoke-interface {p2, p1}, Lccsancom/mbridge/msdk/reward/adapter/b;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8136
    :cond_9
    :goto_4
    goto :goto_5

    .line 8123
    :catchall_0
    move-exception p2

    .line 8124
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RewardMVVideoAdapter"

    invoke-static {v2, v1, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8126
    :try_start_1
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->r:Lccsancom/mbridge/msdk/reward/adapter/b;

    if-eqz p2, :cond_b

    .line 8127
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->I:Lccsanandroid/os/Handler;

    if-eqz p2, :cond_a

    .line 8128
    invoke-virtual {p2, v0}, Lccsanandroid/os/Handler;->removeMessages(I)V

    .line 8130
    :cond_a
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/reward/adapter/d;->c(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 8134
    :cond_b
    goto :goto_5

    .line 8132
    :catchall_1
    move-exception p0

    .line 8133
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 82
    :goto_5
    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/reward/adapter/d;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Z)V
    .locals 9

    .line 82
    nop

    .line 6002
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/db/f;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/db/f;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/db/d;->a(Lccsancom/mbridge/msdk/foundation/db/e;)Lccsancom/mbridge/msdk/foundation/db/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lccsancom/mbridge/msdk/foundation/db/d;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Z)V

    .line 6004
    if-eqz p4, :cond_6

    .line 6005
    nop

    .line 6023
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/a/a;->a()Lccsancom/mbridge/msdk/videocommon/a/a;

    move-result-object p4

    if-eqz p4, :cond_0

    iget-object p4, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->B:Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;

    if-eqz p4, :cond_0

    .line 6024
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/a/a;->a()Lccsancom/mbridge/msdk/videocommon/a/a;

    move-result-object p4

    invoke-virtual {p4, p1}, Lccsancom/mbridge/msdk/videocommon/a/a;->b(Ljava/lang/String;)V

    .line 6027
    :cond_0
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/a/a;->a()Lccsancom/mbridge/msdk/videocommon/a/a;

    move-result-object p4

    if-eqz p4, :cond_1

    iget-object p4, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->B:Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;

    if-eqz p4, :cond_1

    .line 6028
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/a/a;->a()Lccsancom/mbridge/msdk/videocommon/a/a;

    move-result-object p4

    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->B:Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->getVcn()I

    move-result v0

    invoke-virtual {p4, p1, v0}, Lccsancom/mbridge/msdk/videocommon/a/a;->b(Ljava/lang/String;I)V

    .line 6030
    :cond_1
    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p4

    if-lez p4, :cond_4

    .line 6031
    iget-object p4, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->B:Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;

    if-eqz p4, :cond_2

    const/4 p4, 0x0

    invoke-interface {p2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6033
    iget-object p0, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->B:Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->getRequestId()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p4}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getBidToken()Ljava/lang/String;

    move-result-object p4

    invoke-static {p0, p4}, Lccsancom/mbridge/msdk/reward/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6035
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 6036
    if-eqz p2, :cond_3

    .line 6038
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v0

    .line 6039
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v1

    .line 6040
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v2

    .line 6041
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getPlct()J

    move-result-wide v3

    .line 6042
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getPlctb()J

    move-result-wide v5

    .line 6043
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getTimestamp()J

    move-result-wide v7

    .line 6038
    invoke-static/range {v0 .. v8}, Lccsancom/mbridge/msdk/foundation/same/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJ)V

    .line 6046
    :cond_3
    goto :goto_0

    .line 6048
    :cond_4
    if-eqz p3, :cond_6

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_6

    .line 6049
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 6050
    if-eqz p2, :cond_5

    .line 6052
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p4, p2}, Lccsancom/mbridge/msdk/foundation/same/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 6054
    :cond_5
    goto :goto_1

    .line 6007
    :cond_6
    if-eqz p3, :cond_8

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_8

    .line 6008
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 6009
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object p3

    if-eqz p3, :cond_7

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object p3

    invoke-virtual {p3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;->d()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_7

    .line 6010
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "_"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object p4

    invoke-virtual {p4}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;->d()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lccsancom/mbridge/msdk/videocommon/a;->b(Ljava/lang/String;)V

    .line 6011
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    move-result p3

    invoke-static {p3, p2}, Lccsancom/mbridge/msdk/videocommon/a;->b(ILccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 6013
    :cond_7
    goto :goto_2

    .line 82
    :cond_8
    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/reward/adapter/d;Ljava/lang/String;Ljava/util/List;Z)V
    .locals 0

    .line 82
    invoke-direct {p0, p1, p2, p3}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(Ljava/lang/String;Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/reward/adapter/d;Ljava/util/List;)V
    .locals 6

    .line 82
    nop

    .line 13364
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->i:Lccsanandroid/content/Context;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 13367
    :cond_0
    iget-object p0, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->i:Lccsanandroid/content/Context;

    invoke-static {p0}, Lccsancom/mbridge/msdk/foundation/db/f;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/db/f;

    move-result-object p0

    invoke-static {p0}, Lccsancom/mbridge/msdk/foundation/db/j;->a(Lccsancom/mbridge/msdk/foundation/db/e;)Lccsancom/mbridge/msdk/foundation/db/j;

    move-result-object p0

    .line 13369
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 13370
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 13372
    if-eqz v2, :cond_1

    .line 13373
    if-eqz p0, :cond_1

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lccsancom/mbridge/msdk/foundation/db/j;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 13374
    new-instance v3, Lccsancom/mbridge/msdk/foundation/entity/f;

    invoke-direct {v3}, Lccsancom/mbridge/msdk/foundation/entity/f;-><init>()V

    .line 13375
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lccsancom/mbridge/msdk/foundation/entity/f;->a(Ljava/lang/String;)V

    .line 13376
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getFca()I

    move-result v4

    invoke-virtual {v3, v4}, Lccsancom/mbridge/msdk/foundation/entity/f;->a(I)V

    .line 13377
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getFcb()I

    move-result v2

    invoke-virtual {v3, v2}, Lccsancom/mbridge/msdk/foundation/entity/f;->b(I)V

    .line 13378
    invoke-virtual {v3, v0}, Lccsancom/mbridge/msdk/foundation/entity/f;->d(I)V

    .line 13379
    invoke-virtual {v3, v0}, Lccsancom/mbridge/msdk/foundation/entity/f;->c(I)V

    .line 13380
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lccsancom/mbridge/msdk/foundation/entity/f;->a(J)V

    .line 13381
    invoke-virtual {p0, v3}, Lccsancom/mbridge/msdk/foundation/db/j;->a(Lccsancom/mbridge/msdk/foundation/entity/f;)V

    .line 13369
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 13365
    :cond_2
    :goto_1
    nop

    .line 82
    :cond_3
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;Z)V"
        }
    .end annotation

    .line 2060
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2061
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/db/f;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/db/f;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/db/d;->a(Lccsancom/mbridge/msdk/foundation/db/e;)Lccsancom/mbridge/msdk/foundation/db/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lccsancom/mbridge/msdk/foundation/db/d;->a(Ljava/lang/String;Ljava/util/List;Z)V

    .line 2063
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 28

    .line 1142
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "1"

    const-string v3, ""

    :try_start_0
    iget-object v4, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->i:Lccsanandroid/content/Context;

    if-nez v4, :cond_0

    .line 1143
    const-string v0, "Context is null"

    invoke-direct {v1, v0}, Lccsancom/mbridge/msdk/reward/adapter/d;->c(Ljava/lang/String;)V

    .line 1144
    return-void

    .line 1146
    :cond_0
    iget-object v4, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->j:Ljava/lang/String;

    invoke-static {v4}, Lccsancom/mbridge/msdk/foundation/tools/x;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1147
    const-string v0, "UnitId is null"

    invoke-direct {v1, v0}, Lccsancom/mbridge/msdk/reward/adapter/d;->c(Ljava/lang/String;)V

    .line 1148
    return-void

    .line 1150
    :cond_1
    iget-object v4, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->s:Lccsancom/mbridge/msdk/videocommon/d/c;

    if-nez v4, :cond_2

    .line 1151
    const-string v0, "RewardUnitSetting is null"

    invoke-direct {v1, v0}, Lccsancom/mbridge/msdk/reward/adapter/d;->c(Ljava/lang/String;)V

    .line 1152
    return-void

    .line 1155
    :cond_2
    invoke-static/range {p1 .. p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1156
    iget-object v4, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->s:Lccsancom/mbridge/msdk/videocommon/d/c;

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/videocommon/d/c;->a()I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    .line 1157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->E:J

    sub-long/2addr v5, v7

    int-to-long v7, v4

    cmp-long v4, v5, v7

    if-gez v4, :cond_3

    .line 1158
    const-string v0, "EXCEPTION_RETURN_EMPTY"

    invoke-direct {v1, v0}, Lccsancom/mbridge/msdk/reward/adapter/d;->c(Ljava/lang/String;)V

    .line 1159
    return-void

    .line 1163
    :cond_3
    nop

    .line 3310
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v4

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v4

    .line 3311
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v6

    invoke-virtual {v6}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v6

    invoke-virtual {v6}, Lccsancom/mbridge/msdk/foundation/controller/a;->h()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lccsancom/mbridge/msdk/foundation/tools/SameMD5;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3312
    nop

    .line 3313
    iget-boolean v6, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->o:Z

    if-eqz v6, :cond_4

    .line 3314
    const/4 v6, 0x2

    goto :goto_0

    .line 3316
    :cond_4
    const/4 v6, 0x3

    .line 3319
    :goto_0
    nop

    .line 3320
    nop

    .line 3321
    iget-object v7, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->s:Lccsancom/mbridge/msdk/videocommon/d/c;

    const/4 v8, 0x0

    if-eqz v7, :cond_5

    .line 3322
    invoke-virtual {v7}, Lccsancom/mbridge/msdk/videocommon/d/c;->r()I

    move-result v8

    .line 3323
    iget-object v7, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->s:Lccsancom/mbridge/msdk/videocommon/d/c;

    invoke-virtual {v7}, Lccsancom/mbridge/msdk/videocommon/d/c;->s()I

    move-result v7

    goto :goto_1

    .line 3321
    :cond_5
    const/4 v7, 0x0

    .line 3326
    :goto_1
    nop

    .line 3327
    nop

    .line 3329
    iget-object v9, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->p:Ljava/lang/String;

    .line 3330
    nop

    .line 3331
    nop

    .line 4183
    iget-object v10, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->j:Ljava/lang/String;

    .line 3331
    const-string v11, "reward"

    invoke-static {v10, v11}, Lccsancom/mbridge/msdk/foundation/same/a/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3333
    invoke-direct/range {p0 .. p0}, Lccsancom/mbridge/msdk/reward/adapter/d;->e()I

    move-result v11

    iput v11, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->l:I

    .line 3335
    invoke-direct/range {p0 .. p0}, Lccsancom/mbridge/msdk/reward/adapter/d;->g()Ljava/lang/String;

    move-result-object v11

    .line 3337
    iget v12, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->m:I

    .line 3338
    iget-boolean v13, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->v:Z

    if-eqz v13, :cond_6

    const/16 v13, 0x11f

    goto :goto_2

    :cond_6
    const/16 v13, 0x5e

    .line 3339
    :goto_2
    new-instance v14, Lccsancom/mbridge/msdk/foundation/same/net/h/d;

    invoke-direct {v14}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;-><init>()V

    .line 3341
    const-string v15, "app_id"

    invoke-static {v14, v15, v4}, Lccsancom/mbridge/msdk/foundation/same/net/g/b;->a(Lccsancom/mbridge/msdk/foundation/same/net/h/d;Ljava/lang/String;Ljava/lang/String;)V

    .line 3342
    const-string v4, "unit_id"

    iget-object v15, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->j:Ljava/lang/String;

    invoke-static {v14, v4, v15}, Lccsancom/mbridge/msdk/foundation/same/net/g/b;->a(Lccsancom/mbridge/msdk/foundation/same/net/h/d;Ljava/lang/String;Ljava/lang/String;)V

    .line 3343
    iget-object v4, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->k:Ljava/lang/String;

    invoke-static {v4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 3344
    sget-object v4, Lccsancom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    iget-object v15, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->k:Ljava/lang/String;

    invoke-static {v14, v4, v15}, Lccsancom/mbridge/msdk/foundation/same/net/g/b;->a(Lccsancom/mbridge/msdk/foundation/same/net/h/d;Ljava/lang/String;Ljava/lang/String;)V

    .line 3346
    :cond_7
    const-string v4, "sign"

    invoke-static {v14, v4, v5}, Lccsancom/mbridge/msdk/foundation/same/net/g/b;->a(Lccsancom/mbridge/msdk/foundation/same/net/h/d;Ljava/lang/String;Ljava/lang/String;)V

    .line 3347
    const-string v4, "req_type"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v14, v4, v5}, Lccsancom/mbridge/msdk/foundation/same/net/g/b;->a(Lccsancom/mbridge/msdk/foundation/same/net/h/d;Ljava/lang/String;Ljava/lang/String;)V

    .line 3348
    const-string v4, "ad_num"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v14, v4, v5}, Lccsancom/mbridge/msdk/foundation/same/net/g/b;->a(Lccsancom/mbridge/msdk/foundation/same/net/h/d;Ljava/lang/String;Ljava/lang/String;)V

    .line 3349
    const-string v4, "tnum"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v6, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->v:Z

    const/4 v8, 0x1

    if-eqz v6, :cond_8

    const/4 v7, 0x1

    :cond_8
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v14, v4, v5}, Lccsancom/mbridge/msdk/foundation/same/net/g/b;->a(Lccsancom/mbridge/msdk/foundation/same/net/h/d;Ljava/lang/String;Ljava/lang/String;)V

    .line 3350
    const-string v4, "only_impression"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v14, v4, v5}, Lccsancom/mbridge/msdk/foundation/same/net/g/b;->a(Lccsancom/mbridge/msdk/foundation/same/net/h/d;Ljava/lang/String;Ljava/lang/String;)V

    .line 3351
    const-string v4, "ping_mode"

    invoke-static {v14, v4, v0}, Lccsancom/mbridge/msdk/foundation/same/net/g/b;->a(Lccsancom/mbridge/msdk/foundation/same/net/h/d;Ljava/lang/String;Ljava/lang/String;)V

    .line 3352
    sget-object v4, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->b:Ljava/lang/String;

    invoke-static {v14, v4, v10}, Lccsancom/mbridge/msdk/foundation/same/net/g/b;->a(Lccsancom/mbridge/msdk/foundation/same/net/h/d;Ljava/lang/String;Ljava/lang/String;)V

    .line 3353
    sget-object v4, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->c:Ljava/lang/String;

    invoke-static {v14, v4, v9}, Lccsancom/mbridge/msdk/foundation/same/net/g/b;->a(Lccsancom/mbridge/msdk/foundation/same/net/h/d;Ljava/lang/String;Ljava/lang/String;)V

    .line 3354
    const-string v4, "ad_source_id"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v14, v4, v5}, Lccsancom/mbridge/msdk/foundation/same/net/g/b;->a(Lccsancom/mbridge/msdk/foundation/same/net/h/d;Ljava/lang/String;Ljava/lang/String;)V

    .line 3355
    sget-object v4, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a:Ljava/lang/String;

    invoke-static {v14, v4, v11}, Lccsancom/mbridge/msdk/foundation/same/net/g/b;->a(Lccsancom/mbridge/msdk/foundation/same/net/h/d;Ljava/lang/String;Ljava/lang/String;)V

    .line 3356
    const-string v4, "ad_type"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v14, v4, v5}, Lccsancom/mbridge/msdk/foundation/same/net/g/b;->a(Lccsancom/mbridge/msdk/foundation/same/net/h/d;Ljava/lang/String;Ljava/lang/String;)V

    .line 3357
    const-string v4, "offset"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->l:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v4, v3}, Lccsancom/mbridge/msdk/foundation/same/net/g/b;->a(Lccsancom/mbridge/msdk/foundation/same/net/h/d;Ljava/lang/String;Ljava/lang/String;)V

    .line 3359
    nop

    .line 1163
    nop

    .line 1164
    nop

    .line 1169
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->c()Lccsancom/mbridge/msdk/foundation/same/net/g/d;

    move-result-object v3

    invoke-virtual {v3, v2}, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1170
    invoke-static/range {p1 .. p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 1171
    const-string v3, "token"

    invoke-virtual {v14, v3, v2}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    :cond_9
    iget-boolean v3, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->v:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v4, "0"

    if-eqz v3, :cond_c

    .line 1175
    :try_start_1
    iget v3, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->y:I

    sget v5, Lccsancom/mbridge/msdk/foundation/same/a;->n:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v6, "ivrwd"

    if-eq v3, v5, :cond_b

    :try_start_2
    iget v3, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->y:I

    sget v5, Lccsancom/mbridge/msdk/foundation/same/a;->m:I

    if-ne v3, v5, :cond_a

    goto :goto_3

    .line 1178
    :cond_a
    invoke-virtual {v14, v6, v4}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1176
    :cond_b
    :goto_3
    invoke-virtual {v14, v6, v0}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    :cond_c
    :goto_4
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/d/b;->a()Lccsancom/mbridge/msdk/videocommon/d/b;

    move-result-object v3

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v5

    invoke-virtual {v5}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->j:Ljava/lang/String;

    iget-boolean v7, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->v:Z

    invoke-virtual {v3, v5, v6, v7}, Lccsancom/mbridge/msdk/videocommon/d/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Lccsancom/mbridge/msdk/videocommon/d/c;

    move-result-object v3

    .line 1182
    if-eqz v3, :cond_d

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/videocommon/d/c;->j()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 1183
    const-string v5, "u_stid"

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/videocommon/d/c;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v5, v3}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1185
    :cond_d
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/d/b;->a()Lccsancom/mbridge/msdk/videocommon/d/b;

    move-result-object v3

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/videocommon/d/b;->b()Lccsancom/mbridge/msdk/videocommon/d/a;

    move-result-object v3

    .line 1186
    if-eqz v3, :cond_e

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/videocommon/d/a;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 1187
    const-string v5, "r_stid"

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/videocommon/d/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v5, v3}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1189
    :cond_e
    const-string v3, "rw_plus"

    if-eqz p2, :cond_f

    goto :goto_5

    :cond_f
    move-object v0, v4

    :goto_5
    invoke-virtual {v14, v3, v0}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1190
    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->j:Ljava/lang/String;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/u;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1191
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 1192
    const-string v3, "j"

    invoke-virtual {v14, v3, v0}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1194
    :cond_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->J:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1196
    const/16 v19, 0x0

    :try_start_3
    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->i:Lccsanandroid/content/Context;

    const-string v21, "start load offer from server"

    iget-object v3, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->j:Ljava/lang/String;

    iget-boolean v4, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->w:Z

    const-string v24, ""

    const-string v25, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v9, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->J:J

    sub-long v26, v5, v9

    move-object/from16 v20, v0

    move-object/from16 v22, v3

    move/from16 v23, v4

    invoke-static/range {v19 .. v27}, Lccsancom/mbridge/msdk/reward/b/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1199
    goto :goto_6

    .line 1197
    :catch_0
    move-exception v0

    .line 1200
    :goto_6
    :try_start_4
    new-instance v0, Lccsancom/mbridge/msdk/reward/c/b;

    iget-object v3, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->i:Lccsanandroid/content/Context;

    invoke-direct {v0, v3}, Lccsancom/mbridge/msdk/reward/c/b;-><init>(Lccsanandroid/content/Context;)V

    .line 1201
    new-instance v3, Lccsancom/mbridge/msdk/reward/adapter/d$2;

    invoke-direct {v3, v1}, Lccsancom/mbridge/msdk/reward/adapter/d$2;-><init>(Lccsancom/mbridge/msdk/reward/adapter/d;)V

    .line 1268
    invoke-virtual {v3, v2}, Lccsancom/mbridge/msdk/reward/c/c;->a(Ljava/lang/String;)V

    .line 1269
    iget-object v4, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->j:Ljava/lang/String;

    .line 5071
    iput-object v4, v3, Lccsancom/mbridge/msdk/foundation/same/net/f;->d:Ljava/lang/String;

    .line 1270
    iget-object v4, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->k:Ljava/lang/String;

    .line 5075
    iput-object v4, v3, Lccsancom/mbridge/msdk/foundation/same/net/f;->e:Ljava/lang/String;

    .line 1271
    iget-boolean v4, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->v:Z

    if-eqz v4, :cond_11

    const/16 v4, 0x11f

    goto :goto_7

    :cond_11
    const/16 v4, 0x5e

    .line 5079
    :goto_7
    iput v4, v3, Lccsancom/mbridge/msdk/foundation/same/net/f;->f:I

    .line 1272
    new-instance v4, Lccsancom/mbridge/msdk/foundation/same/net/b;

    iget v5, v1, Lccsancom/mbridge/msdk/reward/adapter/d;->n:I

    mul-int/lit16 v5, v5, 0x3e8

    invoke-direct {v4, v5, v8}, Lccsancom/mbridge/msdk/foundation/same/net/b;-><init>(II)V

    .line 1273
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->c()Lccsancom/mbridge/msdk/foundation/same/net/g/d;

    move-result-object v5

    invoke-virtual {v5}, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->b()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-static/range {p1 .. p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 1274
    const/16 v17, 0x1

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->c()Lccsancom/mbridge/msdk/foundation/same/net/g/d;

    move-result-object v5

    invoke-virtual {v5, v2}, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v16, v0

    move-object/from16 v19, v14

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    invoke-virtual/range {v16 .. v21}, Lccsancom/mbridge/msdk/reward/c/b;->a(ILjava/lang/String;Lccsancom/mbridge/msdk/foundation/same/net/h/d;Lccsancom/mbridge/msdk/foundation/same/net/e;Lccsancom/mbridge/msdk/foundation/same/net/l;)V

    goto :goto_8

    .line 1276
    :cond_12
    const/16 v17, 0x1

    move-object/from16 v16, v0

    move-object/from16 v19, v14

    move-object/from16 v20, v4

    move-object/from16 v21, v3

    invoke-virtual/range {v16 .. v21}, Lccsancom/mbridge/msdk/reward/c/b;->a(ILjava/lang/String;Lccsancom/mbridge/msdk/foundation/same/net/h/d;Lccsancom/mbridge/msdk/foundation/same/net/l;Lccsancom/mbridge/msdk/foundation/same/net/e;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 1282
    :goto_8
    goto :goto_9

    .line 1278
    :catch_1
    move-exception v0

    .line 1279
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1280
    const-string v0, "Load exception"

    invoke-direct {v1, v0}, Lccsancom/mbridge/msdk/reward/adapter/d;->c(Ljava/lang/String;)V

    .line 1281
    invoke-direct/range {p0 .. p0}, Lccsancom/mbridge/msdk/reward/adapter/d;->f()V

    .line 1283
    :goto_9
    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/reward/adapter/d;Z)Z
    .locals 0

    .line 82
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->G:Z

    return p1
.end method

.method static synthetic b(Lccsancom/mbridge/msdk/reward/adapter/d;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 82
    iput-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->p:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/util/List;
    .locals 0

    .line 82
    iget-object p0, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->L:Ljava/util/List;

    return-object p0
.end method

.method private b(Ljava/lang/String;Z)V
    .locals 2

    .line 3170
    new-instance v0, Lccsancom/mbridge/msdk/reward/adapter/d$e;

    invoke-direct {v0, p0, p1}, Lccsancom/mbridge/msdk/reward/adapter/d$e;-><init>(Lccsancom/mbridge/msdk/reward/adapter/d;Ljava/lang/String;)V

    .line 3171
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 3173
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->I:Lccsanandroid/os/Handler;

    if-eqz v0, :cond_0

    .line 3174
    new-instance p2, Lccsancom/mbridge/msdk/reward/adapter/d$d;

    invoke-direct {p2, p0, p1}, Lccsancom/mbridge/msdk/reward/adapter/d$d;-><init>(Lccsancom/mbridge/msdk/reward/adapter/d;Ljava/lang/String;)V

    iput-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->F:Lccsancom/mbridge/msdk/reward/adapter/d$d;

    .line 3175
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->I:Lccsanandroid/os/Handler;

    const-wide/32 v0, 0x15f90

    invoke-virtual {p1, p2, v0, v1}, Lccsanandroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 3177
    :cond_0
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(Ljava/lang/String;Z)V

    .line 3179
    :goto_0
    return-void
.end method

.method private b(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)Z
    .locals 1

    .line 3029
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getPlayable_ads_without_video()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 3030
    const/4 p1, 0x1

    return p1

    .line 3032
    :catchall_0
    move-exception p1

    .line 3033
    sget-boolean v0, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 3034
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 3036
    :cond_0
    nop

    .line 3037
    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic b(Lccsancom/mbridge/msdk/reward/adapter/d;Z)Z
    .locals 0

    .line 82
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->H:Z

    return p1
.end method

.method static synthetic c(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/util/List;
    .locals 0

    .line 82
    iget-object p0, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->C:Ljava/util/List;

    return-object p0
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    .line 1292
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->I:Lccsanandroid/os/Handler;

    if-eqz v0, :cond_2

    .line 1293
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    .line 1294
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->I:Lccsanandroid/os/Handler;

    invoke-virtual {p1, v1}, Lccsanandroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1296
    :cond_0
    invoke-static {}, Lccsanandroid/os/Message;->obtain()Lccsanandroid/os/Message;

    move-result-object v0

    .line 1297
    iput v1, v0, Lccsanandroid/os/Message;->what:I

    .line 1298
    iput-object p1, v0, Lccsanandroid/os/Message;->obj:Ljava/lang/Object;

    .line 1299
    const-string v1, "exception"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1300
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->I:Lccsanandroid/os/Handler;

    invoke-virtual {p1, v0}, Lccsanandroid/os/Handler;->sendMessageAtFrontOfQueue(Lccsanandroid/os/Message;)Z

    goto :goto_0

    .line 1302
    :cond_1
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->I:Lccsanandroid/os/Handler;

    invoke-virtual {p1, v0}, Lccsanandroid/os/Handler;->sendMessage(Lccsanandroid/os/Message;)Z

    .line 1306
    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic d(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/lang/String;
    .locals 0

    .line 82
    iget-object p0, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->j:Ljava/lang/String;

    return-object p0
.end method

.method private d()V
    .locals 4

    .line 1395
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/a/a;->a()Lccsancom/mbridge/msdk/videocommon/a/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1397
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object v0

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/b/b;->b(Ljava/lang/String;)Lccsancom/mbridge/msdk/b/a;

    move-result-object v0

    .line 1398
    if-nez v0, :cond_0

    .line 1399
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/b/b;->b()Lccsancom/mbridge/msdk/b/a;

    move-result-object v0

    .line 1401
    :cond_0
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/b/a;->p()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    .line 1402
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/a/a;->a()Lccsancom/mbridge/msdk/videocommon/a/a;

    move-result-object v2

    iget-object v3, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->j:Ljava/lang/String;

    invoke-virtual {v2, v0, v1, v3}, Lccsancom/mbridge/msdk/videocommon/a/a;->a(JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1407
    goto :goto_0

    .line 1403
    :catch_0
    move-exception v0

    .line 1404
    sget-boolean v1, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 1405
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1409
    :cond_1
    :goto_0
    return-void
.end method

.method private e()I
    .locals 3

    .line 2954
    nop

    .line 2956
    nop

    .line 2957
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->j:Ljava/lang/String;

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/tools/x;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2958
    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->j:Ljava/lang/String;

    invoke-static {v1}, Lccsancom/mbridge/msdk/reward/a/a;->a(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 2957
    :cond_0
    const/4 v1, 0x0

    .line 2960
    :goto_0
    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->s:Lccsancom/mbridge/msdk/videocommon/d/c;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/videocommon/d/c;->t()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-le v1, v2, :cond_1

    goto :goto_1

    .line 2963
    :cond_1
    move v0, v1

    goto :goto_2

    .line 2961
    :cond_2
    :goto_1
    nop

    .line 2967
    :goto_2
    goto :goto_3

    .line 2965
    :catch_0
    move-exception v1

    .line 2966
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2968
    :goto_3
    return v0
.end method

.method static synthetic e(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/util/List;
    .locals 0

    .line 82
    iget-object p0, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->M:Ljava/util/List;

    return-object p0
.end method

.method private f()V
    .locals 2

    .line 2973
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->j:Ljava/lang/String;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/x;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2974
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->j:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/reward/a/a;->a(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2978
    :cond_0
    goto :goto_0

    .line 2976
    :catch_0
    move-exception v0

    .line 2977
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2979
    :goto_0
    return-void
.end method

.method static synthetic f(Lccsancom/mbridge/msdk/reward/adapter/d;)Z
    .locals 0

    .line 82
    iget-boolean p0, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->w:Z

    return p0
.end method

.method static synthetic g(Lccsancom/mbridge/msdk/reward/adapter/d;)J
    .locals 2

    .line 82
    iget-wide v0, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->J:J

    return-wide v0
.end method

.method private g()Ljava/lang/String;
    .locals 2

    .line 2982
    const-string v0, ""

    .line 2984
    :try_start_0
    sget-object v1, Lccsancom/mbridge/msdk/reward/a/a;->a:Ljava/lang/String;

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/tools/x;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2985
    sget-object v0, Lccsancom/mbridge/msdk/reward/a/a;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2989
    :cond_0
    goto :goto_0

    .line 2987
    :catch_0
    move-exception v1

    .line 2988
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2991
    :goto_0
    return-object v0
.end method

.method static synthetic h(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsanandroid/content/Context;
    .locals 0

    .line 82
    iget-object p0, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->i:Lccsanandroid/content/Context;

    return-object p0
.end method

.method private h()V
    .locals 2

    .line 3003
    :try_start_0
    sget-object v0, Lccsancom/mbridge/msdk/foundation/same/a/d;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    sget-object v0, Lccsancom/mbridge/msdk/foundation/same/a/d;->a:Ljava/util/Map;

    .line 3004
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 3005
    sget-object v0, Lccsancom/mbridge/msdk/foundation/same/a/d;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3011
    :cond_0
    goto :goto_0

    .line 3007
    :catch_0
    move-exception v0

    .line 3008
    sget-boolean v1, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 3009
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3012
    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic i(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsanandroid/os/Handler;
    .locals 0

    .line 82
    iget-object p0, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->I:Lccsanandroid/os/Handler;

    return-object p0
.end method

.method private i()V
    .locals 2

    .line 3017
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->i:Lccsanandroid/content/Context;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/db/f;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/db/f;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/db/i;->a(Lccsancom/mbridge/msdk/foundation/db/e;)Lccsancom/mbridge/msdk/foundation/db/i;

    move-result-object v0

    .line 3018
    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/db/i;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3023
    goto :goto_0

    .line 3019
    :catch_0
    move-exception v0

    .line 3020
    sget-boolean v1, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 3021
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3024
    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic j(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 82
    iget-object p0, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->t:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method static synthetic k(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;
    .locals 0

    .line 82
    iget-object p0, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->B:Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;

    return-object p0
.end method

.method static synthetic l(Lccsancom/mbridge/msdk/reward/adapter/d;)Z
    .locals 0

    .line 82
    iget-boolean p0, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->D:Z

    return p0
.end method

.method static synthetic m(Lccsancom/mbridge/msdk/reward/adapter/d;)Z
    .locals 0

    .line 82
    iget-boolean p0, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->v:Z

    return p0
.end method

.method static synthetic n(Lccsancom/mbridge/msdk/reward/adapter/d;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lccsancom/mbridge/msdk/reward/adapter/d;->f()V

    return-void
.end method

.method static synthetic o(Lccsancom/mbridge/msdk/reward/adapter/d;)I
    .locals 0

    .line 82
    iget p0, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->u:I

    return p0
.end method

.method static synthetic p(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsancom/mbridge/msdk/videocommon/d/c;
    .locals 0

    .line 82
    iget-object p0, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->s:Lccsancom/mbridge/msdk/videocommon/d/c;

    return-object p0
.end method

.method static synthetic q(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/lang/String;
    .locals 0

    .line 82
    iget-object p0, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->k:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic r(Lccsancom/mbridge/msdk/reward/adapter/d;)Z
    .locals 0

    .line 82
    iget-boolean p0, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->H:Z

    return p0
.end method

.method static synthetic s(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsancom/mbridge/msdk/reward/adapter/d$d;
    .locals 0

    .line 82
    iget-object p0, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->F:Lccsancom/mbridge/msdk/reward/adapter/d$d;

    return-object p0
.end method

.method static synthetic t(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/lang/String;
    .locals 0

    .line 82
    iget-object p0, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->p:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic u(Lccsancom/mbridge/msdk/reward/adapter/d;)Z
    .locals 0

    .line 82
    iget-boolean p0, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->G:Z

    return p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 183
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Z)Ljava/lang/String;
    .locals 1

    .line 141
    if-eqz p1, :cond_1

    .line 142
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->b:Ljava/lang/String;

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 143
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/c;->getInstance()Lccsancom/mbridge/msdk/videocommon/download/c;

    move-result-object p1

    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/videocommon/download/c;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 144
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 145
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 146
    if-eqz p1, :cond_0

    .line 147
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->b:Ljava/lang/String;

    .line 151
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->b:Ljava/lang/String;

    return-object p1

    .line 153
    :cond_1
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->a:Ljava/lang/String;

    return-object p1
.end method

.method public final a(I)V
    .locals 0

    .line 179
    iput p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->u:I

    .line 180
    return-void
.end method

.method public final a(III)V
    .locals 0

    .line 3090
    iput p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->y:I

    .line 3091
    iput p2, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->z:I

    .line 3092
    iput p3, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->A:I

    .line 3093
    return-void
.end method

.method public final a(IIZ)V
    .locals 6

    .line 1096
    iget-boolean v5, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->D:Z

    const-string v4, ""

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(IIZLjava/lang/String;Z)V

    .line 1097
    return-void
.end method

.method public final a(IIZLjava/lang/String;Z)V
    .locals 0

    .line 1100
    iput p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->m:I

    .line 1101
    iput p2, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->n:I

    .line 1102
    iput-boolean p3, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->o:Z

    .line 1103
    iput-boolean p5, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->D:Z

    .line 1105
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->C:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 1106
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 1109
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->L:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 1110
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 1113
    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->d:Z

    .line 1114
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->e:Z

    .line 1115
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->f:Z

    .line 1116
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->h:Z

    .line 1117
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->g:Z

    .line 1119
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->i:Lccsanandroid/content/Context;

    if-nez p1, :cond_2

    .line 1120
    const-string p1, "Context is null"

    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/reward/adapter/d;->c(Ljava/lang/String;)V

    .line 1121
    return-void

    .line 1123
    :cond_2
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->j:Ljava/lang/String;

    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/tools/x;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1124
    const-string p1, "UnitId is null"

    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/reward/adapter/d;->c(Ljava/lang/String;)V

    .line 1125
    return-void

    .line 1127
    :cond_3
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->s:Lccsancom/mbridge/msdk/videocommon/d/c;

    if-nez p1, :cond_4

    .line 1128
    const-string p1, "RewardUnitSetting is null"

    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/reward/adapter/d;->c(Ljava/lang/String;)V

    .line 1129
    return-void

    .line 1132
    :cond_4
    invoke-direct {p0}, Lccsancom/mbridge/msdk/reward/adapter/d;->h()V

    .line 1133
    invoke-direct {p0}, Lccsancom/mbridge/msdk/reward/adapter/d;->i()V

    .line 1134
    invoke-direct {p0}, Lccsancom/mbridge/msdk/reward/adapter/d;->d()V

    .line 1135
    invoke-direct {p0, p4, p5}, Lccsancom/mbridge/msdk/reward/adapter/d;->b(Ljava/lang/String;Z)V

    .line 1136
    return-void
.end method

.method public final a(Lccsancom/mbridge/msdk/reward/adapter/b;)V
    .locals 0

    .line 1465
    iput-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->r:Lccsancom/mbridge/msdk/reward/adapter/b;

    .line 1466
    return-void
.end method

.method public final a(Lccsancom/mbridge/msdk/video/bt/module/b/h;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 1040
    :try_start_0
    iput-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->q:Lccsancom/mbridge/msdk/video/bt/module/b/h;

    .line 1041
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->i:Lccsanandroid/content/Context;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->j:Ljava/lang/String;

    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/tools/x;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_1

    .line 1047
    :cond_0
    new-instance p1, Lccsanandroid/content/Intent;

    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->i:Lccsanandroid/content/Context;

    const-class v1, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;

    invoke-direct {p1, v0, v1}, Lccsanandroid/content/Intent;-><init>(Lccsanandroid/content/Context;Ljava/lang/Class;)V

    .line 1048
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Lccsanandroid/content/Intent;->addFlags(I)Lccsanandroid/content/Intent;

    .line 1049
    sget-object v0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->INTENT_UNITID:Ljava/lang/String;

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 1050
    sget-object v0, Lccsancom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->k:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 1051
    sget-object v0, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->INTENT_REWARD:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 1052
    sget-object p2, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->INTENT_MUTE:Ljava/lang/String;

    invoke-virtual {p1, p2, p4}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;I)Lccsanandroid/content/Intent;

    .line 1053
    sget-object p2, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->INTENT_ISIV:Ljava/lang/String;

    iget-boolean p4, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->v:Z

    invoke-virtual {p1, p2, p4}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Z)Lccsanandroid/content/Intent;

    .line 1054
    sget-object p2, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->INTENT_ISBID:Ljava/lang/String;

    iget-boolean p4, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->w:Z

    invoke-virtual {p1, p2, p4}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Z)Lccsanandroid/content/Intent;

    .line 1055
    sget-object p2, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->INTENT_EXTRADATA:Ljava/lang/String;

    invoke-virtual {p1, p2, p5}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 1056
    nop

    .line 1057
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/c;->getInstance()Lccsancom/mbridge/msdk/videocommon/download/c;

    move-result-object p2

    iget-object p4, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->j:Ljava/lang/String;

    invoke-virtual {p2, p4}, Lccsancom/mbridge/msdk/videocommon/download/c;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 1058
    const/4 p4, 0x0

    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p5

    if-lez p5, :cond_3

    .line 1059
    invoke-interface {p2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 1060
    if-eqz p2, :cond_1

    .line 1061
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object p5

    iput-object p5, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->b:Ljava/lang/String;

    .line 1063
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMof_template_url()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 1064
    const/4 p2, 0x1

    const/4 p4, 0x1

    .line 1066
    :cond_2
    goto :goto_0

    .line 1067
    :cond_3
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->q:Lccsancom/mbridge/msdk/video/bt/module/b/h;

    if-eqz p2, :cond_4

    .line 1068
    const-string p1, "load failed"

    invoke-interface {p2, p1}, Lccsancom/mbridge/msdk/video/bt/module/b/h;->a(Ljava/lang/String;)V

    .line 1069
    return-void

    .line 1073
    :cond_4
    :goto_0
    sget-object p2, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->INTENT_ISBIG_OFFER:Ljava/lang/String;

    invoke-virtual {p1, p2, p4}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Z)Lccsanandroid/content/Intent;

    .line 1074
    iget-boolean p2, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->v:Z

    if-eqz p2, :cond_5

    .line 1075
    sget-object p2, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->INTENT_IVREWARD_MODETYPE:Ljava/lang/String;

    iget p4, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->y:I

    invoke-virtual {p1, p2, p4}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;I)Lccsanandroid/content/Intent;

    .line 1076
    sget-object p2, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->INTENT_IVREWARD_VALUETYPE:Ljava/lang/String;

    iget p4, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->z:I

    invoke-virtual {p1, p2, p4}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;I)Lccsanandroid/content/Intent;

    .line 1077
    sget-object p2, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->INTENT_IVREWARD_VALUE:Ljava/lang/String;

    iget p4, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->A:I

    invoke-virtual {p1, p2, p4}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;I)Lccsanandroid/content/Intent;

    .line 1080
    :cond_5
    invoke-static {p3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 1081
    sget-object p2, Lccsancom/mbridge/msdk/reward/player/MBRewardVideoActivity;->INTENT_USERID:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 1083
    :cond_6
    invoke-static {}, Lccsancom/mbridge/msdk/reward/adapter/RewardUnitCacheManager;->getInstance()Lccsancom/mbridge/msdk/reward/adapter/RewardUnitCacheManager;

    move-result-object p2

    iget-object p3, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->k:Ljava/lang/String;

    iget-object p4, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->j:Ljava/lang/String;

    iget-object p5, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->s:Lccsancom/mbridge/msdk/videocommon/d/c;

    invoke-virtual {p2, p3, p4, p5}, Lccsancom/mbridge/msdk/reward/adapter/RewardUnitCacheManager;->add(Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/videocommon/d/c;)V

    .line 1084
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->i:Lccsanandroid/content/Context;

    invoke-virtual {p2, p1}, Lccsanandroid/content/Context;->startActivity(Lccsanandroid/content/Intent;)V

    .line 1091
    goto :goto_2

    .line 1042
    :cond_7
    :goto_1
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->q:Lccsancom/mbridge/msdk/video/bt/module/b/h;

    if-eqz p1, :cond_8

    .line 1043
    const-string p2, "context or unitid is null"

    invoke-interface {p1, p2}, Lccsancom/mbridge/msdk/video/bt/module/b/h;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1045
    :cond_8
    return-void

    .line 1086
    :catch_0
    move-exception p1

    .line 1087
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1088
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->q:Lccsancom/mbridge/msdk/video/bt/module/b/h;

    if-eqz p2, :cond_9

    .line 1089
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "show failed, exception is "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lccsancom/mbridge/msdk/video/bt/module/b/h;->a(Ljava/lang/String;)V

    .line 1093
    :cond_9
    :goto_2
    return-void
.end method

.method public final a(Lccsancom/mbridge/msdk/videocommon/d/c;)V
    .locals 2

    .line 949
    :try_start_0
    iput-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->s:Lccsancom/mbridge/msdk/videocommon/d/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 952
    goto :goto_0

    .line 950
    :catchall_0
    move-exception p1

    .line 951
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RewardMVVideoAdapter"

    invoke-static {v1, v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 953
    :goto_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->x:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;)V"
        }
    .end annotation

    .line 3056
    iput-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->M:Ljava/util/List;

    .line 3057
    return-void
.end method

.method public final a(Ljava/util/List;ZI)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;ZI)Z"
        }
    .end annotation

    .line 965
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 966
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 967
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/c;->getInstance()Lccsancom/mbridge/msdk/videocommon/download/c;

    move-result-object v2

    const/16 v3, 0x5e

    iget-object v4, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->j:Ljava/lang/String;

    iget-boolean v5, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->w:Z

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    move v7, p2

    move v8, p3

    move-object v9, p1

    invoke-virtual/range {v2 .. v9}, Lccsancom/mbridge/msdk/videocommon/download/c;->a(ILjava/lang/String;ZIZILjava/util/List;)Z

    move-result p1

    .line 968
    if-eqz p1, :cond_4

    .line 969
    const-string p1, "_"

    const/4 p3, 0x1

    if-eqz p2, :cond_1

    .line 970
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMof_template_url()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lccsancom/mbridge/msdk/foundation/tools/u;->f(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 971
    return p3

    .line 973
    :cond_0
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/i;->a()Lccsancom/mbridge/msdk/videocommon/download/i;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMof_template_url()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lccsancom/mbridge/msdk/videocommon/download/i;->c(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 974
    return p3

    .line 977
    :cond_1
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMof_template_url()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lccsancom/mbridge/msdk/foundation/tools/u;->f(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 978
    return p3

    .line 980
    :cond_2
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object p2

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;->d()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 981
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/i;->a()Lccsancom/mbridge/msdk/videocommon/download/i;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lccsancom/mbridge/msdk/videocommon/download/i;->c(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 982
    return p3

    .line 985
    :cond_3
    return p3

    .line 990
    :cond_4
    return v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 5

    .line 3096
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->s:Lccsancom/mbridge/msdk/videocommon/d/c;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3097
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->s:Lccsancom/mbridge/msdk/videocommon/d/c;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/videocommon/d/c;->b()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    .line 3098
    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->M:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 3099
    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->M:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getTimestamp()J

    move-result-wide v1

    .line 3100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    int-to-long v0, v0

    cmp-long v2, v3, v0

    if-gez v2, :cond_0

    .line 3101
    const-string p1, "hit ltorwc"

    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/reward/adapter/d;->c(Ljava/lang/String;)V

    .line 3102
    return-void

    .line 3106
    :cond_0
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->D:Z

    invoke-direct {p0, p1, v0}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(Ljava/lang/String;Z)V

    .line 3107
    return-void
.end method

.method public final b(Z)V
    .locals 0

    .line 157
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->v:Z

    .line 158
    return-void
.end method

.method public final b()Z
    .locals 8

    .line 997
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/a/a;->a()Lccsancom/mbridge/msdk/videocommon/a/a;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->j:Ljava/lang/String;

    iget-boolean v2, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->w:Z

    iget-object v3, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->x:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4, v2, v3}, Lccsancom/mbridge/msdk/videocommon/a/a;->a(Ljava/lang/String;IZLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 998
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 999
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 1000
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/a/a;->a()Lccsancom/mbridge/msdk/videocommon/a/a;

    move-result-object v3

    iget-object v5, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->j:Ljava/lang/String;

    iget-boolean v6, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->w:Z

    iget-object v7, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->x:Ljava/lang/String;

    invoke-virtual {v3, v5, v4, v6, v7}, Lccsancom/mbridge/msdk/videocommon/a/a;->b(Ljava/lang/String;IZLjava/lang/String;)I

    move-result v3

    .line 1002
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMof_template_url()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1003
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getNscpt()I

    move-result v5

    if-ne v5, v4, :cond_0

    .line 1004
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v5, v3, :cond_0

    .line 1005
    return v1

    .line 1009
    :cond_0
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMof_template_url()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/2addr v1, v4

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getNscpt()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(Ljava/util/List;ZI)Z

    move-result v0

    return v0

    .line 1011
    :cond_1
    const-string v0, "RewardVideoController"

    const-string v2, "\u6570\u636e\u5e93\u53ef\u7528\u7684\u7f13\u5b58\u6570\u636e\u6761\u6570\uff1a0"

    invoke-static {v0, v2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    return v1
.end method

.method public final c(Z)V
    .locals 0

    .line 161
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->w:Z

    .line 162
    return-void
.end method

.method public final c()Z
    .locals 8

    .line 1019
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/a/a;->a()Lccsancom/mbridge/msdk/videocommon/a/a;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->j:Ljava/lang/String;

    iget-boolean v2, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->w:Z

    iget-object v3, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->x:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4, v2, v3}, Lccsancom/mbridge/msdk/videocommon/a/a;->c(Ljava/lang/String;IZLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1020
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 1021
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 1022
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/a/a;->a()Lccsancom/mbridge/msdk/videocommon/a/a;

    move-result-object v3

    iget-object v5, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->j:Ljava/lang/String;

    iget-boolean v6, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->w:Z

    iget-object v7, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->x:Ljava/lang/String;

    invoke-virtual {v3, v5, v4, v6, v7}, Lccsancom/mbridge/msdk/videocommon/a/a;->b(Ljava/lang/String;IZLjava/lang/String;)I

    move-result v3

    .line 1024
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMof_template_url()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1025
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getNscpt()I

    move-result v5

    if-ne v5, v4, :cond_0

    .line 1026
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v5, v3, :cond_0

    .line 1027
    return v1

    .line 1031
    :cond_0
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMof_template_url()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/2addr v1, v4

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getNscpt()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(Ljava/util/List;ZI)Z

    move-result v0

    return v0

    .line 1033
    :cond_1
    const-string v0, "test_isReay_db"

    const-string v2, "\u6570\u636e\u5e93\u53ef\u7528\u7684\u7f13\u5b58\u6570\u636e\u6761\u6570\uff1a0"

    invoke-static {v0, v2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    return v1
.end method

.method public final d(Z)V
    .locals 2

    .line 1934
    if-eqz p1, :cond_0

    goto :goto_0

    .line 1936
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->C:Ljava/util/List;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 1937
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/a/a;->a()Lccsancom/mbridge/msdk/videocommon/a/a;

    move-result-object p1

    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->j:Ljava/lang/String;

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->C:Ljava/util/List;

    invoke-virtual {p1, v0, v1}, Lccsancom/mbridge/msdk/videocommon/a/a;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 1940
    :cond_1
    :goto_0
    return-void
.end method

.method public final e(Z)V
    .locals 7

    .line 1943
    const-string v0, "load_timeout"

    const-string v1, "_"

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    .line 1944
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->M:Ljava/util/List;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 1945
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->M:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 1946
    if-eqz v3, :cond_0

    .line 1947
    invoke-virtual {v3, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setLoadTimeoutState(I)V

    .line 1948
    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v4

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1949
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/i;->a()Lccsancom/mbridge/msdk/videocommon/download/i;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->j:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v3

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3, v2}, Lccsancom/mbridge/msdk/videocommon/download/i;->d(Ljava/lang/String;Z)V

    .line 1952
    :cond_0
    goto :goto_0

    .line 1953
    :cond_1
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/a/a;->a()Lccsancom/mbridge/msdk/videocommon/a/a;

    move-result-object p1

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->j:Ljava/lang/String;

    iget-object v3, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->M:Ljava/util/List;

    invoke-virtual {p1, v1, v3, v0, v2}, Lccsancom/mbridge/msdk/videocommon/a/a;->a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;I)V

    goto :goto_2

    .line 1956
    :cond_2
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->C:Ljava/util/List;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 1957
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->C:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 1958
    if-eqz v3, :cond_3

    .line 1959
    invoke-virtual {v3, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setLoadTimeoutState(I)V

    .line 1960
    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v4

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1961
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/i;->a()Lccsancom/mbridge/msdk/videocommon/download/i;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->j:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v3

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3, v2}, Lccsancom/mbridge/msdk/videocommon/download/i;->d(Ljava/lang/String;Z)V

    .line 1964
    :cond_3
    goto :goto_1

    .line 1965
    :cond_4
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/a/a;->a()Lccsancom/mbridge/msdk/videocommon/a/a;

    move-result-object p1

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->j:Ljava/lang/String;

    iget-object v3, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->C:Ljava/util/List;

    invoke-virtual {p1, v1, v3, v0, v2}, Lccsancom/mbridge/msdk/videocommon/a/a;->a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;I)V

    .line 1968
    :cond_5
    :goto_2
    return-void
.end method

.method public final f(Z)Z
    .locals 7

    .line 1971
    const-string v0, "load_timeout"

    const-string v1, "_"

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    .line 1972
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->M:Ljava/util/List;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 1973
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->M:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 1974
    if-eqz v3, :cond_0

    .line 1975
    invoke-virtual {v3, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setLoadTimeoutState(I)V

    .line 1976
    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v4

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1977
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/i;->a()Lccsancom/mbridge/msdk/videocommon/download/i;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->j:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v3

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3, v2}, Lccsancom/mbridge/msdk/videocommon/download/i;->d(Ljava/lang/String;Z)V

    .line 1980
    :cond_0
    goto :goto_0

    .line 1981
    :cond_1
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/a/a;->a()Lccsancom/mbridge/msdk/videocommon/a/a;

    move-result-object p1

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->j:Ljava/lang/String;

    iget-object v3, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->M:Ljava/util/List;

    invoke-virtual {p1, v1, v3, v0, v2}, Lccsancom/mbridge/msdk/videocommon/a/a;->a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;I)V

    .line 1982
    return v2

    .line 1985
    :cond_2
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->C:Ljava/util/List;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 1986
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->C:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 1987
    if-eqz v3, :cond_3

    .line 1988
    invoke-virtual {v3, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setLoadTimeoutState(I)V

    .line 1989
    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v4

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1990
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/i;->a()Lccsancom/mbridge/msdk/videocommon/download/i;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->j:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v3

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3, v2}, Lccsancom/mbridge/msdk/videocommon/download/i;->d(Ljava/lang/String;Z)V

    .line 1993
    :cond_3
    goto :goto_1

    .line 1994
    :cond_4
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/a/a;->a()Lccsancom/mbridge/msdk/videocommon/a/a;

    move-result-object p1

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->j:Ljava/lang/String;

    iget-object v3, p0, Lccsancom/mbridge/msdk/reward/adapter/d;->C:Ljava/util/List;

    invoke-virtual {p1, v1, v3, v0, v2}, Lccsancom/mbridge/msdk/videocommon/a/a;->a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;I)V

    .line 1995
    return v2

    .line 1998
    :cond_5
    const/4 p1, 0x0

    return p1
.end method
