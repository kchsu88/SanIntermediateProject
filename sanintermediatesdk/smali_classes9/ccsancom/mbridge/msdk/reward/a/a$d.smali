.class final Lccsancom/mbridge/msdk/reward/a/a$d;
.super Ljava/lang/Object;
.source "RewardVideoController.java"

# interfaces
.implements Lccsancom/mbridge/msdk/video/bt/module/b/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/reward/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/reward/a/a;

.field private b:Lccsancom/mbridge/msdk/reward/a/a;

.field private c:I

.field private d:Lccsanandroid/os/Handler;

.field private e:I


# direct methods
.method private constructor <init>(Lccsancom/mbridge/msdk/reward/a/a;Lccsancom/mbridge/msdk/reward/a/a;ILccsanandroid/os/Handler;)V
    .locals 0

    .line 486
    iput-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$d;->a:Lccsancom/mbridge/msdk/reward/a/a;

    .line 487
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 484
    const/4 p1, 0x0

    iput p1, p0, Lccsancom/mbridge/msdk/reward/a/a$d;->e:I

    .line 488
    iput-object p2, p0, Lccsancom/mbridge/msdk/reward/a/a$d;->b:Lccsancom/mbridge/msdk/reward/a/a;

    .line 489
    iput p3, p0, Lccsancom/mbridge/msdk/reward/a/a$d;->c:I

    .line 490
    iput-object p4, p0, Lccsancom/mbridge/msdk/reward/a/a$d;->d:Lccsanandroid/os/Handler;

    .line 491
    return-void
.end method

