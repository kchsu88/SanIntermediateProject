.class public final Lccsancom/mbridge/msdk/click/a;
.super Ljava/lang/Object;
.source "CommonClickControl.java"


# static fields
.field public static a:Z

.field public static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private d:Ljava/lang/String;

.field private e:J

.field private f:Lccsancom/mbridge/msdk/foundation/db/f;

.field private g:Lccsanandroid/content/Context;

.field private h:Lccsancom/mbridge/msdk/click/CommonJumpLoader;

.field private i:Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

.field private j:Lccsancom/mbridge/msdk/foundation/same/report/c;

.field private k:Lccsancom/mbridge/msdk/b/a;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const/4 v0, 0x0

    sput-boolean v0, Lccsancom/mbridge/msdk/click/a;->a:Z

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lccsancom/mbridge/msdk/click/a;->b:Ljava/util/Map;

    .line 57
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lccsancom/mbridge/msdk/click/a;->c:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/mbridge/msdk/click/a;->f:Lccsancom/mbridge/msdk/foundation/db/f;

    .line 40
    iput-object v0, p0, Lccsancom/mbridge/msdk/click/a;->g:Lccsanandroid/content/Context;

    .line 46
    iput-object v0, p0, Lccsancom/mbridge/msdk/click/a;->i:Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/click/a;->m:Z

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/click/a;->n:Z

    .line 61
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object v0

    invoke-virtual {v0, p2}, Lccsancom/mbridge/msdk/b/b;->b(Ljava/lang/String;)Lccsancom/mbridge/msdk/b/a;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/click/a;->k:Lccsancom/mbridge/msdk/b/a;

    .line 62
    if-nez v0, :cond_0

    .line 63
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/b/b;->b()Lccsancom/mbridge/msdk/b/a;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/click/a;->k:Lccsancom/mbridge/msdk/b/a;

    .line 66
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/a;->k:Lccsancom/mbridge/msdk/b/a;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/b/a;->s()Z

    move-result v0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/click/a;->l:Z

    .line 67
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lccsancom/mbridge/msdk/click/a;->g:Lccsanandroid/content/Context;

    .line 68
    iput-object p2, p0, Lccsancom/mbridge/msdk/click/a;->d:Ljava/lang/String;

    .line 69
    iget-object p2, p0, Lccsancom/mbridge/msdk/click/a;->f:Lccsancom/mbridge/msdk/foundation/db/f;

    if-nez p2, :cond_1

    .line 70
    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/db/f;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/db/f;

    move-result-object p1

    iput-object p1, p0, Lccsancom/mbridge/msdk/click/a;->f:Lccsancom/mbridge/msdk/foundation/db/f;

    .line 72
    :cond_1
    new-instance p1, Lccsancom/mbridge/msdk/foundation/same/report/c;

    iget-object p2, p0, Lccsancom/mbridge/msdk/click/a;->g:Lccsanandroid/content/Context;

    invoke-direct {p1, p2}, Lccsancom/mbridge/msdk/foundation/same/report/c;-><init>(Lccsanandroid/content/Context;)V

    iput-object p1, p0, Lccsancom/mbridge/msdk/click/a;->j:Lccsancom/mbridge/msdk/foundation/same/report/c;

    .line 74
    return-void
.end method

