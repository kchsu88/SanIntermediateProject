.class final Lccsancom/mbridge/msdk/mbnative/c/c$a$3;
.super Ljava/lang/Object;
.source "NativePreloadController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/mbnative/c/c$a;->b(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lccsancom/mbridge/msdk/mbnative/c/c$a;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/mbnative/c/c$a;Ljava/util/List;)V
    .locals 0

    .line 898
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a$3;->b:Lccsancom/mbridge/msdk/mbnative/c/c$a;

    iput-object p2, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a$3;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 902
    nop

    .line 903
    sget-boolean v0, Lccsancom/mbridge/msdk/MBridgeConstans;->PRELOAD_RESULT_IN_SUBTHREAD:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lccsanandroid/os/Looper;->myLooper()Lccsanandroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 904
    invoke-static {}, Lccsanandroid/os/Looper;->prepare()V

    .line 905
    const/4 v0, 0x1

    goto :goto_0

    .line 907
    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a$3;->b:Lccsancom/mbridge/msdk/mbnative/c/c$a;

    invoke-static {v1}, Lccsancom/mbridge/msdk/mbnative/c/c$a;->g(Lccsancom/mbridge/msdk/mbnative/c/c$a;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 908
    iget-object v1, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a$3;->b:Lccsancom/mbridge/msdk/mbnative/c/c$a;

    invoke-static {v1}, Lccsancom/mbridge/msdk/mbnative/c/c$a;->a(Lccsancom/mbridge/msdk/mbnative/c/c$a;)Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 909
    iget-object v1, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a$3;->b:Lccsancom/mbridge/msdk/mbnative/c/c$a;

    iget-object v1, v1, Lccsancom/mbridge/msdk/mbnative/c/c$a;->a:Lccsancom/mbridge/msdk/mbnative/c/c;

    invoke-static {v1}, Lccsancom/mbridge/msdk/mbnative/c/c;->a(Lccsancom/mbridge/msdk/mbnative/c/c;)Lccsanandroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a$3;->b:Lccsancom/mbridge/msdk/mbnative/c/c$a;

    invoke-static {v2}, Lccsancom/mbridge/msdk/mbnative/c/c$a;->a(Lccsancom/mbridge/msdk/mbnative/c/c$a;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsanandroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 912
    :cond_1
    iget-object v1, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a$3;->a:Ljava/util/List;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 914
    iget-object v1, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a$3;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/out/Frame;

    .line 915
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/out/Frame;->getCampaigns()Ljava/util/List;

    move-result-object v2

    .line 916
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/mbridge/msdk/out/Campaign;

    .line 917
    iget-object v4, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a$3;->b:Lccsancom/mbridge/msdk/mbnative/c/c$a;

    iget-object v4, v4, Lccsancom/mbridge/msdk/mbnative/c/c$a;->a:Lccsancom/mbridge/msdk/mbnative/c/c;

    iget-object v5, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a$3;->b:Lccsancom/mbridge/msdk/mbnative/c/c$a;

    iget-object v5, v5, Lccsancom/mbridge/msdk/mbnative/c/c$a;->a:Lccsancom/mbridge/msdk/mbnative/c/c;

    invoke-static {v5}, Lccsancom/mbridge/msdk/mbnative/c/c;->b(Lccsancom/mbridge/msdk/mbnative/c/c;)Z

    move-result v5

    invoke-virtual {v4, v5, v3}, Lccsancom/mbridge/msdk/mbnative/c/c;->a(ZLccsancom/mbridge/msdk/out/Campaign;)V

    .line 919
    goto :goto_2

    .line 921
    :cond_2
    goto :goto_1

    .line 922
    :cond_3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 923
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a$3;->a:Ljava/util/List;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 924
    invoke-static {}, Lccsancom/mbridge/msdk/mbnative/c/c;->f()Ljava/util/Map;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "1_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a$3;->b:Lccsancom/mbridge/msdk/mbnative/c/c$a;

    iget-object v5, v5, Lccsancom/mbridge/msdk/mbnative/c/c$a;->d:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 925
    invoke-static {}, Lccsancom/mbridge/msdk/mbnative/c/c;->f()Ljava/util/Map;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a$3;->b:Lccsancom/mbridge/msdk/mbnative/c/c$a;

    iget-object v5, v5, Lccsancom/mbridge/msdk/mbnative/c/c$a;->d:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 927
    :cond_4
    invoke-static {}, Lccsancom/mbridge/msdk/mbnative/c/c;->f()Ljava/util/Map;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a$3;->b:Lccsancom/mbridge/msdk/mbnative/c/c$a;

    iget-object v4, v4, Lccsancom/mbridge/msdk/mbnative/c/c$a;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 930
    :cond_5
    invoke-static {}, Lccsanandroid/os/Looper;->myLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_6

    if-eqz v0, :cond_6

    .line 931
    invoke-static {}, Lccsanandroid/os/Looper;->loop()V

    .line 933
    :cond_6
    return-void
.end method
