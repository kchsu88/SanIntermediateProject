.class final Lccsancom/mbridge/msdk/foundation/tools/i$1;
.super Ljava/lang/Object;
.source "MIMManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/foundation/tools/i;->a(Lccsanandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsanandroid/content/Context;

.field final synthetic b:Lccsancom/mbridge/msdk/foundation/tools/i;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/foundation/tools/i;Lccsanandroid/content/Context;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/tools/i$1;->b:Lccsancom/mbridge/msdk/foundation/tools/i;

    iput-object p2, p0, Lccsancom/mbridge/msdk/foundation/tools/i$1;->a:Lccsanandroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 128
    const-string v0, "MIMManager"

    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/tools/i$1;->b:Lccsancom/mbridge/msdk/foundation/tools/i;

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/tools/i;->a(Lccsancom/mbridge/msdk/foundation/tools/i;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    :try_start_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/tools/i$1;->b:Lccsancom/mbridge/msdk/foundation/tools/i;

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/tools/i;->b(Lccsancom/mbridge/msdk/foundation/tools/i;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lccsancom/mbridge/msdk/foundation/tools/i;->a(Lccsancom/mbridge/msdk/foundation/tools/i;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    goto :goto_0

    .line 131
    :catch_0
    move-exception v1

    .line 132
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :goto_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/tools/i$1;->b:Lccsancom/mbridge/msdk/foundation/tools/i;

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/tools/i;->c(Lccsancom/mbridge/msdk/foundation/tools/i;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/tools/i$1;->b:Lccsancom/mbridge/msdk/foundation/tools/i;

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/tools/i;->c(Lccsancom/mbridge/msdk/foundation/tools/i;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/tools/i$1;->a:Lccsanandroid/content/Context;

    if-eqz v1, :cond_0

    .line 136
    :try_start_1
    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/tools/i$1;->b:Lccsancom/mbridge/msdk/foundation/tools/i;

    new-instance v2, Lccsancom/mbridge/msdk/foundation/tools/i$b;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lccsancom/mbridge/msdk/foundation/tools/i$b;-><init>(Lccsancom/mbridge/msdk/foundation/tools/i$1;)V

    invoke-static {v1, v2}, Lccsancom/mbridge/msdk/foundation/tools/i;->a(Lccsancom/mbridge/msdk/foundation/tools/i;Lccsancom/mbridge/msdk/foundation/tools/i$b;)Lccsancom/mbridge/msdk/foundation/tools/i$b;

    .line 137
    new-instance v1, Lccsanandroid/content/IntentFilter;

    invoke-direct {v1}, Lccsanandroid/content/IntentFilter;-><init>()V

    .line 138
    const-string v2, "DFKwWgtuDkKwLZPwD+z8H+N/xj26Vjcdx5KyVj5GxVN="

    invoke-static {v2}, Lccsancom/mbridge/msdk/foundation/tools/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsanandroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    const-string v2, "DFKwWgtuDkKwLZPwD+z8H+N/xj26Vjcdx5KanjKnxVN="

    invoke-static {v2}, Lccsancom/mbridge/msdk/foundation/tools/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsanandroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    const-string v2, "DFKwWgtuDkKwLZPwD+z8H+N/xjQZxVfV+T2SZVe6V2xS5c5n"

    invoke-static {v2}, Lccsancom/mbridge/msdk/foundation/tools/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsanandroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/tools/i$1;->a:Lccsanandroid/content/Context;

    iget-object v3, p0, Lccsancom/mbridge/msdk/foundation/tools/i$1;->b:Lccsancom/mbridge/msdk/foundation/tools/i;

    invoke-static {v3}, Lccsancom/mbridge/msdk/foundation/tools/i;->d(Lccsancom/mbridge/msdk/foundation/tools/i;)Lccsancom/mbridge/msdk/foundation/tools/i$b;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lccsanandroid/content/Context;->registerReceiver(Lccsanandroid/content/BroadcastReceiver;Lccsanandroid/content/IntentFilter;)Lccsanandroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 144
    goto :goto_1

    .line 142
    :catch_1
    move-exception v1

    .line 143
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_0
    :goto_1
    return-void
.end method
