.class final Lccsancom/mbridge/msdk/click/a$4;
.super Ljava/lang/Object;
.source "CommonClickControl.java"

# interfaces
.implements Lccsancom/mbridge/msdk/click/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/click/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

.field final synthetic b:Z

.field final synthetic c:Z

.field final synthetic d:Lccsancom/mbridge/msdk/click/a;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/click/a;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;ZZ)V
    .locals 0

    .line 447
    iput-object p1, p0, Lccsancom/mbridge/msdk/click/a$4;->d:Lccsancom/mbridge/msdk/click/a;

    iput-object p2, p0, Lccsancom/mbridge/msdk/click/a$4;->a:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iput-boolean p3, p0, Lccsancom/mbridge/msdk/click/a$4;->b:Z

    iput-boolean p4, p0, Lccsancom/mbridge/msdk/click/a$4;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 0

    .line 451
    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 480
    sget-object v0, Lccsancom/mbridge/msdk/click/a;->c:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 481
    sget-object v0, Lccsancom/mbridge/msdk/click/a;->c:Ljava/util/Set;

    iget-object v1, p0, Lccsancom/mbridge/msdk/click/a$4;->a:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 483
    :cond_0
    instance-of v0, p1, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;

    if-eqz v0, :cond_1

    .line 484
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/a$4;->d:Lccsancom/mbridge/msdk/click/a;

    check-cast p1, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;

    iget-object v1, p0, Lccsancom/mbridge/msdk/click/a$4;->a:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    const/4 v2, 0x1

    invoke-static {v0, p1, v1, v2}, Lccsancom/mbridge/msdk/click/a;->a(Lccsancom/mbridge/msdk/click/a;Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Z)V

    .line 486
    :cond_1
    iget-object p1, p0, Lccsancom/mbridge/msdk/click/a$4;->d:Lccsancom/mbridge/msdk/click/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/click/a;->b(Lccsancom/mbridge/msdk/click/a;)Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 487
    iget-object p1, p0, Lccsancom/mbridge/msdk/click/a$4;->d:Lccsancom/mbridge/msdk/click/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/click/a;->b(Lccsancom/mbridge/msdk/click/a;)Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    move-result-object p1

    iget-object v0, p0, Lccsancom/mbridge/msdk/click/a$4;->a:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-interface {p1, v0, p2}, Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;->onRedirectionFailed(Lccsancom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V

    .line 489
    :cond_2
    iget-object p1, p0, Lccsancom/mbridge/msdk/click/a$4;->d:Lccsancom/mbridge/msdk/click/a;

    iget-boolean p2, p0, Lccsancom/mbridge/msdk/click/a$4;->c:Z

    iget-object v0, p0, Lccsancom/mbridge/msdk/click/a$4;->a:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-static {p1, p2, v0}, Lccsancom/mbridge/msdk/click/a;->a(Lccsancom/mbridge/msdk/click/a;ZLccsancom/mbridge/msdk/out/Campaign;)V

    .line 490
    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 4

    .line 460
    sget-object v0, Lccsancom/mbridge/msdk/click/a;->c:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 461
    sget-object v0, Lccsancom/mbridge/msdk/click/a;->c:Ljava/util/Set;

    iget-object v1, p0, Lccsancom/mbridge/msdk/click/a$4;->a:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 464
    :cond_0
    instance-of v0, p1, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;

    if-eqz v0, :cond_2

    .line 465
    check-cast p1, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;

    .line 466
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/a$4;->a:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setJumpResult(Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;)V

    .line 468
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/a$4;->d:Lccsancom/mbridge/msdk/click/a;

    iget-object v1, p0, Lccsancom/mbridge/msdk/click/a$4;->a:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-boolean v2, p0, Lccsancom/mbridge/msdk/click/a$4;->b:Z

    invoke-static {v0}, Lccsancom/mbridge/msdk/click/a;->c(Lccsancom/mbridge/msdk/click/a;)Z

    move-result v3

    invoke-static {v0, v1, p1, v2, v3}, Lccsancom/mbridge/msdk/click/a;->a(Lccsancom/mbridge/msdk/click/a;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;ZZ)V

    .line 469
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->isjumpDone()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 470
    iget-object p1, p0, Lccsancom/mbridge/msdk/click/a$4;->d:Lccsancom/mbridge/msdk/click/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/click/a;->d(Lccsancom/mbridge/msdk/click/a;)Lccsancom/mbridge/msdk/foundation/db/f;

    move-result-object p1

    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/db/b;->a(Lccsancom/mbridge/msdk/foundation/db/e;)Lccsancom/mbridge/msdk/foundation/db/b;

    move-result-object p1

    .line 471
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/a$4;->a:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v1, p0, Lccsancom/mbridge/msdk/click/a$4;->d:Lccsancom/mbridge/msdk/click/a;

    invoke-static {v1}, Lccsancom/mbridge/msdk/click/a;->e(Lccsancom/mbridge/msdk/click/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lccsancom/mbridge/msdk/foundation/db/b;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;)J

    .line 473
    :cond_1
    iget-object p1, p0, Lccsancom/mbridge/msdk/click/a$4;->d:Lccsancom/mbridge/msdk/click/a;

    iget-boolean v0, p0, Lccsancom/mbridge/msdk/click/a$4;->c:Z

    iget-object v1, p0, Lccsancom/mbridge/msdk/click/a$4;->a:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-static {p1, v0, v1}, Lccsancom/mbridge/msdk/click/a;->a(Lccsancom/mbridge/msdk/click/a;ZLccsancom/mbridge/msdk/out/Campaign;)V

    .line 476
    :cond_2
    return-void
.end method
