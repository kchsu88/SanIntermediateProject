.class final Lccsancom/mbridge/msdk/mbnative/c/b$3;
.super Ljava/util/TimerTask;
.source "NativeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/mbnative/c/b;->a(Ljava/util/List;Lccsancom/mbridge/msdk/mbnative/c/b$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lccsancom/mbridge/msdk/mbnative/c/b$b;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Lccsancom/mbridge/msdk/mbnative/c/b;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/mbnative/c/b;JLccsancom/mbridge/msdk/mbnative/c/b$b;Ljava/util/List;)V
    .locals 0

    .line 2030
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$3;->d:Lccsancom/mbridge/msdk/mbnative/c/b;

    iput-wide p2, p0, Lccsancom/mbridge/msdk/mbnative/c/b$3;->a:J

    iput-object p4, p0, Lccsancom/mbridge/msdk/mbnative/c/b$3;->b:Lccsancom/mbridge/msdk/mbnative/c/b$b;

    iput-object p5, p0, Lccsancom/mbridge/msdk/mbnative/c/b$3;->c:Ljava/util/List;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 2033
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2034
    iget-wide v2, p0, Lccsancom/mbridge/msdk/mbnative/c/b$3;->a:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 2035
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b$3;->b:Lccsancom/mbridge/msdk/mbnative/c/b$b;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/mbnative/c/b$b;->a()V

    .line 2036
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b$3;->d:Lccsancom/mbridge/msdk/mbnative/c/b;

    invoke-static {v0}, Lccsancom/mbridge/msdk/mbnative/c/b;->p(Lccsancom/mbridge/msdk/mbnative/c/b;)V

    goto/16 :goto_2

    .line 2038
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b$3;->d:Lccsancom/mbridge/msdk/mbnative/c/b;

    invoke-static {v0}, Lccsancom/mbridge/msdk/mbnative/c/b;->i(Lccsancom/mbridge/msdk/mbnative/c/b;)Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/m;->n(Lccsanandroid/content/Context;)I

    move-result v0

    .line 2039
    iget-object v1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$3;->d:Lccsancom/mbridge/msdk/mbnative/c/b;

    invoke-static {v1}, Lccsancom/mbridge/msdk/mbnative/c/b;->q(Lccsancom/mbridge/msdk/mbnative/c/b;)Lccsancom/mbridge/msdk/b/d;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/b/d;->k()I

    move-result v1

    .line 2040
    const/16 v2, 0x9

    if-eq v0, v2, :cond_1

    const/4 v0, 0x2

    if-ne v1, v0, :cond_1

    .line 2041
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b$3;->b:Lccsancom/mbridge/msdk/mbnative/c/b$b;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/mbnative/c/b$b;->a()V

    .line 2042
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b$3;->d:Lccsancom/mbridge/msdk/mbnative/c/b;

    invoke-static {v0}, Lccsancom/mbridge/msdk/mbnative/c/b;->p(Lccsancom/mbridge/msdk/mbnative/c/b;)V

    goto/16 :goto_2

    .line 2043
    :cond_1
    const/4 v0, 0x3

    if-ne v1, v0, :cond_2

    .line 2044
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b$3;->b:Lccsancom/mbridge/msdk/mbnative/c/b$b;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/mbnative/c/b$b;->a()V

    .line 2045
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b$3;->d:Lccsancom/mbridge/msdk/mbnative/c/b;

    invoke-static {v0}, Lccsancom/mbridge/msdk/mbnative/c/b;->p(Lccsancom/mbridge/msdk/mbnative/c/b;)V

    goto :goto_2

    .line 2047
    :cond_2
    nop

    .line 2048
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b$3;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/out/Campaign;

    .line 2049
    nop

    .line 2050
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    move-result-object v3

    .line 2051
    instance-of v4, v2, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v4, :cond_3

    .line 2052
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v2, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getBidToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2054
    :cond_3
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/c;->getInstance()Lccsancom/mbridge/msdk/videocommon/download/c;

    move-result-object v2

    iget-object v4, p0, Lccsancom/mbridge/msdk/mbnative/c/b$3;->d:Lccsancom/mbridge/msdk/mbnative/c/b;

    invoke-static {v4}, Lccsancom/mbridge/msdk/mbnative/c/b;->b(Lccsancom/mbridge/msdk/mbnative/c/b;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Lccsancom/mbridge/msdk/videocommon/download/c;->a(Ljava/lang/String;Ljava/lang/String;)Lccsancom/mbridge/msdk/videocommon/download/a;

    move-result-object v2

    .line 2055
    if-eqz v2, :cond_4

    iget-object v3, p0, Lccsancom/mbridge/msdk/mbnative/c/b$3;->d:Lccsancom/mbridge/msdk/mbnative/c/b;

    invoke-static {v3}, Lccsancom/mbridge/msdk/mbnative/c/b;->q(Lccsancom/mbridge/msdk/mbnative/c/b;)Lccsancom/mbridge/msdk/b/d;

    move-result-object v3

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/b/d;->f()I

    move-result v3

    invoke-static {v2, v3}, Lccsancom/mbridge/msdk/videocommon/download/k;->a(Lccsancom/mbridge/msdk/videocommon/download/a;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2056
    const/4 v2, 0x1

    goto :goto_1

    .line 2058
    :cond_4
    const/4 v2, 0x0

    :goto_1
    goto :goto_0

    .line 2059
    :cond_5
    if-eqz v2, :cond_6

    .line 2060
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b$3;->b:Lccsancom/mbridge/msdk/mbnative/c/b$b;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/mbnative/c/b$b;->a()V

    .line 2061
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b$3;->d:Lccsancom/mbridge/msdk/mbnative/c/b;

    invoke-static {v0}, Lccsancom/mbridge/msdk/mbnative/c/b;->p(Lccsancom/mbridge/msdk/mbnative/c/b;)V

    .line 2065
    :cond_6
    :goto_2
    return-void
.end method
