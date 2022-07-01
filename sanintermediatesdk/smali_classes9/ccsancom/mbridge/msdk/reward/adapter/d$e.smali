.class public final Lccsancom/mbridge/msdk/reward/adapter/d$e;
.super Ljava/lang/Object;
.source "RewardMVVideoAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/reward/adapter/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/reward/adapter/d;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/reward/adapter/d;Ljava/lang/String;)V
    .locals 0

    .line 3112
    iput-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$e;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3113
    iput-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/d$e;->b:Ljava/lang/String;

    .line 3114
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 3119
    const-string v0, "RewardMVVideoAdapter"

    :try_start_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$e;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v1}, Lccsancom/mbridge/msdk/reward/adapter/d;->h(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsanandroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lccsancom/mbridge/msdk/reward/adapter/d$e;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v3}, Lccsancom/mbridge/msdk/reward/adapter/d;->d(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lccsancom/mbridge/msdk/reward/adapter/d;->b(Lccsancom/mbridge/msdk/reward/adapter/d;Ljava/lang/String;)Ljava/lang/String;

    .line 3120
    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$e;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v1}, Lccsancom/mbridge/msdk/reward/adapter/d;->r(Lccsancom/mbridge/msdk/reward/adapter/d;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3121
    return-void

    .line 3123
    :cond_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$e;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v1}, Lccsancom/mbridge/msdk/reward/adapter/d;->s(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsancom/mbridge/msdk/reward/adapter/d$d;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$e;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v1}, Lccsancom/mbridge/msdk/reward/adapter/d;->i(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsanandroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3124
    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$e;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v1}, Lccsancom/mbridge/msdk/reward/adapter/d;->i(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsanandroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/adapter/d$e;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/adapter/d;->s(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsancom/mbridge/msdk/reward/adapter/d$d;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsanandroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3126
    :cond_1
    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$e;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(Lccsancom/mbridge/msdk/reward/adapter/d;Z)Z

    .line 3127
    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$e;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v1}, Lccsancom/mbridge/msdk/reward/adapter/d;->i(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsanandroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 3128
    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$e;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v1}, Lccsancom/mbridge/msdk/reward/adapter/d;->i(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsanandroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Lccsanandroid/os/Handler;->obtainMessage()Lccsanandroid/os/Message;

    move-result-object v1

    .line 3129
    iget-object v3, p0, Lccsancom/mbridge/msdk/reward/adapter/d$e;->b:Ljava/lang/String;

    iput-object v3, v1, Lccsanandroid/os/Message;->obj:Ljava/lang/Object;

    .line 3130
    iput v2, v1, Lccsanandroid/os/Message;->what:I

    .line 3131
    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/adapter/d$e;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/adapter/d;->i(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsanandroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lccsanandroid/os/Handler;->sendMessage(Lccsanandroid/os/Message;)Z

    .line 3133
    :cond_2
    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$e;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v1}, Lccsancom/mbridge/msdk/reward/adapter/d;->t(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 3134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "excludeId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/adapter/d$e;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/adapter/d;->t(Lccsancom/mbridge/msdk/reward/adapter/d;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3138
    :cond_3
    goto :goto_0

    .line 3136
    :catch_0
    move-exception v1

    .line 3137
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3139
    :goto_0
    return-void
.end method
