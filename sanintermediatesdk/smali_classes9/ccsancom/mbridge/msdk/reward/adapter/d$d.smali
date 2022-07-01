.class public final Lccsancom/mbridge/msdk/reward/adapter/d$d;
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
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/reward/adapter/d;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/reward/adapter/d;Ljava/lang/String;)V
    .locals 0

    .line 3145
    iput-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$d;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3146
    iput-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/d$d;->b:Ljava/lang/String;

    .line 3147
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 3152
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/d$d;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/adapter/d;->u(Lccsancom/mbridge/msdk/reward/adapter/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3153
    return-void

    .line 3155
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/d$d;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/reward/adapter/d;->b(Lccsancom/mbridge/msdk/reward/adapter/d;Z)Z

    .line 3156
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/d$d;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/adapter/d;->i(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsanandroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3157
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/d$d;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/adapter/d;->i(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsanandroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/os/Handler;->obtainMessage()Lccsanandroid/os/Message;

    move-result-object v0

    .line 3158
    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$d;->b:Ljava/lang/String;

    iput-object v1, v0, Lccsanandroid/os/Message;->obj:Ljava/lang/Object;

    .line 3159
    const/4 v1, 0x2

    iput v1, v0, Lccsanandroid/os/Message;->what:I

    .line 3160
    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/d$d;->a:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-static {v1}, Lccsancom/mbridge/msdk/reward/adapter/d;->i(Lccsancom/mbridge/msdk/reward/adapter/d;)Lccsanandroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccsanandroid/os/Handler;->sendMessage(Lccsanandroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3164
    :cond_1
    goto :goto_0

    .line 3162
    :catch_0
    move-exception v0

    .line 3163
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RewardMVVideoAdapter"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3165
    :goto_0
    return-void
.end method
