.class final Lccsancom/mbridge/msdk/video/bt/a/c$2;
.super Ljava/lang/Object;
.source "OperateViews.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/video/bt/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

.field final synthetic b:Lccsancom/mbridge/msdk/video/bt/a/c;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/video/bt/a/c;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 0

    .line 2028
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/bt/a/c$2;->b:Lccsancom/mbridge/msdk/video/bt/a/c;

    iput-object p2, p0, Lccsancom/mbridge/msdk/video/bt/a/c$2;->a:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 2032
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/db/f;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/db/f;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/db/j;->a(Lccsancom/mbridge/msdk/foundation/db/e;)Lccsancom/mbridge/msdk/foundation/db/j;

    move-result-object v0

    .line 2033
    if-eqz v0, :cond_1

    .line 2034
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/a/c$2;->a:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/db/j;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2035
    new-instance v1, Lccsancom/mbridge/msdk/foundation/entity/f;

    invoke-direct {v1}, Lccsancom/mbridge/msdk/foundation/entity/f;-><init>()V

    .line 2036
    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/a/c$2;->a:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/foundation/entity/f;->a(Ljava/lang/String;)V

    .line 2037
    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/a/c$2;->a:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getFca()I

    move-result v2

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/foundation/entity/f;->a(I)V

    .line 2038
    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/a/c$2;->a:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getFcb()I

    move-result v2

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/foundation/entity/f;->b(I)V

    .line 2039
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/foundation/entity/f;->d(I)V

    .line 2040
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/foundation/entity/f;->c(I)V

    .line 2041
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/f;->a(J)V

    .line 2042
    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/db/j;->a(Lccsancom/mbridge/msdk/foundation/entity/f;)V

    .line 2043
    goto :goto_0

    .line 2044
    :cond_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/a/c$2;->a:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/db/j;->b(Ljava/lang/String;)V

    .line 2047
    :cond_1
    :goto_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/a/c$2;->b:Lccsancom/mbridge/msdk/video/bt/a/c;

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/a/c$2;->a:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/a/c$2;->a:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-static {v0, v1, v2}, Lccsancom/mbridge/msdk/video/bt/a/c;->a(Lccsancom/mbridge/msdk/video/bt/a/c;Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2050
    goto :goto_1

    .line 2048
    :catchall_0
    move-exception v0

    .line 2049
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OperateViews"

    invoke-static {v2, v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2051
    :goto_1
    return-void
.end method