.method private a(ILjava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;)V
    .locals 1

    .line 633
    :try_start_0
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 634
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 635
    iget-object p1, p0, Lccsancom/mbridge/msdk/click/a;->g:Lccsanandroid/content/Context;

    invoke-static {p1, p2, p3, p4}, Lccsancom/mbridge/msdk/foundation/tools/t;->a(Lccsanandroid/content/Context;Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;)V

    goto :goto_0

    .line 638
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/click/a;->g:Lccsanandroid/content/Context;

    invoke-static {p1, p2, p4}, Lccsancom/mbridge/msdk/foundation/tools/t;->b(Lccsanandroid/content/Context;Ljava/lang/String;Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 643
    :cond_1
    :goto_0
    goto :goto_1

    .line 641
    :catchall_0
    move-exception p1

    .line 642
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string p3, "MBridge SDK M"

    invoke-static {p3, p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 644
    :goto_1
    return-void
.end method

.method public static a(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 7

    .line 289
    if-nez p0, :cond_0

    .line 290
    return-void

    .line 292
    :cond_0
    new-instance v0, Lccsancom/mbridge/msdk/click/CommonJumpLoader;

    invoke-virtual {p0}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lccsancom/mbridge/msdk/click/CommonJumpLoader;-><init>(Lccsanandroid/content/Context;)V

    .line 293
    new-instance v3, Lccsancom/mbridge/msdk/click/a$1;

    invoke-direct {v3}, Lccsancom/mbridge/msdk/click/a$1;-><init>()V

    move-object v1, p2

    move-object v2, p1

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lccsancom/mbridge/msdk/click/CommonJumpLoader;->a(Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsancom/mbridge/msdk/click/d;Ljava/lang/String;ZZ)V

    .line 320
    return-void
.end method

.method public static a(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;[Ljava/lang/String;ZZ)V
    .locals 9

    .line 324
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p3, :cond_0

    goto :goto_1

    .line 327
    :cond_0
    new-instance v0, Lccsancom/mbridge/msdk/click/CommonJumpLoader;

    invoke-virtual {p0}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lccsancom/mbridge/msdk/click/CommonJumpLoader;-><init>(Lccsanandroid/content/Context;)V

    .line 329
    array-length p0, p3

    const/4 v1, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v8, p0, :cond_1

    aget-object v5, p3, v8

    .line 330
    new-instance v4, Lccsancom/mbridge/msdk/click/a$2;

    invoke-direct {v4}, Lccsancom/mbridge/msdk/click/a$2;-><init>()V

    move-object v1, v0

    move-object v2, p2

    move-object v3, p1

    move v6, p4

    move v7, p5

    invoke-virtual/range {v1 .. v7}, Lccsancom/mbridge/msdk/click/CommonJumpLoader;->a(Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsancom/mbridge/msdk/click/d;Ljava/lang/String;ZZ)V

    .line 329
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 358
    :cond_1
    return-void

    .line 325
    :cond_2
    :goto_1
    return-void
.end method

.method private a(Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;IZ)V
    .locals 8

    .line 531
    const-string v0, ""

    if-eqz p2, :cond_9

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 534
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lccsancom/mbridge/msdk/click/a;->e:J

    sub-long/2addr v1, v3

    .line 535
    new-instance v3, Lccsancom/mbridge/msdk/foundation/entity/c;

    invoke-direct {v3}, Lccsancom/mbridge/msdk/foundation/entity/c;-><init>()V

    .line 536
    iget-object v4, p0, Lccsancom/mbridge/msdk/click/a;->g:Lccsanandroid/content/Context;

    invoke-static {v4}, Lccsancom/mbridge/msdk/foundation/tools/m;->n(Lccsanandroid/content/Context;)I

    move-result v4

    .line 537
    invoke-virtual {v3, v4}, Lccsancom/mbridge/msdk/foundation/entity/c;->a(I)V

    .line 538
    iget-object v5, p0, Lccsancom/mbridge/msdk/click/a;->g:Lccsanandroid/content/Context;

    invoke-static {v5, v4}, Lccsancom/mbridge/msdk/foundation/tools/m;->a(Lccsanandroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lccsancom/mbridge/msdk/foundation/entity/c;->a(Ljava/lang/String;)V

    .line 539
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lccsancom/mbridge/msdk/foundation/entity/c;->j(Ljava/lang/String;)V

    .line 540
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lccsancom/mbridge/msdk/foundation/entity/c;->k(Ljava/lang/String;)V

    .line 541
    invoke-virtual {v3, p3}, Lccsancom/mbridge/msdk/foundation/entity/c;->d(I)V

    .line 542
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p3}, Lccsancom/mbridge/msdk/foundation/entity/c;->i(Ljava/lang/String;)V

    .line 543
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p3}, Lccsancom/mbridge/msdk/foundation/entity/c;->h(Ljava/lang/String;)V

    .line 544
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->getType()I

    move-result p3

    invoke-virtual {v3, p3}, Lccsancom/mbridge/msdk/foundation/entity/c;->f(I)V

    .line 545
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->getUrl()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "utf-8"

    if-nez p3, :cond_1

    .line 546
    :try_start_1
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->getUrl()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p3}, Lccsancom/mbridge/msdk/foundation/entity/c;->g(Ljava/lang/String;)V

    .line 549
    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lccsancom/mbridge/msdk/click/a;->e:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {p3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p3}, Lccsancom/mbridge/msdk/foundation/entity/c;->c(Ljava/lang/String;)V

    .line 550
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getLandingType()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {v3, p3}, Lccsancom/mbridge/msdk/foundation/entity/c;->b(I)V

    .line 551
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getLinkType()I

    move-result p2

    invoke-virtual {v3, p2}, Lccsancom/mbridge/msdk/foundation/entity/c;->c(I)V

    .line 552
    iget-object p2, p0, Lccsancom/mbridge/msdk/click/a;->d:Ljava/lang/String;

    invoke-virtual {v3, p2}, Lccsancom/mbridge/msdk/foundation/entity/c;->b(Ljava/lang/String;)V

    .line 554
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->getType()I

    move-result p2

    invoke-virtual {v3, p2}, Lccsancom/mbridge/msdk/foundation/entity/c;->f(I)V

    .line 555
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->getUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 556
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->getUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Lccsancom/mbridge/msdk/foundation/entity/c;->g(Ljava/lang/String;)V

    .line 558
    :cond_2
    iget-boolean p2, p0, Lccsancom/mbridge/msdk/click/a;->l:Z

    if-eqz p2, :cond_5

    .line 559
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->getStatusCode()I

    move-result p2

    invoke-virtual {v3, p2}, Lccsancom/mbridge/msdk/foundation/entity/c;->e(I)V

    .line 560
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->getHeader()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 561
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->getHeader()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Lccsancom/mbridge/msdk/foundation/entity/c;->e(Ljava/lang/String;)V

    .line 563
    :cond_3
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->getContent()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 564
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->getContent()Ljava/lang/String;

    move-result-object p2

    const-string p3, "UTF-8"

    invoke-static {p2, p3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Lccsancom/mbridge/msdk/foundation/entity/c;->f(Ljava/lang/String;)V

    .line 566
    :cond_4
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->getExceptionMsg()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 567
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->getExceptionMsg()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lccsancom/mbridge/msdk/foundation/entity/c;->d(Ljava/lang/String;)V

    .line 570
    :cond_5
    if-eqz p4, :cond_6

    .line 571
    iget-object p1, p0, Lccsancom/mbridge/msdk/click/a;->j:Lccsancom/mbridge/msdk/foundation/same/report/c;

    const-string p2, "click_jump_error"

    iget-object p3, p0, Lccsancom/mbridge/msdk/click/a;->d:Ljava/lang/String;

    invoke-virtual {p1, p2, v3, p3}, Lccsancom/mbridge/msdk/foundation/same/report/c;->a(Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/c;Ljava/lang/String;)V

    goto :goto_0

    .line 574
    :cond_6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 575
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 576
    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/entity/c;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    .line 577
    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/tools/x;->b(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 578
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/report/a;->a()Lccsancom/mbridge/msdk/foundation/same/report/a;

    move-result-object p2

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/same/report/a;->c()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 579
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/report/a;->a()Lccsancom/mbridge/msdk/foundation/same/report/a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lccsancom/mbridge/msdk/foundation/same/report/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 581
    :cond_7
    new-instance p2, Lccsancom/mbridge/msdk/foundation/same/report/c;

    iget-object p3, p0, Lccsancom/mbridge/msdk/click/a;->g:Lccsanandroid/content/Context;

    const/4 p4, 0x0

    invoke-direct {p2, p3, p4}, Lccsancom/mbridge/msdk/foundation/same/report/c;-><init>(Lccsanandroid/content/Context;I)V

    const-string p3, "click_jump_success"

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p1, p4, p4}, Lccsancom/mbridge/msdk/foundation/same/report/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/out/Frame;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 589
    :cond_8
    :goto_0
    goto :goto_1

    .line 587
    :catchall_0
    move-exception p1

    .line 588
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 590
    :goto_1
    return-void

    .line 532
    :cond_9
    :goto_2
    return-void
.end method

.method private a(Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Z)V
    .locals 1

    .line 628
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, p3}, Lccsancom/mbridge/msdk/click/a;->a(Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;IZ)V

    .line 629
    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/click/a;Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Z)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lccsancom/mbridge/msdk/click/a;->a(Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Z)V

    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/click/a;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 3

    .line 34
    nop

    .line 1858
    :try_start_0
    new-instance v0, Lccsanandroid/content/Intent;

    iget-object v1, p0, Lccsancom/mbridge/msdk/click/a;->g:Lccsanandroid/content/Context;

    const-class v2, Lccsancom/mbridge/msdk/out/LoadingActivity;

    invoke-direct {v0, v1, v2}, Lccsanandroid/content/Intent;-><init>(Lccsanandroid/content/Context;Ljava/lang/Class;)V

    .line 1859
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Lccsanandroid/content/Intent;->setFlags(I)Lccsanandroid/content/Intent;

    .line 1860
    const-string v1, "icon_url"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getIconUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 1861
    iget-object p0, p0, Lccsancom/mbridge/msdk/click/a;->g:Lccsanandroid/content/Context;

    invoke-virtual {p0, v0}, Lccsanandroid/content/Context;->startActivity(Lccsanandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1864
    goto :goto_0

    .line 1862
    :catch_0
    move-exception p0

    .line 1863
    const-string p1, "MBridge SDK M"

    const-string v0, "Exception"

    invoke-static {p1, v0, p0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    :goto_0
    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/click/a;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;ZZ)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lccsancom/mbridge/msdk/click/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;ZZ)V

    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/click/a;ZLccsancom/mbridge/msdk/out/Campaign;)V
    .locals 2

    .line 34
    nop

    .line 2515
    new-instance v0, Lccsanandroid/os/Handler;

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    new-instance v1, Lccsancom/mbridge/msdk/click/a$5;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/click/a$5;-><init>(Lccsancom/mbridge/msdk/click/a;ZLccsancom/mbridge/msdk/out/Campaign;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 34
    return-void
.end method

.method private a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;ZZ)V
    .locals 6

    .line 724
    :try_start_0
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/click/a;->n:Z

    if-nez v0, :cond_0

    .line 725
    return-void

    .line 727
    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_11

    if-nez p2, :cond_1

    goto/16 :goto_3

    .line 737
    :cond_1
    invoke-direct {p0}, Lccsancom/mbridge/msdk/click/a;->b()I

    move-result v1

    .line 738
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->getCode()I

    move-result v2

    .line 740
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x3

    if-eqz v3, :cond_5

    if-eqz p3, :cond_5

    .line 742
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getLinkType()I

    move-result p4

    .line 743
    if-ne p4, v4, :cond_2

    .line 744
    invoke-direct {p0}, Lccsancom/mbridge/msdk/click/a;->b()I

    move-result p4

    invoke-direct {p0, p1, p2, p3, p4}, Lccsancom/mbridge/msdk/click/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;ZI)Z

    .line 745
    return-void

    .line 746
    :cond_2
    if-ne p4, v5, :cond_3

    .line 747
    invoke-direct {p0, p1, p2, p3}, Lccsancom/mbridge/msdk/click/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;Z)Z

    .line 748
    return-void

    .line 750
    :cond_3
    iget-object p3, p0, Lccsancom/mbridge/msdk/click/a;->g:Lccsanandroid/content/Context;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getClickURL()Ljava/lang/String;

    move-result-object p4

    iget-object v1, p0, Lccsancom/mbridge/msdk/click/a;->i:Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    invoke-static {p3, p4, v1}, Lccsancom/mbridge/msdk/foundation/tools/t;->b(Lccsanandroid/content/Context;Ljava/lang/String;Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;)V

    .line 751
    invoke-direct {p0, p2, p1, v0}, Lccsancom/mbridge/msdk/click/a;->a(Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Z)V

    .line 752
    iget-object p3, p0, Lccsancom/mbridge/msdk/click/a;->i:Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    if-eqz p3, :cond_4

    .line 753
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->getUrl()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;->onFinishRedirection(Lccsancom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V

    .line 755
    :cond_4
    return-void

    .line 760
    :cond_5
    if-ne v2, v0, :cond_9

    .line 761
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 762
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz p3, :cond_6

    .line 764
    iget-object v2, p0, Lccsancom/mbridge/msdk/click/a;->g:Lccsanandroid/content/Context;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->getUrl()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lccsancom/mbridge/msdk/click/a;->i:Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    invoke-static {v2, v3, v4}, Lccsancom/mbridge/msdk/foundation/tools/t$a;->a(Lccsanandroid/content/Context;Ljava/lang/String;Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 766
    goto :goto_0

    .line 769
    :cond_6
    if-eqz p3, :cond_8

    .line 771
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lccsancom/mbridge/msdk/click/a;->g:Lccsanandroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "market://details?id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 772
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lccsancom/mbridge/msdk/click/a;->i:Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    .line 771
    invoke-static {v2, v3, v4}, Lccsancom/mbridge/msdk/foundation/tools/t$a;->a(Lccsanandroid/content/Context;Ljava/lang/String;Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 773
    :cond_7
    :goto_0
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->getUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lccsancom/mbridge/msdk/click/a;->i:Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    invoke-direct {p0, v1, v2, p1, v3}, Lccsancom/mbridge/msdk/click/a;->a(ILjava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;)V

    .line 777
    :cond_8
    iget-object v1, p0, Lccsancom/mbridge/msdk/click/a;->i:Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    if-eqz v1, :cond_e

    if-eqz p3, :cond_e

    .line 778
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;->onFinishRedirection(Lccsancom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V

    goto :goto_1

    .line 781
    :cond_9
    if-ne v2, v5, :cond_b

    .line 783
    if-eqz p3, :cond_a

    .line 784
    iget-object v1, p0, Lccsancom/mbridge/msdk/click/a;->g:Lccsanandroid/content/Context;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->getUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lccsancom/mbridge/msdk/click/a;->i:Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    invoke-static {v1, v2, v3}, Lccsancom/mbridge/msdk/foundation/tools/t;->b(Lccsanandroid/content/Context;Ljava/lang/String;Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;)V

    .line 786
    :cond_a
    iget-object v1, p0, Lccsancom/mbridge/msdk/click/a;->i:Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    if-eqz v1, :cond_e

    if-eqz p3, :cond_e

    .line 787
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;->onFinishRedirection(Lccsancom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V

    goto :goto_1

    .line 792
    :cond_b
    if-eqz p3, :cond_e

    .line 793
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getLinkType()I

    move-result v1

    if-ne v5, v1, :cond_c

    .line 794
    invoke-direct {p0, p1, p2, p3}, Lccsancom/mbridge/msdk/click/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;Z)Z

    .line 795
    return-void

    .line 796
    :cond_c
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getLinkType()I

    move-result v1

    if-ne v4, v1, :cond_d

    .line 797
    invoke-direct {p0}, Lccsancom/mbridge/msdk/click/a;->b()I

    move-result p4

    invoke-direct {p0, p1, p2, p3, p4}, Lccsancom/mbridge/msdk/click/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;ZI)Z

    .line 798
    return-void

    .line 800
    :cond_d
    iget-object v1, p0, Lccsancom/mbridge/msdk/click/a;->g:Lccsanandroid/content/Context;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->getUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lccsancom/mbridge/msdk/click/a;->i:Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    invoke-static {v1, v2, v3}, Lccsancom/mbridge/msdk/foundation/tools/t;->b(Lccsanandroid/content/Context;Ljava/lang/String;Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;)V

    .line 802
    iget-object v1, p0, Lccsancom/mbridge/msdk/click/a;->i:Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    if-eqz v1, :cond_e

    .line 803
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;->onFinishRedirection(Lccsancom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V

    .line 808
    :cond_e
    :goto_1
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getLinkType()I

    move-result v1

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lccsancom/mbridge/msdk/click/a;->a(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 809
    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, v0}, Lccsancom/mbridge/msdk/click/a;->a(Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Z)V

    goto :goto_2

    .line 811
    :cond_f
    invoke-direct {p0, p2, p1, v0}, Lccsancom/mbridge/msdk/click/a;->a(Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Z)V

    .line 813
    :goto_2
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/a;->i:Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    if-eqz v0, :cond_10

    if-nez p3, :cond_10

    if-eqz p4, :cond_10

    .line 814
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->getUrl()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;->onFinishRedirection(Lccsancom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V

    .line 819
    :cond_10
    goto :goto_4

    .line 729
    :cond_11
    :goto_3
    if-eqz p3, :cond_12

    .line 730
    invoke-direct {p0, p2, p1, v0}, Lccsancom/mbridge/msdk/click/a;->a(Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Z)V

    .line 731
    iget-object p1, p0, Lccsancom/mbridge/msdk/click/a;->i:Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    if-eqz p1, :cond_12

    .line 732
    const/4 p2, 0x0

    invoke-interface {p1, p2, p2}, Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;->onRedirectionFailed(Lccsancom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 735
    :cond_12
    return-void

    .line 817
    :catch_0
    move-exception p1

    .line 818
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 820
    :goto_4
    return-void
.end method

.method private a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;)V
    .locals 7

    .line 154
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    const/4 v5, 0x1

    .line 156
    const/4 v6, 0x0

    .line 157
    iget-object v1, p0, Lccsancom/mbridge/msdk/click/a;->g:Lccsanandroid/content/Context;

    iget-object v3, p0, Lccsancom/mbridge/msdk/click/a;->d:Ljava/lang/String;

    move-object v2, p1

    move-object v4, p2

    invoke-static/range {v1 .. v6}, Lccsancom/mbridge/msdk/click/a;->a(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 159
    :cond_0
    return-void
.end method

.method private a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Z)V
    .locals 7

    .line 362
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lccsancom/mbridge/msdk/click/a;->e:J

    .line 365
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/a;->i:Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 366
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getClickURL()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;->onStartRedirection(Lccsancom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/a;->i:Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;->onInterceptDefaultLoadingDialog()Z

    move-result v0

    xor-int/2addr v0, v1

    goto :goto_0

    .line 369
    :cond_0
    const/4 v0, 0x1

    .line 372
    :goto_0
    nop

    .line 373
    const/4 v2, 0x0

    iput-boolean v2, p0, Lccsancom/mbridge/msdk/click/a;->o:Z

    .line 375
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getJumpResult()Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 376
    if-nez p2, :cond_1

    .line 377
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getJumpResult()Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;

    move-result-object v3

    iget-boolean v4, p0, Lccsancom/mbridge/msdk/click/a;->m:Z

    invoke-direct {p0, p1, v3, v1, v4}, Lccsancom/mbridge/msdk/click/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;ZZ)V

    .line 379
    :cond_1
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/click/a;->o:Z

    .line 380
    nop

    .line 381
    iput-boolean v2, p0, Lccsancom/mbridge/msdk/click/a;->m:Z

    const/4 v3, 0x0

    goto :goto_1

    .line 375
    :cond_2
    const/4 v3, 0x1

    .line 383
    :goto_1
    iget-object v4, p0, Lccsancom/mbridge/msdk/click/a;->f:Lccsancom/mbridge/msdk/foundation/db/f;

    invoke-static {v4}, Lccsancom/mbridge/msdk/foundation/db/b;->a(Lccsancom/mbridge/msdk/foundation/db/e;)Lccsancom/mbridge/msdk/foundation/db/b;

    move-result-object v4

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lccsancom/mbridge/msdk/click/a;->d:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lccsancom/mbridge/msdk/foundation/db/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 384
    if-eqz v4, :cond_3

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getJumpResult()Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;

    move-result-object v4

    if-nez v4, :cond_d

    .line 385
    :cond_3
    iget-object v4, p0, Lccsancom/mbridge/msdk/click/a;->f:Lccsancom/mbridge/msdk/foundation/db/f;

    invoke-static {v4}, Lccsancom/mbridge/msdk/foundation/db/b;->a(Lccsancom/mbridge/msdk/foundation/db/e;)Lccsancom/mbridge/msdk/foundation/db/b;

    move-result-object v4

    .line 386
    invoke-virtual {v4}, Lccsancom/mbridge/msdk/foundation/db/b;->a()V

    .line 387
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lccsancom/mbridge/msdk/click/a;->d:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lccsancom/mbridge/msdk/foundation/db/b;->b(Ljava/lang/String;Ljava/lang/String;)Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;

    move-result-object v4

    .line 388
    if-eqz v4, :cond_5

    if-nez p2, :cond_5

    .line 389
    invoke-virtual {p1, v4}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setJumpResult(Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;)V

    .line 390
    if-eqz v3, :cond_4

    .line 391
    iget-boolean v5, p0, Lccsancom/mbridge/msdk/click/a;->m:Z

    invoke-direct {p0, p1, v4, v3, v5}, Lccsancom/mbridge/msdk/click/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;ZZ)V

    .line 392
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/click/a;->o:Z

    .line 393
    nop

    .line 394
    iput-boolean v2, p0, Lccsancom/mbridge/msdk/click/a;->m:Z

    goto :goto_2

    .line 390
    :cond_4
    move v2, v3

    goto :goto_2

    .line 397
    :cond_5
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getClick_mode()Ljava/lang/String;

    move-result-object v4

    const-string v5, "6"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getLinkType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_7

    if-nez p2, :cond_7

    .line 398
    iget-object v4, p0, Lccsancom/mbridge/msdk/click/a;->g:Lccsanandroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "market://details?id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lccsancom/mbridge/msdk/click/a;->i:Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    .line 398
    invoke-static {v4, v5, v6}, Lccsancom/mbridge/msdk/foundation/tools/t$a;->a(Lccsanandroid/content/Context;Ljava/lang/String;Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;)Z

    .line 402
    iget-object v4, p0, Lccsancom/mbridge/msdk/click/a;->i:Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    if-eqz v4, :cond_6

    if-eqz v3, :cond_6

    .line 403
    invoke-interface {v4, p1}, Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;->onDismissLoading(Lccsancom/mbridge/msdk/out/Campaign;)V

    .line 404
    iget-object v3, p0, Lccsancom/mbridge/msdk/click/a;->i:Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    const/4 v4, 0x0

    invoke-interface {v3, p1, v4}, Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;->onFinishRedirection(Lccsancom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V

    .line 406
    :cond_6
    nop

    .line 407
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/click/a;->o:Z

    const/4 v3, 0x0

    .line 409
    :cond_7
    if-eqz p2, :cond_8

    .line 410
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/click/a;->o:Z

    .line 411
    nop

    .line 412
    iput-boolean v2, p0, Lccsancom/mbridge/msdk/click/a;->m:Z

    goto :goto_2

    .line 409
    :cond_8
    move v2, v3

    .line 415
    :goto_2
    nop

    .line 417
    new-instance v1, Lccsanandroid/os/Handler;

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    new-instance v3, Lccsancom/mbridge/msdk/click/a$3;

    invoke-direct {v3, p0, v0, p2, p1}, Lccsancom/mbridge/msdk/click/a$3;-><init>(Lccsancom/mbridge/msdk/click/a;ZZLccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    invoke-virtual {v1, v3}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 432
    iget-object p2, p0, Lccsancom/mbridge/msdk/click/a;->h:Lccsancom/mbridge/msdk/click/CommonJumpLoader;

    if-eqz p2, :cond_9

    .line 433
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/click/CommonJumpLoader;->a()V

    .line 435
    :cond_9
    sget-object p2, Lccsancom/mbridge/msdk/click/a;->c:Ljava/util/Set;

    if-eqz p2, :cond_b

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 436
    iget-object p2, p0, Lccsancom/mbridge/msdk/click/a;->i:Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    if-eqz p2, :cond_a

    .line 437
    invoke-interface {p2, p1}, Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;->onDismissLoading(Lccsancom/mbridge/msdk/out/Campaign;)V

    .line 438
    iget-object p2, p0, Lccsancom/mbridge/msdk/click/a;->i:Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    .line 439
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getClickURL()Ljava/lang/String;

    move-result-object v0

    .line 438
    invoke-interface {p2, p1, v0}, Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;->onFinishRedirection(Lccsancom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V

    .line 441
    :cond_a
    return-void

    .line 443
    :cond_b
    sget-object p2, Lccsancom/mbridge/msdk/click/a;->c:Ljava/util/Set;

    if-eqz p2, :cond_c

    .line 444
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 446
    :cond_c
    new-instance p2, Lccsancom/mbridge/msdk/click/CommonJumpLoader;

    iget-object v1, p0, Lccsancom/mbridge/msdk/click/a;->g:Lccsanandroid/content/Context;

    invoke-direct {p2, v1}, Lccsancom/mbridge/msdk/click/CommonJumpLoader;-><init>(Lccsanandroid/content/Context;)V

    iput-object p2, p0, Lccsancom/mbridge/msdk/click/a;->h:Lccsancom/mbridge/msdk/click/CommonJumpLoader;

    .line 447
    iget-object v1, p0, Lccsancom/mbridge/msdk/click/a;->d:Ljava/lang/String;

    new-instance v3, Lccsancom/mbridge/msdk/click/a$4;

    invoke-direct {v3, p0, p1, v2, v0}, Lccsancom/mbridge/msdk/click/a$4;-><init>(Lccsancom/mbridge/msdk/click/a;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;ZZ)V

    invoke-virtual {p2, v1, p1, v3}, Lccsancom/mbridge/msdk/click/CommonJumpLoader;->a(Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsancom/mbridge/msdk/click/d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 511
    :cond_d
    goto :goto_3

    .line 509
    :catch_0
    move-exception p1

    .line 510
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 512
    :goto_3
    return-void
.end method

.method private a(ILjava/lang/String;)Z
    .locals 3

    .line 837
    nop

    .line 839
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    .line 840
    :try_start_0
    invoke-static {p2}, Lccsancom/mbridge/msdk/foundation/tools/t$a;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 841
    goto :goto_0

    .line 844
    :cond_0
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_1

    .line 845
    goto :goto_0

    .line 850
    :cond_1
    const/4 v1, 0x0

    :goto_0
    move v2, v1

    goto :goto_1

    .line 848
    :catch_0
    move-exception p1

    .line 849
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 853
    :goto_1
    return v2
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/click/a;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lccsancom/mbridge/msdk/click/a;->o:Z

    return p0
.end method

.method private a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;Z)Z
    .locals 4

    .line 698
    nop

    .line 700
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    .line 701
    :try_start_0
    iget-object p3, p0, Lccsancom/mbridge/msdk/click/a;->g:Lccsanandroid/content/Context;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getClickURL()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lccsancom/mbridge/msdk/click/a;->i:Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    invoke-static {p3, v2, v3}, Lccsancom/mbridge/msdk/foundation/tools/t;->b(Lccsanandroid/content/Context;Ljava/lang/String;Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;)V

    .line 702
    const/4 v1, 0x1

    .line 704
    :cond_0
    invoke-direct {p0, p2, p1, v0}, Lccsancom/mbridge/msdk/click/a;->a(Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Z)V

    .line 705
    if-eqz v1, :cond_1

    .line 706
    iget-object p3, p0, Lccsancom/mbridge/msdk/click/a;->i:Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    if-eqz p3, :cond_2

    .line 707
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->getUrl()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;->onFinishRedirection(Lccsancom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V

    goto :goto_0

    .line 710
    :cond_1
    iget-object p3, p0, Lccsancom/mbridge/msdk/click/a;->i:Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    if-eqz p3, :cond_2

    .line 711
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->getUrl()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;->onRedirectionFailed(Lccsancom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 717
    :cond_2
    :goto_0
    goto :goto_1

    .line 715
    :catchall_0
    move-exception p1

    .line 716
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string p3, "MBridge SDK M"

    invoke-static {p3, p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 718
    :goto_1
    return v1
.end method

.method private a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;ZI)Z
    .locals 5

    .line 647
    nop

    .line 648
    nop

    .line 651
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_4

    .line 652
    :try_start_0
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getLandingType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 653
    if-ne v2, v1, :cond_0

    .line 654
    iget-object p4, p0, Lccsancom/mbridge/msdk/click/a;->g:Lccsanandroid/content/Context;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->getUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lccsancom/mbridge/msdk/click/a;->i:Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    invoke-static {p4, v2, v3}, Lccsancom/mbridge/msdk/foundation/tools/t;->b(Lccsanandroid/content/Context;Ljava/lang/String;Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;)V

    .line 655
    const/4 v0, 0x1

    goto :goto_0

    .line 656
    :cond_0
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 657
    iget-object p4, p0, Lccsancom/mbridge/msdk/click/a;->g:Lccsanandroid/content/Context;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->getUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lccsancom/mbridge/msdk/click/a;->i:Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    invoke-static {p4, v2, p1, v3}, Lccsancom/mbridge/msdk/foundation/tools/t;->a(Lccsanandroid/content/Context;Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;)V

    .line 659
    const/4 v0, 0x1

    goto :goto_0

    .line 661
    :cond_1
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 663
    iget-object v2, p0, Lccsancom/mbridge/msdk/click/a;->g:Lccsanandroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "market://details?id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lccsancom/mbridge/msdk/click/a;->i:Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    .line 663
    invoke-static {v2, v3, v4}, Lccsancom/mbridge/msdk/foundation/tools/t$a;->a(Lccsanandroid/content/Context;Ljava/lang/String;Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 666
    const/4 v0, 0x1

    goto :goto_0

    .line 668
    :cond_2
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->getUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lccsancom/mbridge/msdk/click/a;->i:Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    invoke-direct {p0, p4, v2, p1, v3}, Lccsancom/mbridge/msdk/click/a;->a(ILjava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;)V

    .line 669
    goto :goto_0

    .line 672
    :cond_3
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->getUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lccsancom/mbridge/msdk/click/a;->i:Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    invoke-direct {p0, p4, v2, p1, v3}, Lccsancom/mbridge/msdk/click/a;->a(ILjava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;)V

    .line 673
    goto :goto_0

    .line 690
    :catchall_0
    move-exception p1

    goto :goto_2

    .line 678
    :cond_4
    :goto_0
    if-eqz v0, :cond_5

    .line 679
    invoke-direct {p0, p2, p1, v1}, Lccsancom/mbridge/msdk/click/a;->a(Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Z)V

    .line 680
    iget-object p3, p0, Lccsancom/mbridge/msdk/click/a;->i:Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    if-eqz p3, :cond_6

    .line 681
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->getUrl()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;->onFinishRedirection(Lccsancom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V

    goto :goto_1

    .line 684
    :cond_5
    invoke-direct {p0, p2, p1, v1}, Lccsancom/mbridge/msdk/click/a;->a(Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Z)V

    .line 685
    iget-object p4, p0, Lccsancom/mbridge/msdk/click/a;->i:Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    if-eqz p4, :cond_6

    if-eqz p3, :cond_6

    .line 686
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->getUrl()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p4, p1, p2}, Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;->onRedirectionFailed(Lccsancom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 692
    :cond_6
    :goto_1
    goto :goto_3

    .line 691
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string p3, "MBridge SDK M"

    invoke-static {p3, p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 694
    :goto_3
    return v0
.end method

.method private b()I
    .locals 2

    .line 823
    nop

    .line 825
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/click/a;->k:Lccsancom/mbridge/msdk/b/a;

    if-eqz v1, :cond_0

    .line 826
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/b/a;->n()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 831
    :cond_0
    goto :goto_0

    .line 828
    :catch_0
    move-exception v1

    .line 829
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 830
    nop

    .line 832
    :goto_0
    return v0
.end method

.method static synthetic b(Lccsancom/mbridge/msdk/click/a;)Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;
    .locals 0

    .line 34
    iget-object p0, p0, Lccsancom/mbridge/msdk/click/a;->i:Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    return-object p0
.end method

.method private b(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)Z
    .locals 6

    .line 129
    if-eqz p1, :cond_3

    const/4 v0, 0x2

    :try_start_0
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getLinkType()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getLinkType()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 130
    :cond_0
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v0

    .line 131
    sget-object v1, Lccsancom/mbridge/msdk/click/a;->b:Ljava/util/Map;

    if-eqz v1, :cond_3

    .line 132
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 133
    sget-object v1, Lccsancom/mbridge/msdk/click/a;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 134
    if-eqz v0, :cond_2

    .line 135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 136
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-gtz v0, :cond_1

    sget-object v0, Lccsancom/mbridge/msdk/click/a;->c:Ljava/util/Set;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 137
    :cond_1
    const/4 p1, 0x0

    return p1

    .line 141
    :cond_2
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getClickTimeOutInterval()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    .line 142
    sget-object v1, Lccsancom/mbridge/msdk/click/a;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    int-to-long v4, v0

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 145
    :catch_0
    move-exception p1

    .line 146
    sget-boolean v0, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 147
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 149
    :cond_3
    :goto_0
    nop

    .line 150
    :cond_4
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method static synthetic c(Lccsancom/mbridge/msdk/click/a;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lccsancom/mbridge/msdk/click/a;->m:Z

    return p0
.end method

.method static synthetic d(Lccsancom/mbridge/msdk/click/a;)Lccsancom/mbridge/msdk/foundation/db/f;
    .locals 0

    .line 34
    iget-object p0, p0, Lccsancom/mbridge/msdk/click/a;->f:Lccsancom/mbridge/msdk/foundation/db/f;

    return-object p0
.end method

.method static synthetic e(Lccsancom/mbridge/msdk/click/a;)Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lccsancom/mbridge/msdk/click/a;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lccsancom/mbridge/msdk/click/a;)V
    .locals 2

    .line 34
    nop

    .line 2869
    :try_start_0
    new-instance v0, Lccsanandroid/content/Intent;

    invoke-direct {v0}, Lccsanandroid/content/Intent;-><init>()V

    .line 2870
    const-string v1, "ExitApp"

    invoke-virtual {v0, v1}, Lccsanandroid/content/Intent;->setAction(Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 2871
    iget-object p0, p0, Lccsancom/mbridge/msdk/click/a;->g:Lccsanandroid/content/Context;

    invoke-virtual {p0, v0}, Lccsanandroid/content/Context;->sendBroadcast(Lccsanandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2874
    goto :goto_0

    .line 2872
    :catch_0
    move-exception p0

    .line 2873
    const-string v0, "MBridge SDK M"

    const-string v1, "Exception"

    invoke-static {v0, v1, p0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    :goto_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 106
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lccsancom/mbridge/msdk/click/a;->i:Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 110
    :goto_0
    return-void
.end method

.method public final a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 11

    .line 163
    :try_start_0
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/click/a;->b(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    return-void

    .line 166
    :cond_0
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getNoticeUrl()Ljava/lang/String;

    move-result-object v0

    .line 167
    iget-object v1, p0, Lccsancom/mbridge/msdk/click/a;->f:Lccsancom/mbridge/msdk/foundation/db/f;

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/db/b;->a(Lccsancom/mbridge/msdk/foundation/db/e;)Lccsancom/mbridge/msdk/foundation/db/b;

    move-result-object v1

    .line 168
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/db/b;->a()V

    .line 169
    nop

    .line 170
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lccsancom/mbridge/msdk/click/a;->d:Ljava/lang/String;

    .line 169
    invoke-virtual {v1, v2, v3}, Lccsancom/mbridge/msdk/foundation/db/b;->b(Ljava/lang/String;Ljava/lang/String;)Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;

    move-result-object v2

    .line 171
    if-eqz v2, :cond_2

    .line 172
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->getNoticeurl()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 173
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->setNoticeurl(Ljava/lang/String;)V

    .line 175
    :cond_1
    invoke-virtual {p1, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setJumpResult(Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;)V

    .line 176
    iget-object v3, p0, Lccsancom/mbridge/msdk/click/a;->d:Ljava/lang/String;

    invoke-virtual {v1, p1, v3}, Lccsancom/mbridge/msdk/foundation/db/b;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;)J

    .line 179
    :cond_2
    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/tools/u;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 180
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/i;->a()Lccsancom/mbridge/msdk/foundation/tools/i;

    move-result-object v1

    invoke-virtual {v1, p1}, Lccsancom/mbridge/msdk/foundation/tools/i;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 181
    iget-object v1, p0, Lccsancom/mbridge/msdk/click/a;->g:Lccsanandroid/content/Context;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getDeepLinkURL()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lccsancom/mbridge/msdk/click/b;->d(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&opdptype=1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 183
    invoke-direct {p0, p1, v0}, Lccsancom/mbridge/msdk/click/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;)V

    .line 184
    return-void

    .line 186
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&opdptype=0"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 187
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/i;->a()Lccsancom/mbridge/msdk/foundation/tools/i;

    move-result-object v1

    invoke-virtual {v1, p1}, Lccsancom/mbridge/msdk/foundation/tools/i;->b(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 189
    :cond_4
    invoke-direct {p0, p1, v0}, Lccsancom/mbridge/msdk/click/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;)V

    .line 191
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getUserActivation()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_7

    .line 192
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/a;->g:Lccsanandroid/content/Context;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lccsancom/mbridge/msdk/click/b;->c(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 193
    if-eqz v0, :cond_7

    .line 194
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/a;->g:Lccsanandroid/content/Context;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lccsancom/mbridge/msdk/click/b;->e(Lccsanandroid/content/Context;Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/a;->i:Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    if-eqz v0, :cond_5

    .line 196
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getClickURL()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;->onStartRedirection(Lccsancom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V

    .line 198
    :cond_5
    invoke-direct {p0, p1, v1}, Lccsancom/mbridge/msdk/click/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Z)V

    .line 199
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/a;->i:Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    if-eqz v0, :cond_6

    .line 200
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getClickURL()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;->onFinishRedirection(Lccsancom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V

    .line 201
    iget-object p1, p0, Lccsancom/mbridge/msdk/click/a;->i:Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/tools/t;->a(Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;)V

    .line 204
    :cond_6
    return-void

    .line 208
    :cond_7
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getLinkType()I

    move-result v0

    .line 209
    invoke-direct {p0}, Lccsancom/mbridge/msdk/click/a;->b()I

    move-result v3

    .line 211
    const/4 v4, 0x4

    const/16 v5, 0x9

    const/16 v6, 0x8

    const/4 v7, 0x0

    if-eq v0, v6, :cond_9

    if-eq v0, v5, :cond_9

    if-ne v0, v4, :cond_8

    goto :goto_0

    :cond_8
    const/4 v8, 0x0

    goto :goto_1

    :cond_9
    :goto_0
    const/4 v8, 0x1

    .line 212
    :goto_1
    const/4 v9, 0x2

    if-eqz v8, :cond_14

    .line 213
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getClickURL()Ljava/lang/String;

    move-result-object v8

    .line 214
    iget-object v10, p0, Lccsancom/mbridge/msdk/click/a;->i:Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    if-eqz v10, :cond_a

    .line 215
    invoke-interface {v10, p1, v8}, Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;->onStartRedirection(Lccsancom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V

    .line 217
    :cond_a
    invoke-static {v8}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 218
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/a;->i:Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    if-eqz v0, :cond_b

    .line 219
    invoke-interface {v0, p1, v8}, Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;->onRedirectionFailed(Lccsancom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V

    .line 221
    :cond_b
    invoke-direct {p0, v2, p1, v1}, Lccsancom/mbridge/msdk/click/a;->a(Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Z)V

    .line 222
    return-void

    .line 224
    :cond_c
    if-ne v0, v6, :cond_e

    .line 225
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/a;->g:Lccsanandroid/content/Context;

    iget-object v1, p0, Lccsancom/mbridge/msdk/click/a;->i:Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    invoke-static {v0, v8, p1, v1}, Lccsancom/mbridge/msdk/foundation/tools/t;->a(Lccsanandroid/content/Context;Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;)V

    .line 226
    invoke-direct {p0, v2, p1, v7}, Lccsancom/mbridge/msdk/click/a;->a(Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Z)V

    .line 227
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/a;->i:Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    if-eqz v0, :cond_d

    .line 228
    invoke-interface {v0, p1, v8}, Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;->onFinishRedirection(Lccsancom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V

    .line 230
    :cond_d
    return-void

    .line 231
    :cond_e
    if-ne v0, v5, :cond_10

    .line 232
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/a;->g:Lccsanandroid/content/Context;

    iget-object v1, p0, Lccsancom/mbridge/msdk/click/a;->i:Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    invoke-static {v0, v8, v1}, Lccsancom/mbridge/msdk/foundation/tools/t;->b(Lccsanandroid/content/Context;Ljava/lang/String;Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;)V

    .line 233
    invoke-direct {p0, v2, p1, v7}, Lccsancom/mbridge/msdk/click/a;->a(Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Z)V

    .line 234
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/a;->i:Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    if-eqz v0, :cond_f

    .line 235
    invoke-interface {v0, p1, v8}, Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;->onFinishRedirection(Lccsancom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V

    .line 237
    :cond_f
    return-void

    .line 238
    :cond_10
    if-ne v0, v4, :cond_12

    .line 239
    if-ne v3, v9, :cond_11

    .line 240
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/a;->g:Lccsanandroid/content/Context;

    iget-object v1, p0, Lccsancom/mbridge/msdk/click/a;->i:Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    invoke-static {v0, v8, p1, v1}, Lccsancom/mbridge/msdk/foundation/tools/t;->a(Lccsanandroid/content/Context;Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;)V

    goto :goto_2

    .line 242
    :cond_11
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/a;->g:Lccsanandroid/content/Context;

    iget-object v1, p0, Lccsancom/mbridge/msdk/click/a;->i:Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    invoke-static {v0, v8, v1}, Lccsancom/mbridge/msdk/foundation/tools/t;->b(Lccsanandroid/content/Context;Ljava/lang/String;Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;)V

    .line 245
    :cond_12
    :goto_2
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/a;->i:Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    if-eqz v0, :cond_13

    .line 246
    invoke-interface {v0, p1, v8}, Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;->onFinishRedirection(Lccsancom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V

    .line 248
    :cond_13
    invoke-direct {p0, v2, p1, v7}, Lccsancom/mbridge/msdk/click/a;->a(Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Z)V

    .line 249
    goto/16 :goto_4

    :cond_14
    if-ne v0, v9, :cond_1a

    .line 250
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getClickURL()Ljava/lang/String;

    move-result-object v0

    const-string v1, "market://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 251
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getClickURL()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://play.google.com/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_3

    .line 264
    :cond_15
    invoke-direct {p0, p1, v7}, Lccsancom/mbridge/msdk/click/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Z)V

    goto :goto_4

    .line 252
    :cond_16
    :goto_3
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/a;->i:Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    if-eqz v0, :cond_17

    .line 253
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getClickURL()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;->onStartRedirection(Lccsancom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V

    .line 255
    :cond_17
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/a;->g:Lccsanandroid/content/Context;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getClickURL()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lccsancom/mbridge/msdk/click/a;->i:Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    invoke-static {v0, v1, v4}, Lccsancom/mbridge/msdk/foundation/tools/t$a;->a(Lccsanandroid/content/Context;Ljava/lang/String;Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 256
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getClickURL()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/click/a;->i:Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    invoke-direct {p0, v3, v0, p1, v1}, Lccsancom/mbridge/msdk/click/a;->a(ILjava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;)V

    .line 258
    :cond_18
    invoke-direct {p0, v2, p1, v7}, Lccsancom/mbridge/msdk/click/a;->a(Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Z)V

    .line 259
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/a;->i:Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    if-eqz v0, :cond_19

    .line 260
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getClickURL()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;->onFinishRedirection(Lccsancom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V

    .line 262
    :cond_19
    return-void

    .line 265
    :cond_1a
    const/4 v3, 0x3

    if-ne v0, v3, :cond_1b

    .line 266
    invoke-direct {p0, p1, v7}, Lccsancom/mbridge/msdk/click/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Z)V

    goto :goto_4

    .line 268
    :cond_1b
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getClickURL()Ljava/lang/String;

    move-result-object v0

    .line 269
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 270
    iget-object v3, p0, Lccsancom/mbridge/msdk/click/a;->i:Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    if-eqz v3, :cond_1c

    .line 271
    invoke-interface {v3, p1, v0}, Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;->onRedirectionFailed(Lccsancom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V

    .line 273
    :cond_1c
    invoke-direct {p0, v2, p1, v1}, Lccsancom/mbridge/msdk/click/a;->a(Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Z)V

    .line 274
    return-void

    .line 276
    :cond_1d
    iget-object v3, p0, Lccsancom/mbridge/msdk/click/a;->i:Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    if-eqz v3, :cond_1e

    .line 277
    invoke-interface {v3, p1, v0}, Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;->onFinishRedirection(Lccsancom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V

    .line 279
    :cond_1e
    iget-object v3, p0, Lccsancom/mbridge/msdk/click/a;->g:Lccsanandroid/content/Context;

    iget-object v4, p0, Lccsancom/mbridge/msdk/click/a;->i:Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    invoke-static {v3, v0, v4}, Lccsancom/mbridge/msdk/foundation/tools/t;->b(Lccsanandroid/content/Context;Ljava/lang/String;Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;)V

    .line 280
    invoke-direct {p0, v2, p1, v1}, Lccsancom/mbridge/msdk/click/a;->a(Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    :goto_4
    goto :goto_5

    .line 282
    :catchall_0
    move-exception p1

    .line 283
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MBridge SDK M"

    invoke-static {v1, v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 285
    :goto_5
    return-void
.end method

.method public final a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsancom/mbridge/msdk/out/NativeListener$NativeAdListener;)V
    .locals 0

    .line 113
    if-eqz p2, :cond_0

    .line 114
    if-eqz p1, :cond_0

    .line 115
    invoke-interface {p2, p1}, Lccsancom/mbridge/msdk/out/NativeListener$NativeAdListener;->onAdClick(Lccsancom/mbridge/msdk/out/Campaign;)V

    .line 118
    :cond_0
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/click/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 119
    return-void
.end method

.method public final a(Lccsancom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V
    .locals 2

    .line 594
    :try_start_0
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    if-nez p1, :cond_0

    goto :goto_1

    .line 597
    :cond_0
    const/4 v0, 0x0

    .line 598
    instance-of v1, p1, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v1, :cond_1

    .line 599
    move-object v0, p1

    check-cast v0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 601
    :cond_1
    const-string p1, "market://"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "https://play.google.com/"

    .line 602
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 603
    :cond_2
    iget-object p1, p0, Lccsancom/mbridge/msdk/click/a;->g:Lccsanandroid/content/Context;

    iget-object v1, p0, Lccsancom/mbridge/msdk/click/a;->i:Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    invoke-static {p1, p2, v1}, Lccsancom/mbridge/msdk/foundation/tools/t$a;->a(Lccsanandroid/content/Context;Ljava/lang/String;Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 605
    if-eqz v0, :cond_5

    .line 606
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 607
    iget-object p1, p0, Lccsancom/mbridge/msdk/click/a;->g:Lccsanandroid/content/Context;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "market://details?id="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lccsancom/mbridge/msdk/click/a;->i:Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    .line 607
    invoke-static {p1, p2, v0}, Lccsancom/mbridge/msdk/foundation/tools/t$a;->a(Lccsanandroid/content/Context;Ljava/lang/String;Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;)Z

    goto :goto_0

    .line 610
    :cond_3
    invoke-direct {p0}, Lccsancom/mbridge/msdk/click/a;->b()I

    move-result p1

    .line 611
    const/4 p2, 0x2

    if-ne p1, p2, :cond_4

    .line 612
    iget-object p1, p0, Lccsancom/mbridge/msdk/click/a;->g:Lccsanandroid/content/Context;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getClickURL()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lccsancom/mbridge/msdk/click/a;->i:Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    invoke-static {p1, p2, v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/t;->a(Lccsanandroid/content/Context;Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;)V

    goto :goto_0

    .line 614
    :cond_4
    iget-object p1, p0, Lccsancom/mbridge/msdk/click/a;->g:Lccsanandroid/content/Context;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getClickURL()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lccsancom/mbridge/msdk/click/a;->i:Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    invoke-static {p1, p2, v0}, Lccsancom/mbridge/msdk/foundation/tools/t;->b(Lccsanandroid/content/Context;Ljava/lang/String;Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 624
    :cond_5
    :goto_0
    goto :goto_2

    .line 595
    :cond_6
    :goto_1
    return-void

    .line 622
    :catch_0
    move-exception p1

    .line 623
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 625
    :goto_2
    return-void
.end method

.method public final a(Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lccsancom/mbridge/msdk/click/a;->i:Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    .line 82
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lccsancom/mbridge/msdk/click/a;->d:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 89
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/click/a;->n:Z

    .line 90
    return-void
.end method
