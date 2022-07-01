.class final Lccsancom/mbridge/msdk/mbnative/c/b$d;
.super Ljava/lang/Object;
.source "NativeController.java"

# interfaces
.implements Lccsancom/mbridge/msdk/videocommon/download/g$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/mbnative/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

.field private c:J

.field private d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Z)V
    .locals 2

    .line 1843
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1841
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b$d;->d:Z

    .line 1844
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b$d;->c:J

    .line 1845
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$d;->a:Ljava/lang/String;

    .line 1846
    iput-object p2, p0, Lccsancom/mbridge/msdk/mbnative/c/b$d;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 1847
    iput-boolean p3, p0, Lccsancom/mbridge/msdk/mbnative/c/b$d;->d:Z

    .line 1848
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 12

    .line 1853
    :try_start_0
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b$d;->d:Z

    if-eqz v0, :cond_2

    .line 1854
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lccsancom/mbridge/msdk/mbnative/c/b$d;->c:J

    sub-long/2addr v0, v2

    .line 1856
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lccsancom/mbridge/msdk/foundation/db/f;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/db/f;

    move-result-object v2

    invoke-static {v2}, Lccsancom/mbridge/msdk/foundation/db/p;->a(Lccsancom/mbridge/msdk/foundation/db/e;)Lccsancom/mbridge/msdk/foundation/db/p;

    .line 1857
    new-instance v2, Lccsancom/mbridge/msdk/foundation/entity/m;

    const-string v4, "2000043"

    const/16 v5, 0x14

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b$d;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lccsancom/mbridge/msdk/mbnative/c/b$d;->a:Ljava/lang/String;

    const-string v10, ""

    const-string v11, "2"

    move-object v3, v2

    move-object v7, p1

    invoke-direct/range {v3 .. v11}, Lccsancom/mbridge/msdk/foundation/entity/m;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1858
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$d;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1859
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$d;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->n(Ljava/lang/String;)V

    .line 1861
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$d;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz p1, :cond_1

    .line 1862
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->k(Ljava/lang/String;)V

    .line 1863
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$d;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->l(Ljava/lang/String;)V

    .line 1865
    :cond_1
    const-string p1, "1"

    invoke-virtual {v2, p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->h(Ljava/lang/String;)V

    .line 1866
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$d;->a:Ljava/lang/String;

    invoke-static {v2, p1}, Lccsancom/mbridge/msdk/foundation/same/report/b;->a(Lccsancom/mbridge/msdk/foundation/entity/m;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1870
    :cond_2
    goto :goto_0

    .line 1868
    :catch_0
    move-exception p1

    .line 1869
    invoke-static {}, Lccsancom/mbridge/msdk/mbnative/c/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lccsancom/mbridge/msdk/mbnative/b/a;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1871
    :goto_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    .line 1876
    :try_start_0
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b$d;->d:Z

    if-eqz v0, :cond_1

    .line 1877
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lccsancom/mbridge/msdk/mbnative/c/b$d;->c:J

    sub-long/2addr v0, v2

    .line 1879
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lccsancom/mbridge/msdk/foundation/db/f;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/db/f;

    move-result-object v2

    invoke-static {v2}, Lccsancom/mbridge/msdk/foundation/db/p;->a(Lccsancom/mbridge/msdk/foundation/db/e;)Lccsancom/mbridge/msdk/foundation/db/p;

    .line 1880
    new-instance v2, Lccsancom/mbridge/msdk/foundation/entity/m;

    const-string v4, "2000043"

    const/16 v5, 0x15

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b$d;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lccsancom/mbridge/msdk/mbnative/c/b$d;->a:Ljava/lang/String;

    const-string v11, "2"

    move-object v3, v2

    move-object v7, p1

    move-object v10, p2

    invoke-direct/range {v3 .. v11}, Lccsancom/mbridge/msdk/foundation/entity/m;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1881
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$d;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->k(Ljava/lang/String;)V

    .line 1882
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$d;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->l(Ljava/lang/String;)V

    .line 1883
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$d;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1884
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$d;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->n(Ljava/lang/String;)V

    .line 1886
    :cond_0
    const-string p1, "1"

    invoke-virtual {v2, p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->h(Ljava/lang/String;)V

    .line 1887
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$d;->a:Ljava/lang/String;

    invoke-static {v2, p1}, Lccsancom/mbridge/msdk/foundation/same/report/b;->a(Lccsancom/mbridge/msdk/foundation/entity/m;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1891
    :cond_1
    goto :goto_0

    .line 1889
    :catch_0
    move-exception p1

    .line 1890
    invoke-static {}, Lccsancom/mbridge/msdk/mbnative/c/b;->c()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Lccsancom/mbridge/msdk/mbnative/b/a;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1892
    :goto_0
    return-void
.end method
