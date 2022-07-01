.class final Lccsancom/mbridge/msdk/reward/adapter/d$5$1$1;
.super Ljava/lang/Object;
.source "RewardMVVideoAdapter.java"

# interfaces
.implements Lccsancom/mbridge/msdk/reward/adapter/c$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/reward/adapter/d$5$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/reward/adapter/d$5$1;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/reward/adapter/d$5$1;)V
    .locals 0

    .line 1824
    iput-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$5$1$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d$5$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/videocommon/a$a;)V
    .locals 9

    .line 1828
    :try_start_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$5$1$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d$5$1;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/adapter/d$5$1;->d:Lccsancom/mbridge/msdk/reward/adapter/d$5;

    iget-object v0, p1, Lccsancom/mbridge/msdk/reward/adapter/d$5;->a:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$5$1$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d$5$1;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/adapter/d$5$1;->d:Lccsancom/mbridge/msdk/reward/adapter/d$5;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/adapter/d$5;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/adapter/d;->h(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsanandroid/content/Context;

    move-result-object v1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "preload template success is tpl :"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/d$5$1$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d$5$1;

    iget-object p2, p2, Lccsancom/mbridge/msdk/reward/adapter/d$5$1;->d:Lccsancom/mbridge/msdk/reward/adapter/d$5;

    iget-boolean p2, p2, Lccsancom/mbridge/msdk/reward/adapter/d$5;->b:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$5$1$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d$5$1;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/adapter/d$5$1;->d:Lccsancom/mbridge/msdk/reward/adapter/d$5;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/adapter/d$5;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/adapter/d;->d(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$5$1$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d$5$1;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/adapter/d$5$1;->d:Lccsancom/mbridge/msdk/reward/adapter/d$5;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/adapter/d$5;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/adapter/d;->f(Lccsancom/mbridge/msdk/reward/adapter/d;)Z

    move-result v4

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$5$1$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d$5$1;

    iget-object v5, p1, Lccsancom/mbridge/msdk/reward/adapter/d$5$1;->a:Ljava/lang/String;

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$5$1$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d$5$1;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/adapter/d$5$1;->d:Lccsancom/mbridge/msdk/reward/adapter/d$5;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/adapter/d$5;->a:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-object p5, p0, Lccsancom/mbridge/msdk/reward/adapter/d$5$1$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d$5$1;

    iget-object p5, p5, Lccsancom/mbridge/msdk/reward/adapter/d$5$1;->d:Lccsancom/mbridge/msdk/reward/adapter/d$5;

    iget-object p5, p5, Lccsancom/mbridge/msdk/reward/adapter/d$5;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {p5}, Lccsancom/mbridge/msdk/reward/adapter/d;->g(Lccsancom/mbridge/msdk/reward/adapter/d;)J

    move-result-wide p5

    sub-long v7, p1, p5

    invoke-static/range {v0 .. v8}, Lccsancom/mbridge/msdk/reward/b/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1831
    goto :goto_0

    .line 1829
    :catch_0
    move-exception p1

    .line 1832
    :goto_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$5$1$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d$5$1;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/adapter/d$5$1;->d:Lccsancom/mbridge/msdk/reward/adapter/d$5;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/adapter/d$5;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/d$5$1$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d$5$1;

    iget-object p2, p2, Lccsancom/mbridge/msdk/reward/adapter/d$5$1;->d:Lccsancom/mbridge/msdk/reward/adapter/d$5;

    iget-object p2, p2, Lccsancom/mbridge/msdk/reward/adapter/d$5;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {p2}, Lccsancom/mbridge/msdk/reward/adapter/d;->c(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/util/List;

    move-result-object p2

    iget-object p5, p0, Lccsancom/mbridge/msdk/reward/adapter/d$5$1$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d$5$1;

    iget-object p5, p5, Lccsancom/mbridge/msdk/reward/adapter/d$5$1;->d:Lccsancom/mbridge/msdk/reward/adapter/d$5;

    iget-boolean p5, p5, Lccsancom/mbridge/msdk/reward/adapter/d$5;->b:Z

    iget-object p6, p0, Lccsancom/mbridge/msdk/reward/adapter/d$5$1$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d$5$1;

    iget-object p6, p6, Lccsancom/mbridge/msdk/reward/adapter/d$5$1;->d:Lccsancom/mbridge/msdk/reward/adapter/d$5;

    iget p6, p6, Lccsancom/mbridge/msdk/reward/adapter/d$5;->c:I

    invoke-virtual {p1, p2, p5, p6}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(Ljava/util/List;ZI)Z

    move-result p1

    const/4 p2, 0x1

    const/4 p5, 0x5

    if-eqz p1, :cond_2

    .line 1833
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$5$1$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d$5$1;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/adapter/d$5$1;->d:Lccsancom/mbridge/msdk/reward/adapter/d$5;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/adapter/d$5;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    iget-object p3, p0, Lccsancom/mbridge/msdk/reward/adapter/d$5$1$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d$5$1;

    iget-object p3, p3, Lccsancom/mbridge/msdk/reward/adapter/d$5$1;->d:Lccsancom/mbridge/msdk/reward/adapter/d$5;

    iget-object p3, p3, Lccsancom/mbridge/msdk/reward/adapter/d$5;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {p3}, Lccsancom/mbridge/msdk/reward/adapter/d;->d(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Lccsancom/mbridge/msdk/reward/adapter/d$5$1$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d$5$1;

    iget-object p4, p4, Lccsancom/mbridge/msdk/reward/adapter/d$5$1;->d:Lccsancom/mbridge/msdk/reward/adapter/d$5;

    iget-object p4, p4, Lccsancom/mbridge/msdk/reward/adapter/d$5;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {p4}, Lccsancom/mbridge/msdk/reward/adapter/d;->b(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/util/List;

    move-result-object p4

    iget-object p6, p0, Lccsancom/mbridge/msdk/reward/adapter/d$5$1$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d$5$1;

    iget-object p6, p6, Lccsancom/mbridge/msdk/reward/adapter/d$5$1;->d:Lccsancom/mbridge/msdk/reward/adapter/d$5;

    iget-object p6, p6, Lccsancom/mbridge/msdk/reward/adapter/d$5;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {p6}, Lccsancom/mbridge/msdk/reward/adapter/d;->e(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/util/List;

    move-result-object p6

    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/d$5$1$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d$5$1;

    iget-object v0, v0, Lccsancom/mbridge/msdk/reward/adapter/d$5$1;->d:Lccsancom/mbridge/msdk/reward/adapter/d$5;

    iget-object v0, v0, Lccsancom/mbridge/msdk/reward/adapter/d$5;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/adapter/d;->f(Lccsancom/mbridge/msdk/reward/adapter/d;)Z

    move-result v0

    invoke-static {p1, p3, p4, p6, v0}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(Lccsancom/mbridge/msdk/reward/adapter/d;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Z)V

    .line 1834
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$5$1$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d$5$1;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/adapter/d$5$1;->d:Lccsancom/mbridge/msdk/reward/adapter/d$5;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/adapter/d$5;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/adapter/d;->i(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsanandroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1835
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$5$1$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d$5$1;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/adapter/d$5$1;->d:Lccsancom/mbridge/msdk/reward/adapter/d$5;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/adapter/d$5;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/adapter/d;->i(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsanandroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p5}, Lccsanandroid/os/Handler;->removeMessages(I)V

    .line 1837
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$5$1$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d$5$1;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/adapter/d$5$1;->d:Lccsancom/mbridge/msdk/reward/adapter/d$5;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/adapter/d$5;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsancom/mbridge/msdk/reward/adapter/b;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 1838
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$5$1$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d$5$1;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/adapter/d$5$1;->d:Lccsancom/mbridge/msdk/reward/adapter/d$5;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/adapter/d$5;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    iget-boolean p1, p1, Lccsancom/mbridge/msdk/reward/adapter/d;->g:Z

    if-nez p1, :cond_5

    .line 1839
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$5$1$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d$5$1;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/adapter/d$5$1;->d:Lccsancom/mbridge/msdk/reward/adapter/d$5;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/adapter/d$5;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    iput-boolean p2, p1, Lccsancom/mbridge/msdk/reward/adapter/d;->g:Z

    .line 1841
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$5$1$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d$5$1;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/adapter/d$5$1;->d:Lccsancom/mbridge/msdk/reward/adapter/d$5;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/adapter/d$5;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/adapter/d;->d(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1842
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-object p3, p0, Lccsancom/mbridge/msdk/reward/adapter/d$5$1$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d$5$1;

    iget-object p3, p3, Lccsancom/mbridge/msdk/reward/adapter/d$5$1;->d:Lccsancom/mbridge/msdk/reward/adapter/d$5;

    iget-object p3, p3, Lccsancom/mbridge/msdk/reward/adapter/d$5;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {p3}, Lccsancom/mbridge/msdk/reward/adapter/d;->g(Lccsancom/mbridge/msdk/reward/adapter/d;)J

    move-result-wide p3

    sub-long/2addr p1, p3

    .line 1843
    iget-object p3, p0, Lccsancom/mbridge/msdk/reward/adapter/d$5$1$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d$5$1;

    iget-object p3, p3, Lccsancom/mbridge/msdk/reward/adapter/d$5$1;->d:Lccsancom/mbridge/msdk/reward/adapter/d$5;

    iget-object p3, p3, Lccsancom/mbridge/msdk/reward/adapter/d$5;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {p3}, Lccsancom/mbridge/msdk/reward/adapter/d;->h(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsanandroid/content/Context;

    move-result-object p3

    iget-object p4, p0, Lccsancom/mbridge/msdk/reward/adapter/d$5$1$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d$5$1;

    iget-object p4, p4, Lccsancom/mbridge/msdk/reward/adapter/d$5$1;->d:Lccsancom/mbridge/msdk/reward/adapter/d$5;

    iget-object p4, p4, Lccsancom/mbridge/msdk/reward/adapter/d$5;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {p4}, Lccsancom/mbridge/msdk/reward/adapter/d;->c(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/util/List;

    move-result-object p4

    iget-object p5, p0, Lccsancom/mbridge/msdk/reward/adapter/d$5$1$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d$5$1;

    iget-object p5, p5, Lccsancom/mbridge/msdk/reward/adapter/d$5$1;->d:Lccsancom/mbridge/msdk/reward/adapter/d$5;

    iget-object p5, p5, Lccsancom/mbridge/msdk/reward/adapter/d$5;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {p5}, Lccsancom/mbridge/msdk/reward/adapter/d;->d(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/lang/String;

    move-result-object p5

    invoke-static {p3, p4, p5, p1, p2}, Lccsancom/mbridge/msdk/reward/b/a;->a(Lccsanandroid/content/Context;Ljava/util/List;Ljava/lang/String;J)V

    .line 1845
    :cond_1
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$5$1$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d$5$1;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/adapter/d$5$1;->d:Lccsancom/mbridge/msdk/reward/adapter/d$5;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/adapter/d$5;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsancom/mbridge/msdk/reward/adapter/b;

    move-result-object p1

    invoke-interface {p1}, Lccsancom/mbridge/msdk/reward/adapter/b;->a()V

    goto/16 :goto_1

    .line 1849
    :cond_2
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$5$1$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d$5$1;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/adapter/d$5$1;->d:Lccsancom/mbridge/msdk/reward/adapter/d$5;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/adapter/d$5;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    iget-object p6, p0, Lccsancom/mbridge/msdk/reward/adapter/d$5$1$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d$5$1;

    iget-object p6, p6, Lccsancom/mbridge/msdk/reward/adapter/d$5$1;->d:Lccsancom/mbridge/msdk/reward/adapter/d$5;

    iget-object p6, p6, Lccsancom/mbridge/msdk/reward/adapter/d$5;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {p6}, Lccsancom/mbridge/msdk/reward/adapter/d;->b(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/util/List;

    move-result-object p6

    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/d$5$1$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d$5$1;

    iget-object v0, v0, Lccsancom/mbridge/msdk/reward/adapter/d$5$1;->d:Lccsancom/mbridge/msdk/reward/adapter/d$5;

    iget-object v0, v0, Lccsancom/mbridge/msdk/reward/adapter/d$5;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/adapter/d;->f(Lccsancom/mbridge/msdk/reward/adapter/d;)Z

    move-result v0

    invoke-static {p1, p3, p6, v0}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(Lccsancom/mbridge/msdk/reward/adapter/d;Ljava/lang/String;Ljava/util/List;Z)V

    .line 1850
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$5$1$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d$5$1;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/adapter/d$5$1;->d:Lccsancom/mbridge/msdk/reward/adapter/d$5;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/adapter/d$5;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/adapter/d;->i(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsanandroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1851
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$5$1$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d$5$1;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/adapter/d$5$1;->d:Lccsancom/mbridge/msdk/reward/adapter/d$5;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/adapter/d$5;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/adapter/d;->i(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsanandroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p5}, Lccsanandroid/os/Handler;->removeMessages(I)V

    .line 1853
    :cond_3
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$5$1$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d$5$1;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/adapter/d$5$1;->d:Lccsancom/mbridge/msdk/reward/adapter/d$5;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/adapter/d$5;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsancom/mbridge/msdk/reward/adapter/b;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 1854
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$5$1$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d$5$1;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/adapter/d$5$1;->d:Lccsancom/mbridge/msdk/reward/adapter/d$5;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/adapter/d$5;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    iget-boolean p1, p1, Lccsancom/mbridge/msdk/reward/adapter/d;->h:Z

    if-nez p1, :cond_5

    .line 1855
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$5$1$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d$5$1;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/adapter/d$5$1;->d:Lccsancom/mbridge/msdk/reward/adapter/d$5;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/adapter/d$5;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    iput-boolean p2, p1, Lccsancom/mbridge/msdk/reward/adapter/d;->h:Z

    .line 1856
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$5$1$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d$5$1;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/adapter/d$5$1;->d:Lccsancom/mbridge/msdk/reward/adapter/d$5;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/adapter/d$5;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/adapter/d;->b(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$5$1$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d$5$1;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/adapter/d$5$1;->d:Lccsancom/mbridge/msdk/reward/adapter/d$5;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/adapter/d$5;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/adapter/d;->b(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 1857
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$5$1$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d$5$1;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/adapter/d$5$1;->d:Lccsancom/mbridge/msdk/reward/adapter/d$5;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/adapter/d$5;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/adapter/d;->b(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$5$1$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d$5$1;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/adapter/d$5$1;->d:Lccsancom/mbridge/msdk/reward/adapter/d$5;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/adapter/d$5;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/adapter/d;->h(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsanandroid/content/Context;

    move-result-object v1

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$5$1$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d$5$1;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/adapter/d$5$1;->d:Lccsancom/mbridge/msdk/reward/adapter/d$5;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/adapter/d$5;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/adapter/d;->d(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$5$1$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d$5$1;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/adapter/d$5$1;->d:Lccsancom/mbridge/msdk/reward/adapter/d$5;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/adapter/d$5;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/adapter/d;->f(Lccsancom/mbridge/msdk/reward/adapter/d;)Z

    move-result v4

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$5$1$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d$5$1;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/adapter/d$5$1;->d:Lccsancom/mbridge/msdk/reward/adapter/d$5;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/adapter/d$5;->a:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v6

    const-string v2, "tpl temp preload success but isReady false"

    move-object v5, p4

    invoke-static/range {v0 .. v6}, Lccsancom/mbridge/msdk/reward/b/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1859
    :cond_4
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$5$1$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d$5$1;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/adapter/d$5$1;->d:Lccsancom/mbridge/msdk/reward/adapter/d$5;

    iget-object p1, p1, Lccsancom/mbridge/msdk/reward/adapter/d$5;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsancom/mbridge/msdk/reward/adapter/b;

    move-result-object p1

    const-string p2, "errorCode: 3505 errorMessage: tpl temp preload success but isReady false"

    invoke-interface {p1, p2}, Lccsancom/mbridge/msdk/reward/adapter/b;->a(Ljava/lang/String;)V

    .line 1863
    :cond_5
    :goto_1
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/videocommon/a$a;Ljava/lang/String;)V
    .locals 14

    .line 1867
    move-object v1, p0

    move-object/from16 v2, p7

    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/adapter/d$5$1$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d$5$1;

    iget-object v0, v0, Lccsancom/mbridge/msdk/reward/adapter/d$5$1;->d:Lccsancom/mbridge/msdk/reward/adapter/d$5;

    iget-object v0, v0, Lccsancom/mbridge/msdk/reward/adapter/d$5;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    iget-object v3, v1, Lccsancom/mbridge/msdk/reward/adapter/d$5$1$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d$5$1;

    iget-object v3, v3, Lccsancom/mbridge/msdk/reward/adapter/d$5$1;->d:Lccsancom/mbridge/msdk/reward/adapter/d$5;

    iget-object v3, v3, Lccsancom/mbridge/msdk/reward/adapter/d$5;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v3}, Lccsancom/mbridge/msdk/reward/adapter/d;->b(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/util/List;

    move-result-object v3

    iget-object v4, v1, Lccsancom/mbridge/msdk/reward/adapter/d$5$1$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d$5$1;

    iget-object v4, v4, Lccsancom/mbridge/msdk/reward/adapter/d$5$1;->d:Lccsancom/mbridge/msdk/reward/adapter/d$5;

    iget-object v4, v4, Lccsancom/mbridge/msdk/reward/adapter/d$5;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v4}, Lccsancom/mbridge/msdk/reward/adapter/d;->f(Lccsancom/mbridge/msdk/reward/adapter/d;)Z

    move-result v4

    move-object/from16 v5, p3

    invoke-static {v0, v5, v3, v4}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(Lccsancom/mbridge/msdk/reward/adapter/d;Ljava/lang/String;Ljava/util/List;Z)V

    .line 1869
    :try_start_0
    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/adapter/d$5$1$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d$5$1;

    iget-object v0, v0, Lccsancom/mbridge/msdk/reward/adapter/d$5$1;->d:Lccsancom/mbridge/msdk/reward/adapter/d$5;

    iget-object v3, v0, Lccsancom/mbridge/msdk/reward/adapter/d$5;->a:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/adapter/d$5$1$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d$5$1;

    iget-object v0, v0, Lccsancom/mbridge/msdk/reward/adapter/d$5$1;->d:Lccsancom/mbridge/msdk/reward/adapter/d$5;

    iget-object v0, v0, Lccsancom/mbridge/msdk/reward/adapter/d$5;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/adapter/d;->h(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsanandroid/content/Context;

    move-result-object v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "preload template failed is tpl :"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lccsancom/mbridge/msdk/reward/adapter/d$5$1$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d$5$1;

    iget-object v5, v5, Lccsancom/mbridge/msdk/reward/adapter/d$5$1;->d:Lccsancom/mbridge/msdk/reward/adapter/d$5;

    iget-boolean v5, v5, Lccsancom/mbridge/msdk/reward/adapter/d$5;->b:Z

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/adapter/d$5$1$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d$5$1;

    iget-object v0, v0, Lccsancom/mbridge/msdk/reward/adapter/d$5$1;->d:Lccsancom/mbridge/msdk/reward/adapter/d$5;

    iget-object v0, v0, Lccsancom/mbridge/msdk/reward/adapter/d$5;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/adapter/d;->d(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/adapter/d$5$1$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d$5$1;

    iget-object v0, v0, Lccsancom/mbridge/msdk/reward/adapter/d$5$1;->d:Lccsancom/mbridge/msdk/reward/adapter/d$5;

    iget-object v0, v0, Lccsancom/mbridge/msdk/reward/adapter/d$5;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/adapter/d;->f(Lccsancom/mbridge/msdk/reward/adapter/d;)Z

    move-result v7

    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/adapter/d$5$1$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d$5$1;

    iget-object v8, v0, Lccsancom/mbridge/msdk/reward/adapter/d$5$1;->a:Ljava/lang/String;

    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/adapter/d$5$1$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d$5$1;

    iget-object v0, v0, Lccsancom/mbridge/msdk/reward/adapter/d$5$1;->d:Lccsancom/mbridge/msdk/reward/adapter/d$5;

    iget-object v0, v0, Lccsancom/mbridge/msdk/reward/adapter/d$5;->a:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/adapter/d$5$1$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d$5$1;

    iget-object v0, v0, Lccsancom/mbridge/msdk/reward/adapter/d$5$1;->d:Lccsancom/mbridge/msdk/reward/adapter/d$5;

    iget-object v0, v0, Lccsancom/mbridge/msdk/reward/adapter/d$5;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/adapter/d;->g(Lccsancom/mbridge/msdk/reward/adapter/d;)J

    move-result-wide v12

    sub-long/2addr v10, v12

    invoke-static/range {v3 .. v11}, Lccsancom/mbridge/msdk/reward/b/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1872
    goto :goto_0

    .line 1870
    :catch_0
    move-exception v0

    .line 1873
    :goto_0
    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/adapter/d$5$1$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d$5$1;

    iget-object v0, v0, Lccsancom/mbridge/msdk/reward/adapter/d$5$1;->d:Lccsancom/mbridge/msdk/reward/adapter/d$5;

    iget-object v0, v0, Lccsancom/mbridge/msdk/reward/adapter/d$5;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/adapter/d;->i(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsanandroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1874
    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/adapter/d$5$1$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d$5$1;

    iget-object v0, v0, Lccsancom/mbridge/msdk/reward/adapter/d$5$1;->d:Lccsancom/mbridge/msdk/reward/adapter/d$5;

    iget-object v0, v0, Lccsancom/mbridge/msdk/reward/adapter/d$5;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/adapter/d;->i(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsanandroid/os/Handler;

    move-result-object v0

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Lccsanandroid/os/Handler;->removeMessages(I)V

    .line 1876
    :cond_0
    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/adapter/d$5$1$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d$5$1;

    iget-object v0, v0, Lccsancom/mbridge/msdk/reward/adapter/d$5$1;->d:Lccsancom/mbridge/msdk/reward/adapter/d$5;

    iget-object v0, v0, Lccsancom/mbridge/msdk/reward/adapter/d$5;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsancom/mbridge/msdk/reward/adapter/b;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1877
    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/adapter/d$5$1$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d$5$1;

    iget-object v0, v0, Lccsancom/mbridge/msdk/reward/adapter/d$5$1;->d:Lccsancom/mbridge/msdk/reward/adapter/d$5;

    iget-object v0, v0, Lccsancom/mbridge/msdk/reward/adapter/d$5;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    iget-boolean v0, v0, Lccsancom/mbridge/msdk/reward/adapter/d;->h:Z

    if-nez v0, :cond_2

    .line 1878
    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/adapter/d$5$1$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d$5$1;

    iget-object v0, v0, Lccsancom/mbridge/msdk/reward/adapter/d$5$1;->d:Lccsancom/mbridge/msdk/reward/adapter/d$5;

    iget-object v0, v0, Lccsancom/mbridge/msdk/reward/adapter/d$5;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    const/4 v3, 0x1

    iput-boolean v3, v0, Lccsancom/mbridge/msdk/reward/adapter/d;->h:Z

    .line 1879
    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/adapter/d$5$1$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d$5$1;

    iget-object v0, v0, Lccsancom/mbridge/msdk/reward/adapter/d$5$1;->d:Lccsancom/mbridge/msdk/reward/adapter/d$5;

    iget-object v0, v0, Lccsancom/mbridge/msdk/reward/adapter/d$5;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/adapter/d;->b(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/adapter/d$5$1$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d$5$1;

    iget-object v0, v0, Lccsancom/mbridge/msdk/reward/adapter/d$5$1;->d:Lccsancom/mbridge/msdk/reward/adapter/d$5;

    iget-object v0, v0, Lccsancom/mbridge/msdk/reward/adapter/d$5;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/adapter/d;->b(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1880
    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/adapter/d$5$1$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d$5$1;

    iget-object v0, v0, Lccsancom/mbridge/msdk/reward/adapter/d$5$1;->d:Lccsancom/mbridge/msdk/reward/adapter/d$5;

    iget-object v0, v0, Lccsancom/mbridge/msdk/reward/adapter/d$5;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/adapter/d;->b(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/adapter/d$5$1$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d$5$1;

    iget-object v0, v0, Lccsancom/mbridge/msdk/reward/adapter/d$5$1;->d:Lccsancom/mbridge/msdk/reward/adapter/d$5;

    iget-object v0, v0, Lccsancom/mbridge/msdk/reward/adapter/d$5;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/adapter/d;->h(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsanandroid/content/Context;

    move-result-object v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tpl temp preload failed: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/adapter/d$5$1$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d$5$1;

    iget-object v0, v0, Lccsancom/mbridge/msdk/reward/adapter/d$5$1;->d:Lccsancom/mbridge/msdk/reward/adapter/d$5;

    iget-object v0, v0, Lccsancom/mbridge/msdk/reward/adapter/d$5;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/adapter/d;->d(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/adapter/d$5$1$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d$5$1;

    iget-object v0, v0, Lccsancom/mbridge/msdk/reward/adapter/d$5$1;->d:Lccsancom/mbridge/msdk/reward/adapter/d$5;

    iget-object v0, v0, Lccsancom/mbridge/msdk/reward/adapter/d$5;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/adapter/d;->f(Lccsancom/mbridge/msdk/reward/adapter/d;)Z

    move-result v7

    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/adapter/d$5$1$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d$5$1;

    iget-object v0, v0, Lccsancom/mbridge/msdk/reward/adapter/d$5$1;->d:Lccsancom/mbridge/msdk/reward/adapter/d$5;

    iget-object v0, v0, Lccsancom/mbridge/msdk/reward/adapter/d$5;->a:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v8, p4

    invoke-static/range {v3 .. v9}, Lccsancom/mbridge/msdk/reward/b/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1882
    :cond_1
    iget-object v0, v1, Lccsancom/mbridge/msdk/reward/adapter/d$5$1$1;->a:Lccsancom/mbridge/msdk/reward/adapter/d$5$1;

    iget-object v0, v0, Lccsancom/mbridge/msdk/reward/adapter/d$5$1;->d:Lccsancom/mbridge/msdk/reward/adapter/d$5;

    iget-object v0, v0, Lccsancom/mbridge/msdk/reward/adapter/d$5;->d:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsancom/mbridge/msdk/reward/adapter/b;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "errorCode: 3303 errorMessage: tpl temp preload failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lccsancom/mbridge/msdk/reward/adapter/b;->a(Ljava/lang/String;)V

    .line 1885
    :cond_2
    return-void
.end method
