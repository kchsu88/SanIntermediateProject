.class final Lccsancom/mbridge/msdk/reward/adapter/d$3$3;
.super Ljava/lang/Object;
.source "RewardMVVideoAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/reward/adapter/d$3;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lccsancom/mbridge/msdk/reward/adapter/d$3;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/reward/adapter/d$3;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1740
    iput-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$3$3;->e:Lccsancom/mbridge/msdk/reward/adapter/d$3;

    iput-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/d$3$3;->a:Ljava/lang/String;

    iput-object p3, p0, Lccsancom/mbridge/msdk/reward/adapter/d$3$3;->b:Ljava/util/List;

    iput-object p4, p0, Lccsancom/mbridge/msdk/reward/adapter/d$3$3;->c:Ljava/lang/String;

    iput-object p5, p0, Lccsancom/mbridge/msdk/reward/adapter/d$3$3;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1743
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/d$3$3;->e:Lccsancom/mbridge/msdk/reward/adapter/d$3;

    iget-object v0, v0, Lccsancom/mbridge/msdk/reward/adapter/d$3;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$3$3;->a:Ljava/lang/String;

    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/adapter/d$3$3;->e:Lccsancom/mbridge/msdk/reward/adapter/d$3;

    iget-object v2, v2, Lccsancom/mbridge/msdk/reward/adapter/d$3;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/adapter/d;->b(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lccsancom/mbridge/msdk/reward/adapter/d$3$3;->e:Lccsancom/mbridge/msdk/reward/adapter/d$3;

    iget-object v3, v3, Lccsancom/mbridge/msdk/reward/adapter/d$3;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v3}, Lccsancom/mbridge/msdk/reward/adapter/d;->f(Lccsancom/mbridge/msdk/reward/adapter/d;)Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(Lccsancom/mbridge/msdk/reward/adapter/d;Ljava/lang/String;Ljava/util/List;Z)V

    .line 1744
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/d$3$3;->e:Lccsancom/mbridge/msdk/reward/adapter/d$3;

    iget-object v0, v0, Lccsancom/mbridge/msdk/reward/adapter/d$3;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/adapter/d;->i(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsanandroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1745
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/d$3$3;->e:Lccsancom/mbridge/msdk/reward/adapter/d$3;

    iget-object v0, v0, Lccsancom/mbridge/msdk/reward/adapter/d$3;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/adapter/d;->i(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsanandroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->removeMessages(I)V

    .line 1747
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/d$3$3;->e:Lccsancom/mbridge/msdk/reward/adapter/d$3;

    iget-object v0, v0, Lccsancom/mbridge/msdk/reward/adapter/d$3;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    iget-boolean v0, v0, Lccsancom/mbridge/msdk/reward/adapter/d;->h:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/d$3$3;->e:Lccsancom/mbridge/msdk/reward/adapter/d$3;

    iget-object v0, v0, Lccsancom/mbridge/msdk/reward/adapter/d$3;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsancom/mbridge/msdk/reward/adapter/b;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1748
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/d$3$3;->e:Lccsancom/mbridge/msdk/reward/adapter/d$3;

    iget-object v0, v0, Lccsancom/mbridge/msdk/reward/adapter/d$3;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lccsancom/mbridge/msdk/reward/adapter/d;->h:Z

    .line 1749
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/d$3$3;->e:Lccsancom/mbridge/msdk/reward/adapter/d$3;

    iget-object v0, v0, Lccsancom/mbridge/msdk/reward/adapter/d$3;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/adapter/d;->d(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1750
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/d$3$3;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1751
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/d$3$3;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/d$3$3;->e:Lccsancom/mbridge/msdk/reward/adapter/d$3;

    iget-object v0, v0, Lccsancom/mbridge/msdk/reward/adapter/d$3;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/adapter/d;->h(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsanandroid/content/Context;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccsancom/mbridge/msdk/reward/adapter/d$3$3;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/d$3$3;->e:Lccsancom/mbridge/msdk/reward/adapter/d$3;

    iget-object v0, v0, Lccsancom/mbridge/msdk/reward/adapter/d$3;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/adapter/d;->d(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/d$3$3;->e:Lccsancom/mbridge/msdk/reward/adapter/d$3;

    iget-object v0, v0, Lccsancom/mbridge/msdk/reward/adapter/d$3;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/adapter/d;->f(Lccsancom/mbridge/msdk/reward/adapter/d;)Z

    move-result v5

    iget-object v6, p0, Lccsancom/mbridge/msdk/reward/adapter/d$3$3;->d:Ljava/lang/String;

    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/d$3$3;->e:Lccsancom/mbridge/msdk/reward/adapter/d$3;

    iget-object v0, v0, Lccsancom/mbridge/msdk/reward/adapter/d$3;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v1 .. v7}, Lccsancom/mbridge/msdk/reward/b/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1754
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/d$3$3;->e:Lccsancom/mbridge/msdk/reward/adapter/d$3;

    iget-object v0, v0, Lccsancom/mbridge/msdk/reward/adapter/d$3;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsancom/mbridge/msdk/reward/adapter/b;

    move-result-object v0

    const-string v1, "errorCode: 3201 errorMessage: campaign resource download failed"

    invoke-interface {v0, v1}, Lccsancom/mbridge/msdk/reward/adapter/b;->a(Ljava/lang/String;)V

    .line 1756
    :cond_2
    return-void
.end method
