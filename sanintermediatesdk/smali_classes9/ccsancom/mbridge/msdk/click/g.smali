.class public final Lccsancom/mbridge/msdk/click/g;
.super Lccsancom/mbridge/msdk/click/c;
.source "WebViewSpiderLoader.java"

# interfaces
.implements Lccsancom/mbridge/msdk/foundation/same/e/a$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/click/g$a;
    }
.end annotation


# instance fields
.field private a:Lccsancom/mbridge/msdk/click/d;

.field private b:Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;

.field private c:Z

.field private d:Z

.field private e:Lccsanandroid/content/Context;

.field private f:Lccsancom/mbridge/msdk/foundation/same/e/b;

.field private g:Lccsancom/mbridge/msdk/click/e$a;

.field private h:Lccsanandroid/os/Handler;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 2

    .line 44
    invoke-direct {p0}, Lccsancom/mbridge/msdk/click/c;-><init>()V

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/click/g;->c:Z

    .line 38
    new-instance v0, Lccsanandroid/os/Handler;

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/click/g;->h:Lccsanandroid/os/Handler;

    .line 45
    iput-object p1, p0, Lccsancom/mbridge/msdk/click/g;->e:Lccsanandroid/content/Context;

    .line 46
    new-instance v0, Lccsancom/mbridge/msdk/foundation/same/e/b;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lccsancom/mbridge/msdk/foundation/same/e/b;-><init>(Lccsanandroid/content/Context;I)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/click/g;->f:Lccsancom/mbridge/msdk/foundation/same/e/b;

    .line 47
    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/click/g;Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;)Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;
    .locals 0

    .line 22
    iput-object p1, p0, Lccsancom/mbridge/msdk/click/g;->b:Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;

    return-object p1
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/click/g;Lccsancom/mbridge/msdk/click/e$a;)Lccsancom/mbridge/msdk/click/e$a;
    .locals 0

    .line 22
    iput-object p1, p0, Lccsancom/mbridge/msdk/click/g;->g:Lccsancom/mbridge/msdk/click/e$a;

    return-object p1
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/click/g;)Z
    .locals 0

    .line 22
    iget-boolean p0, p0, Lccsancom/mbridge/msdk/click/g;->d:Z

    return p0
.end method

.method static synthetic b(Lccsancom/mbridge/msdk/click/g;)Z
    .locals 0

    .line 22
    iget-boolean p0, p0, Lccsancom/mbridge/msdk/click/g;->c:Z

    return p0
.end method

.method static synthetic c(Lccsancom/mbridge/msdk/click/g;)Lccsancom/mbridge/msdk/click/e$a;
    .locals 0

    .line 22
    iget-object p0, p0, Lccsancom/mbridge/msdk/click/g;->g:Lccsancom/mbridge/msdk/click/e$a;

    return-object p0
.end method

.method static synthetic d(Lccsancom/mbridge/msdk/click/g;)Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;
    .locals 0

    .line 22
    iget-object p0, p0, Lccsancom/mbridge/msdk/click/g;->b:Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;

    return-object p0
.end method

.method static synthetic e(Lccsancom/mbridge/msdk/click/g;)Lccsancom/mbridge/msdk/click/d;
    .locals 0

    .line 22
    iget-object p0, p0, Lccsancom/mbridge/msdk/click/g;->a:Lccsancom/mbridge/msdk/click/d;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/click/g;->c:Z

    .line 58
    return-void
.end method

.method public final a(Lccsancom/mbridge/msdk/foundation/same/e/a$a;)V
    .locals 1

    .line 354
    sget-object v0, Lccsancom/mbridge/msdk/foundation/same/e/a$a;->e:Lccsancom/mbridge/msdk/foundation/same/e/a$a;

    if-ne p1, v0, :cond_1

    .line 355
    iget-boolean p1, p0, Lccsancom/mbridge/msdk/click/g;->c:Z

    if-nez p1, :cond_0

    .line 356
    return-void

    .line 359
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/click/g;->h:Lccsanandroid/os/Handler;

    new-instance v0, Lccsancom/mbridge/msdk/click/g$1;

    invoke-direct {v0, p0}, Lccsancom/mbridge/msdk/click/g$1;-><init>(Lccsancom/mbridge/msdk/click/g;)V

    invoke-virtual {p1, v0}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 374
    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;Lccsancom/mbridge/msdk/click/d;ZLjava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;ZZ)V
    .locals 12

    .line 51
    move-object v9, p0

    move-object v0, p2

    iput-object v0, v9, Lccsancom/mbridge/msdk/click/g;->a:Lccsancom/mbridge/msdk/click/d;

    .line 52
    move v0, p3

    iput-boolean v0, v9, Lccsancom/mbridge/msdk/click/g;->d:Z

    .line 53
    iget-object v10, v9, Lccsancom/mbridge/msdk/click/g;->f:Lccsancom/mbridge/msdk/foundation/same/e/b;

    new-instance v11, Lccsancom/mbridge/msdk/click/g$a;

    iget-object v2, v9, Lccsancom/mbridge/msdk/click/g;->e:Lccsanandroid/content/Context;

    move-object v0, v11

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lccsancom/mbridge/msdk/click/g$a;-><init>(Lccsancom/mbridge/msdk/click/g;Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;ZZ)V

    invoke-virtual {v10, v11, p0}, Lccsancom/mbridge/msdk/foundation/same/e/b;->a(Lccsancom/mbridge/msdk/foundation/same/e/a;Lccsancom/mbridge/msdk/foundation/same/e/a$b;)V

    .line 54
    return-void
.end method
