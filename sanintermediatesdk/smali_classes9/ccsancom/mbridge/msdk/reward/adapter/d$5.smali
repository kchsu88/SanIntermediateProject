.class final Lccsancom/mbridge/msdk/reward/adapter/d$5;
.super Ljava/lang/Object;
.source "RewardMVVideoAdapter.java"

# interfaces
.implements Lccsancom/mbridge/msdk/reward/adapter/c$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/reward/adapter/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

.field final synthetic b:Z

.field final synthetic c:I

.field final synthetic d:Lccsancom/mbridge/msdk/reward/adapter/d;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/reward/adapter/d;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;ZI)V
    .locals 0

    .line 1810
    iput-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$5;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    iput-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/d$5;->a:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iput-boolean p3, p0, Lccsancom/mbridge/msdk/reward/adapter/d$5;->b:Z

    iput p4, p0, Lccsancom/mbridge/msdk/reward/adapter/d$5;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 1814
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/d$5;->a:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object p4, p0, Lccsancom/mbridge/msdk/reward/adapter/d$5;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {p4}, Lccsancom/mbridge/msdk/reward/adapter/d;->h(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsanandroid/content/Context;

    move-result-object v1

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resource download success is tpl :"

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lccsancom/mbridge/msdk/reward/adapter/d$5;->b:Z

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object p4, p0, Lccsancom/mbridge/msdk/reward/adapter/d$5;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {p4}, Lccsancom/mbridge/msdk/reward/adapter/d;->d(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/lang/String;

    move-result-object v3

    iget-object p4, p0, Lccsancom/mbridge/msdk/reward/adapter/d$5;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {p4}, Lccsancom/mbridge/msdk/reward/adapter/d;->f(Lccsancom/mbridge/msdk/reward/adapter/d;)Z

    move-result v4

    iget-object p4, p0, Lccsancom/mbridge/msdk/reward/adapter/d$5;->a:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p4}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-object p4, p0, Lccsancom/mbridge/msdk/reward/adapter/d$5;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {p4}, Lccsancom/mbridge/msdk/reward/adapter/d;->g(Lccsancom/mbridge/msdk/reward/adapter/d;)J

    move-result-wide v9

    sub-long/2addr v7, v9

    move-object v5, p3

    invoke-static/range {v0 .. v8}, Lccsancom/mbridge/msdk/reward/b/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1817
    goto :goto_0

    .line 1815
    :catch_0
    move-exception p4

    .line 1818
    :goto_0
    iget-object p4, p0, Lccsancom/mbridge/msdk/reward/adapter/d$5;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    const/4 v0, 0x1

    iput-boolean v0, p4, Lccsancom/mbridge/msdk/reward/adapter/d;->e:Z

    .line 1819
    iget-object p4, p0, Lccsancom/mbridge/msdk/reward/adapter/d$5;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    iget-boolean p4, p4, Lccsancom/mbridge/msdk/reward/adapter/d;->d:Z

    if-eqz p4, :cond_0

    iget-object p4, p0, Lccsancom/mbridge/msdk/reward/adapter/d$5;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    iget-boolean p4, p4, Lccsancom/mbridge/msdk/reward/adapter/d;->f:Z

    if-nez p4, :cond_0

    iget-object p4, p0, Lccsancom/mbridge/msdk/reward/adapter/d$5;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {p4}, Lccsancom/mbridge/msdk/reward/adapter/d;->i(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsanandroid/os/Handler;

    move-result-object p4

    if-eqz p4, :cond_0

    .line 1820
    iget-object p4, p0, Lccsancom/mbridge/msdk/reward/adapter/d$5;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    iput-boolean v0, p4, Lccsancom/mbridge/msdk/reward/adapter/d;->f:Z

    .line 1821
    iget-object p4, p0, Lccsancom/mbridge/msdk/reward/adapter/d$5;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {p4}, Lccsancom/mbridge/msdk/reward/adapter/d;->i(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsanandroid/os/Handler;

    move-result-object p4

    new-instance v0, Lccsancom/mbridge/msdk/reward/adapter/d$5$1;

    invoke-direct {v0, p0, p3, p1, p2}, Lccsancom/mbridge/msdk/reward/adapter/d$5$1;-><init>(Lccsancom/mbridge/msdk/reward/adapter/d$5;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p4, v0}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1890
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1894
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$5;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    const/4 p4, 0x0

    iput-boolean p4, p1, Lccsancom/mbridge/msdk/reward/adapter/d;->e:Z

    .line 1895
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$5;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/adapter/d;->b(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$5;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v1}, Lccsancom/mbridge/msdk/reward/adapter/d;->f(Lccsancom/mbridge/msdk/reward/adapter/d;)Z

    move-result v1

    invoke-static {p1, p2, v0, v1}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(Lccsancom/mbridge/msdk/reward/adapter/d;Ljava/lang/String;Ljava/util/List;Z)V

    .line 1896
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$5;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/adapter/d;->b(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$5;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/adapter/d;->b(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 1898
    :try_start_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$5;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/adapter/d;->b(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$5;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/adapter/d;->h(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsanandroid/content/Context;

    move-result-object v1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "resource download failed: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is tpl: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lccsancom/mbridge/msdk/reward/adapter/d$5;->b:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$5;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/adapter/d;->d(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$5;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/adapter/d;->f(Lccsancom/mbridge/msdk/reward/adapter/d;)Z

    move-result v4

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$5;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/adapter/d;->b(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-object v5, p0, Lccsancom/mbridge/msdk/reward/adapter/d$5;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v5}, Lccsancom/mbridge/msdk/reward/adapter/d;->g(Lccsancom/mbridge/msdk/reward/adapter/d;)J

    move-result-wide v7

    sub-long v7, p1, v7

    move-object v5, p3

    invoke-static/range {v0 .. v8}, Lccsancom/mbridge/msdk/reward/b/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1901
    goto :goto_0

    .line 1899
    :catch_0
    move-exception p1

    .line 1903
    :cond_0
    :goto_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$5;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/adapter/d;->i(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsanandroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1904
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$5;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/adapter/d;->i(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsanandroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Lccsanandroid/os/Handler;->removeMessages(I)V

    .line 1906
    :cond_1
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$5;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsancom/mbridge/msdk/reward/adapter/b;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1907
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$5;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    iget-boolean p1, p1, Lccsancom/mbridge/msdk/reward/adapter/d;->h:Z

    if-nez p1, :cond_3

    .line 1908
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$5;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lccsancom/mbridge/msdk/reward/adapter/d;->h:Z

    .line 1909
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$5;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/adapter/d;->b(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$5;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/adapter/d;->b(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 1910
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$5;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/adapter/d;->b(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$5;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/adapter/d;->h(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsanandroid/content/Context;

    move-result-object v1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$5;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/adapter/d;->d(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$5;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/adapter/d;->f(Lccsancom/mbridge/msdk/reward/adapter/d;)Z

    move-result v4

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$5;->a:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v6

    move-object v5, p3

    invoke-static/range {v0 .. v6}, Lccsancom/mbridge/msdk/reward/b/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1912
    :cond_2
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$5;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsancom/mbridge/msdk/reward/adapter/b;

    move-result-object p1

    const-string p2, "errorCode: 3203 errorMessage: tpl temp resource download failed"

    invoke-interface {p1, p2}, Lccsancom/mbridge/msdk/reward/adapter/b;->a(Ljava/lang/String;)V

    .line 1915
    :cond_3
    return-void
.end method
