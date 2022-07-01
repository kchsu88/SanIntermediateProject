.class final Lccsancom/mbridge/msdk/mbnative/c/b$g;
.super Ljava/lang/Object;
.source "NativeController.java"

# interfaces
.implements Lccsancom/mbridge/msdk/videocommon/download/g$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/mbnative/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "g"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

.field private c:J

.field private d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Z)V
    .locals 2

    .line 1902
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1900
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b$g;->d:Z

    .line 1903
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b$g;->c:J

    .line 1904
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$g;->a:Ljava/lang/String;

    .line 1905
    iput-object p2, p0, Lccsancom/mbridge/msdk/mbnative/c/b$g;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 1906
    iput-boolean p3, p0, Lccsancom/mbridge/msdk/mbnative/c/b$g;->d:Z

    .line 1907
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 12

    .line 1912
    :try_start_0
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b$g;->d:Z

    if-eqz v0, :cond_2

    .line 1913
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lccsancom/mbridge/msdk/mbnative/c/b$g;->c:J

    sub-long/2addr v0, v2

    .line 1915
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lccsancom/mbridge/msdk/foundation/db/f;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/db/f;

    move-result-object v2

    invoke-static {v2}, Lccsancom/mbridge/msdk/foundation/db/p;->a(Lccsancom/mbridge/msdk/foundation/db/e;)Lccsancom/mbridge/msdk/foundation/db/p;

    .line 1916
    nop

    .line 1917
    new-instance v2, Lccsancom/mbridge/msdk/foundation/entity/m;

    const-string v4, "2000043"

    const/16 v5, 0xe

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b$g;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lccsancom/mbridge/msdk/mbnative/c/b$g;->a:Ljava/lang/String;

    const-string v10, ""

    const-string v11, "1"

    move-object v3, v2

    move-object v7, p1

    invoke-direct/range {v3 .. v11}, Lccsancom/mbridge/msdk/foundation/entity/m;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1918
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$g;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1919
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$g;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->n(Ljava/lang/String;)V

    .line 1921
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$g;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz p1, :cond_1

    .line 1922
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->k(Ljava/lang/String;)V

    .line 1923
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$g;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->l(Ljava/lang/String;)V

    .line 1925
    :cond_1
    const-string p1, "2"

    invoke-virtual {v2, p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->h(Ljava/lang/String;)V

    .line 1926
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$g;->a:Ljava/lang/String;

    invoke-static {v2, p1}, Lccsancom/mbridge/msdk/foundation/same/report/b;->a(Lccsancom/mbridge/msdk/foundation/entity/m;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1930
    :cond_2
    goto :goto_0

    .line 1928
    :catch_0
    move-exception p1

    .line 1929
    invoke-static {}, Lccsancom/mbridge/msdk/mbnative/c/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lccsancom/mbridge/msdk/mbnative/b/a;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1931
    :goto_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    .line 1936
    :try_start_0
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b$g;->d:Z

    if-eqz v0, :cond_2

    .line 1937
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lccsancom/mbridge/msdk/mbnative/c/b$g;->c:J

    sub-long/2addr v0, v2

    .line 1939
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lccsancom/mbridge/msdk/foundation/db/f;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/db/f;

    move-result-object v2

    invoke-static {v2}, Lccsancom/mbridge/msdk/foundation/db/p;->a(Lccsancom/mbridge/msdk/foundation/db/e;)Lccsancom/mbridge/msdk/foundation/db/p;

    .line 1940
    nop

    .line 1941
    new-instance v2, Lccsancom/mbridge/msdk/foundation/entity/m;

    const-string v4, "2000043"

    const/4 v5, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b$g;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lccsancom/mbridge/msdk/mbnative/c/b$g;->a:Ljava/lang/String;

    const-string v11, "1"

    move-object v3, v2

    move-object v7, p2

    move-object v10, p1

    invoke-direct/range {v3 .. v11}, Lccsancom/mbridge/msdk/foundation/entity/m;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1942
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$g;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1943
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$g;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->n(Ljava/lang/String;)V

    .line 1945
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$g;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz p1, :cond_1

    .line 1946
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->k(Ljava/lang/String;)V

    .line 1947
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$g;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->l(Ljava/lang/String;)V

    .line 1949
    :cond_1
    const-string p1, "2"

    invoke-virtual {v2, p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->h(Ljava/lang/String;)V

    .line 1950
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$g;->a:Ljava/lang/String;

    invoke-static {v2, p1}, Lccsancom/mbridge/msdk/foundation/same/report/b;->a(Lccsancom/mbridge/msdk/foundation/entity/m;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1954
    :cond_2
    goto :goto_0

    .line 1952
    :catch_0
    move-exception p1

    .line 1953
    invoke-static {}, Lccsancom/mbridge/msdk/mbnative/c/b;->c()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Lccsancom/mbridge/msdk/mbnative/b/a;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1955
    :goto_0
    return-void
.end method
