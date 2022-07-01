.class public final Lccsancom/mbridge/msdk/click/CommonJumpLoader;
.super Lccsancom/mbridge/msdk/click/c;
.source "CommonJumpLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;
    }
.end annotation


# instance fields
.field a:Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Lccsancom/mbridge/msdk/click/d;

.field private e:Z

.field private f:Lccsancom/mbridge/msdk/foundation/same/e/b;

.field private g:Lccsancom/mbridge/msdk/click/g;

.field private h:Lccsanandroid/os/Handler;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 2

    .line 40
    invoke-direct {p0}, Lccsancom/mbridge/msdk/click/c;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/mbridge/msdk/click/CommonJumpLoader;->b:I

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/mbridge/msdk/click/CommonJumpLoader;->c:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lccsancom/mbridge/msdk/click/CommonJumpLoader;->a:Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;

    .line 27
    iput-object v0, p0, Lccsancom/mbridge/msdk/click/CommonJumpLoader;->d:Lccsancom/mbridge/msdk/click/d;

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/click/CommonJumpLoader;->e:Z

    .line 34
    new-instance v0, Lccsanandroid/os/Handler;

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/click/CommonJumpLoader;->h:Lccsanandroid/os/Handler;

    .line 41
    new-instance v0, Lccsancom/mbridge/msdk/foundation/same/e/b;

    invoke-direct {v0, p1}, Lccsancom/mbridge/msdk/foundation/same/e/b;-><init>(Lccsanandroid/content/Context;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/click/CommonJumpLoader;->f:Lccsancom/mbridge/msdk/foundation/same/e/b;

    .line 43
    new-instance v0, Lccsancom/mbridge/msdk/click/g;

    invoke-direct {v0, p1}, Lccsancom/mbridge/msdk/click/g;-><init>(Lccsanandroid/content/Context;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/click/CommonJumpLoader;->g:Lccsancom/mbridge/msdk/click/g;

    .line 45
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/click/CommonJumpLoader;->e:Z

    .line 102
    return-void
.end method

.method public final a(Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsancom/mbridge/msdk/click/d;)V
    .locals 10

    .line 62
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getClickURL()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/click/CommonJumpLoader;->c:Ljava/lang/String;

    .line 63
    iput-object p3, p0, Lccsancom/mbridge/msdk/click/CommonJumpLoader;->d:Lccsancom/mbridge/msdk/click/d;

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/mbridge/msdk/click/CommonJumpLoader;->a:Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;

    .line 66
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getClick_mode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "5"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getClick_mode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "6"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    const/4 v4, 0x1

    .line 67
    :goto_1
    iget-object v1, p0, Lccsancom/mbridge/msdk/click/CommonJumpLoader;->g:Lccsancom/mbridge/msdk/click/g;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getClickURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v3, p3

    move-object v6, p1

    move-object v7, p2

    invoke-virtual/range {v1 .. v9}, Lccsancom/mbridge/msdk/click/g;->a(Ljava/lang/String;Lccsancom/mbridge/msdk/click/d;ZLjava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;ZZ)V

    .line 68
    return-void
.end method

.method public final a(Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsancom/mbridge/msdk/click/d;Ljava/lang/String;ZZ)V
    .locals 10

    .line 48
    move-object v0, p0

    move-object v2, p4

    iput-object v2, v0, Lccsancom/mbridge/msdk/click/CommonJumpLoader;->c:Ljava/lang/String;

    .line 49
    move-object v3, p3

    iput-object v3, v0, Lccsancom/mbridge/msdk/click/CommonJumpLoader;->d:Lccsancom/mbridge/msdk/click/d;

    .line 50
    const/4 v1, 0x0

    iput-object v1, v0, Lccsancom/mbridge/msdk/click/CommonJumpLoader;->a:Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;

    .line 52
    nop

    .line 53
    nop

    .line 54
    const/4 v1, 0x0

    if-eqz p2, :cond_2

    .line 55
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getClick_mode()Ljava/lang/String;

    move-result-object v4

    const-string v5, "5"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getClick_mode()Ljava/lang/String;

    move-result-object v4

    const-string v5, "6"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 56
    :cond_1
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    move v4, v1

    goto :goto_0

    .line 54
    :cond_2
    const-string v4, ""

    move-object v5, v4

    const/4 v4, 0x0

    .line 58
    :goto_0
    iget-object v1, v0, Lccsancom/mbridge/msdk/click/CommonJumpLoader;->g:Lccsancom/mbridge/msdk/click/g;

    move-object v2, p4

    move-object v3, p3

    move-object v6, p1

    move-object v7, p2

    move v8, p5

    move/from16 v9, p6

    invoke-virtual/range {v1 .. v9}, Lccsancom/mbridge/msdk/click/g;->a(Ljava/lang/String;Lccsancom/mbridge/msdk/click/d;ZLjava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;ZZ)V

    .line 60
    return-void
.end method