.method synthetic constructor <init>(Lccsancom/mbridge/msdk/reward/a/a;Lccsancom/mbridge/msdk/reward/a/a;ILccsanandroid/os/Handler;Lccsancom/mbridge/msdk/reward/a/a$1;)V
    .locals 0

    .line 479
    invoke-direct {p0, p1, p2, p3, p4}, Lccsancom/mbridge/msdk/reward/a/a$d;-><init>(Lccsancom/mbridge/msdk/reward/a/a;Lccsancom/mbridge/msdk/reward/a/a;ILccsanandroid/os/Handler;)V

    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/reward/a/a$d;)Lccsancom/mbridge/msdk/reward/a/a;
    .locals 0

    .line 479
    iget-object p0, p0, Lccsancom/mbridge/msdk/reward/a/a$d;->b:Lccsancom/mbridge/msdk/reward/a/a;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 501
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a$d;->b:Lccsancom/mbridge/msdk/reward/a/a;

    if-eqz v0, :cond_2

    .line 502
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/reward/a/a;->a(Lccsancom/mbridge/msdk/reward/a/a;Z)Z

    .line 503
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a$d;->b:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/a/a;->c(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/reward/adapter/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a$d;->b:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/a/a;->c(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/reward/adapter/d;

    move-result-object v0

    const-string v1, ""

    iput-object v1, v0, Lccsancom/mbridge/msdk/reward/adapter/d;->b:Ljava/lang/String;

    .line 506
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a$d;->b:Lccsancom/mbridge/msdk/reward/a/a;

    iget v1, p0, Lccsancom/mbridge/msdk/reward/a/a$d;->c:I

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/reward/a/a;->b(I)V

    .line 508
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a$d;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/a/a;->i(Lccsancom/mbridge/msdk/reward/a/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 509
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a$d;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/a/a;->j(Lccsancom/mbridge/msdk/reward/a/a;)V

    .line 511
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a$d;->b:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/a/a;->h(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/videocommon/listener/InterVideoOutListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 512
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a$d;->b:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/a/a;->h(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/videocommon/listener/InterVideoOutListener;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/a/a$d;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v1}, Lccsancom/mbridge/msdk/reward/a/a;->k(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/out/MBridgeIds;

    move-result-object v1

    invoke-interface {v0, v1}, Lccsancom/mbridge/msdk/videocommon/listener/InterVideoOutListener;->onAdShow(Lccsancom/mbridge/msdk/out/MBridgeIds;)V

    .line 513
    const/4 v0, 0x2

    iput v0, p0, Lccsancom/mbridge/msdk/reward/a/a$d;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 520
    :cond_2
    goto :goto_0

    .line 516
    :catchall_0
    move-exception v0

    .line 517
    sget-boolean v1, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 518
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 521
    :cond_3
    :goto_0
    return-void
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 668
    iput p1, p0, Lccsancom/mbridge/msdk/reward/a/a$d;->e:I

    .line 669
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$d;->b:Lccsancom/mbridge/msdk/reward/a/a;

    if-eqz p1, :cond_3

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/a/a;->i(Lccsancom/mbridge/msdk/reward/a/a;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$d;->b:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/a/a;->p(Lccsancom/mbridge/msdk/reward/a/a;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$d;->b:Lccsancom/mbridge/msdk/reward/a/a;

    .line 670
    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/a/a;->l(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/videocommon/d/c;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$d;->b:Lccsancom/mbridge/msdk/reward/a/a;

    .line 671
    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/a/a;->l(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/videocommon/d/c;

    move-result-object p1

    iget p2, p0, Lccsancom/mbridge/msdk/reward/a/a$d;->e:I

    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/videocommon/d/c;->s(I)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$d;->b:Lccsancom/mbridge/msdk/reward/a/a;

    .line 672
    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/a/a;->d(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/reward/a/a$c;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$d;->b:Lccsancom/mbridge/msdk/reward/a/a;

    .line 673
    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/a/a;->d(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/reward/a/a$c;

    move-result-object p1

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/a/a$c;->a(Lccsancom/mbridge/msdk/reward/a/a$c;)I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_3

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$d;->b:Lccsancom/mbridge/msdk/reward/a/a;

    .line 674
    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/a/a;->d(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/reward/a/a$c;

    move-result-object p1

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/a/a$c;->a(Lccsancom/mbridge/msdk/reward/a/a$c;)I

    move-result p1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_3

    .line 676
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$d;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/a/a;->n(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/util/ArrayList;

    move-result-object p1

    iget p2, p0, Lccsancom/mbridge/msdk/reward/a/a$d;->e:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 677
    return-void

    .line 679
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$d;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/a/a;->n(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/util/ArrayList;

    move-result-object p1

    iget p2, p0, Lccsancom/mbridge/msdk/reward/a/a$d;->e:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 681
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$d;->b:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/a/a;->l(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/videocommon/d/c;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/videocommon/d/c;->A()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    .line 682
    iget p2, p0, Lccsancom/mbridge/msdk/reward/a/a$d;->e:I

    const/4 p3, 0x4

    if-ne p2, p3, :cond_1

    .line 683
    const/16 p1, 0xbb8

    .line 685
    :cond_1
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/a/a$d;->d:Lccsanandroid/os/Handler;

    if-eqz p2, :cond_2

    .line 686
    const p3, 0xf4629

    invoke-virtual {p2, p3}, Lccsanandroid/os/Handler;->removeMessages(I)V

    .line 687
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/a/a$d;->d:Lccsanandroid/os/Handler;

    int-to-long v0, p1

    invoke-virtual {p2, p3, v0, v1}, Lccsanandroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 689
    :cond_2
    new-instance p2, Lccsanandroid/os/Handler;

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    .line 690
    new-instance p3, Lccsancom/mbridge/msdk/reward/a/a$d$1;

    invoke-direct {p3, p0}, Lccsancom/mbridge/msdk/reward/a/a$d$1;-><init>(Lccsancom/mbridge/msdk/reward/a/a$d;)V

    int-to-long v0, p1

    invoke-virtual {p2, p3, v0, v1}, Lccsanandroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 700
    :cond_3
    :goto_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 11

    .line 550
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/a/a$d;->b:Lccsancom/mbridge/msdk/reward/a/a;

    if-eqz v1, :cond_3

    .line 552
    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/a/a$d;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v1}, Lccsancom/mbridge/msdk/reward/a/a;->i(Lccsancom/mbridge/msdk/reward/a/a;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 553
    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/a/a$d;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v1}, Lccsancom/mbridge/msdk/reward/a/a;->j(Lccsancom/mbridge/msdk/reward/a/a;)V

    .line 555
    :cond_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/a/a$d;->b:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/reward/a/a;->a(Lccsancom/mbridge/msdk/reward/a/a;Z)Z

    .line 556
    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/a/a$d;->b:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v1}, Lccsancom/mbridge/msdk/reward/a/a;->h(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/videocommon/listener/InterVideoOutListener;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v1, :cond_3

    .line 559
    :try_start_1
    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/a/a$d;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v1}, Lccsancom/mbridge/msdk/reward/a/a;->a(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/a/a$d;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v1}, Lccsancom/mbridge/msdk/reward/a/a;->a(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 560
    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/a/a$d;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v1}, Lccsancom/mbridge/msdk/reward/a/a;->a(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "show failed: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/a/a$d;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v1}, Lccsancom/mbridge/msdk/reward/a/a;->g(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/a/a$d;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v1}, Lccsancom/mbridge/msdk/reward/a/a;->i(Lccsancom/mbridge/msdk/reward/a/a;)Z

    move-result v6

    const-string v7, ""

    const-string v8, ""

    const-wide/16 v9, 0x0

    invoke-static/range {v2 .. v10}, Lccsancom/mbridge/msdk/reward/b/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 564
    :cond_1
    goto :goto_0

    .line 562
    :catch_0
    move-exception v1

    .line 565
    :goto_0
    :try_start_2
    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/a/a$d;->b:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v1}, Lccsancom/mbridge/msdk/reward/a/a;->h(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/videocommon/listener/InterVideoOutListener;

    move-result-object v1

    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/a/a$d;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/a/a;->k(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/out/MBridgeIds;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lccsancom/mbridge/msdk/videocommon/listener/InterVideoOutListener;->onShowFail(Lccsancom/mbridge/msdk/out/MBridgeIds;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 570
    goto :goto_1

    .line 566
    :catch_1
    move-exception p1

    .line 567
    :try_start_3
    sget-boolean v1, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 568
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 571
    :cond_2
    :goto_1
    const/4 p1, 0x4

    iput p1, p0, Lccsancom/mbridge/msdk/reward/a/a$d;->e:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 579
    :cond_3
    goto :goto_2

    .line 574
    :catch_2
    move-exception p1

    .line 575
    iput v0, p0, Lccsancom/mbridge/msdk/reward/a/a$d;->e:I

    .line 576
    sget-boolean v0, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 577
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 580
    :cond_4
    :goto_2
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 609
    :try_start_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$d;->b:Lccsancom/mbridge/msdk/reward/a/a;

    if-eqz p1, :cond_1

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/a/a;->h(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/videocommon/listener/InterVideoOutListener;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p1, :cond_1

    .line 611
    :try_start_1
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$d;->b:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/a/a;->h(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/videocommon/listener/InterVideoOutListener;

    move-result-object p1

    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/a/a$d;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {p2}, Lccsancom/mbridge/msdk/reward/a/a;->k(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/out/MBridgeIds;

    move-result-object p2

    invoke-interface {p1, p2}, Lccsancom/mbridge/msdk/videocommon/listener/InterVideoOutListener;->onVideoComplete(Lccsancom/mbridge/msdk/out/MBridgeIds;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 616
    goto :goto_0

    .line 612
    :catch_0
    move-exception p1

    .line 613
    :try_start_2
    sget-boolean p2, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz p2, :cond_0

    .line 614
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 617
    :cond_0
    :goto_0
    const/4 p1, 0x5

    iput p1, p0, Lccsancom/mbridge/msdk/reward/a/a$d;->e:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 623
    :cond_1
    goto :goto_1

    .line 619
    :catch_1
    move-exception p1

    .line 620
    sget-boolean p2, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz p2, :cond_2

    .line 621
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 624
    :cond_2
    :goto_1
    return-void
.end method

.method public final a(ZI)V
    .locals 1

    .line 629
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a$d;->b:Lccsancom/mbridge/msdk/reward/a/a;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/a/a;->h(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/videocommon/listener/InterVideoOutListener;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_0

    .line 631
    :try_start_1
    new-instance v0, Lccsancom/mbridge/msdk/out/RewardInfo;

    invoke-direct {v0, p1, p2}, Lccsancom/mbridge/msdk/out/RewardInfo;-><init>(ZI)V

    .line 632
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$d;->b:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/a/a;->h(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/videocommon/listener/InterVideoOutListener;

    move-result-object p1

    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/a/a$d;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {p2}, Lccsancom/mbridge/msdk/reward/a/a;->k(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/out/MBridgeIds;

    move-result-object p2

    invoke-interface {p1, p2, v0}, Lccsancom/mbridge/msdk/videocommon/listener/InterVideoOutListener;->onAdCloseWithIVReward(Lccsancom/mbridge/msdk/out/MBridgeIds;Lccsancom/mbridge/msdk/out/RewardInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 637
    goto :goto_0

    .line 633
    :catch_0
    move-exception p1

    .line 634
    :try_start_2
    sget-boolean p2, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz p2, :cond_0

    .line 635
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 643
    :cond_0
    :goto_0
    goto :goto_1

    .line 639
    :catch_1
    move-exception p1

    .line 640
    sget-boolean p2, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz p2, :cond_1

    .line 641
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 644
    :cond_1
    :goto_1
    return-void
.end method

.method public final a(ZLccsancom/mbridge/msdk/videocommon/b/c;)V
    .locals 2

    .line 526
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a$d;->b:Lccsancom/mbridge/msdk/reward/a/a;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/a/a;->h(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/videocommon/listener/InterVideoOutListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 527
    if-nez p2, :cond_0

    .line 528
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/a/a$d;->b:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {p2}, Lccsancom/mbridge/msdk/reward/a/a;->o(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lccsancom/mbridge/msdk/videocommon/b/c;->b(Ljava/lang/String;)Lccsancom/mbridge/msdk/videocommon/b/c;

    move-result-object p2

    .line 530
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a$d;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/a/a;->i(Lccsancom/mbridge/msdk/reward/a/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 531
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a$d;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/a/a;->j(Lccsancom/mbridge/msdk/reward/a/a;)V

    .line 532
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a$d;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/reward/a/a;->b()V

    .line 534
    :cond_1
    new-instance v0, Lccsancom/mbridge/msdk/out/RewardInfo;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/videocommon/b/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/videocommon/b/c;->b()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, v1, p2}, Lccsancom/mbridge/msdk/out/RewardInfo;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    .line 535
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$d;->b:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/a/a;->h(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/videocommon/listener/InterVideoOutListener;

    move-result-object p1

    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/a/a$d;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {p2}, Lccsancom/mbridge/msdk/reward/a/a;->k(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/out/MBridgeIds;

    move-result-object p2

    invoke-interface {p1, p2, v0}, Lccsancom/mbridge/msdk/videocommon/listener/InterVideoOutListener;->onAdClose(Lccsancom/mbridge/msdk/out/MBridgeIds;Lccsancom/mbridge/msdk/out/RewardInfo;)V

    .line 536
    const/4 p1, 0x7

    iput p1, p0, Lccsancom/mbridge/msdk/reward/a/a$d;->e:I

    .line 537
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$d;->b:Lccsancom/mbridge/msdk/reward/a/a;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/reward/a/a;->a(Lccsancom/mbridge/msdk/reward/a/a;Z)Z

    .line 538
    nop

    .line 1494
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$d;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/a/a;->n(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1495
    const/4 p1, 0x0

    iput-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$d;->b:Lccsancom/mbridge/msdk/reward/a/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 544
    :cond_2
    goto :goto_0

    .line 540
    :catch_0
    move-exception p1

    .line 541
    sget-boolean p2, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz p2, :cond_3

    .line 542
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 545
    :cond_3
    :goto_0
    return-void
.end method

.method public final a(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 585
    :try_start_0
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/a/a$d;->b:Lccsancom/mbridge/msdk/reward/a/a;

    if-eqz p2, :cond_1

    invoke-static {p2}, Lccsancom/mbridge/msdk/reward/a/a;->h(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/videocommon/listener/InterVideoOutListener;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 587
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/a/a$d;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {p2}, Lccsancom/mbridge/msdk/reward/a/a;->i(Lccsancom/mbridge/msdk/reward/a/a;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 588
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/a/a$d;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {p2}, Lccsancom/mbridge/msdk/reward/a/a;->j(Lccsancom/mbridge/msdk/reward/a/a;)V

    .line 590
    :cond_0
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/a/a$d;->b:Lccsancom/mbridge/msdk/reward/a/a;

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lccsancom/mbridge/msdk/reward/a/a;->a(Lccsancom/mbridge/msdk/reward/a/a;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 592
    :try_start_1
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/a/a$d;->b:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {p2}, Lccsancom/mbridge/msdk/reward/a/a;->h(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/videocommon/listener/InterVideoOutListener;

    move-result-object p2

    iget-object p3, p0, Lccsancom/mbridge/msdk/reward/a/a$d;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {p3}, Lccsancom/mbridge/msdk/reward/a/a;->k(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/out/MBridgeIds;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Lccsancom/mbridge/msdk/videocommon/listener/InterVideoOutListener;->onVideoAdClicked(ZLccsancom/mbridge/msdk/out/MBridgeIds;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 597
    goto :goto_0

    .line 593
    :catch_0
    move-exception p1

    .line 594
    :try_start_2
    sget-boolean p2, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz p2, :cond_1

    .line 595
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 603
    :cond_1
    :goto_0
    goto :goto_1

    .line 599
    :catch_1
    move-exception p1

    .line 600
    sget-boolean p2, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz p2, :cond_2

    .line 601
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 604
    :cond_2
    :goto_1
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 649
    :try_start_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$d;->b:Lccsancom/mbridge/msdk/reward/a/a;

    if-eqz p1, :cond_1

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/a/a;->h(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/videocommon/listener/InterVideoOutListener;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p1, :cond_1

    .line 651
    :try_start_1
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$d;->b:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/a/a;->h(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/videocommon/listener/InterVideoOutListener;

    move-result-object p1

    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/a/a$d;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {p2}, Lccsancom/mbridge/msdk/reward/a/a;->k(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/out/MBridgeIds;

    move-result-object p2

    invoke-interface {p1, p2}, Lccsancom/mbridge/msdk/videocommon/listener/InterVideoOutListener;->onEndcardShow(Lccsancom/mbridge/msdk/out/MBridgeIds;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 656
    goto :goto_0

    .line 652
    :catch_0
    move-exception p1

    .line 653
    :try_start_2
    sget-boolean p2, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz p2, :cond_0

    .line 654
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 657
    :cond_0
    :goto_0
    const/4 p1, 0x6

    iput p1, p0, Lccsancom/mbridge/msdk/reward/a/a$d;->e:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 663
    :cond_1
    goto :goto_1

    .line 659
    :catch_1
    move-exception p1

    .line 660
    sget-boolean p2, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz p2, :cond_2

    .line 661
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 664
    :cond_2
    :goto_1
    return-void
.end method
