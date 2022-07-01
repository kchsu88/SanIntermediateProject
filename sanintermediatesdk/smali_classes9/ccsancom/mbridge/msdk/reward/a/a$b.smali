.class public final Lccsancom/mbridge/msdk/reward/a/a$b;
.super Ljava/lang/Object;
.source "RewardVideoController.java"

# interfaces
.implements Lccsancom/mbridge/msdk/reward/adapter/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/reward/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/reward/a/a;

.field private b:Lccsancom/mbridge/msdk/reward/adapter/a;

.field private c:Z

.field private d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/reward/a/a;Lccsancom/mbridge/msdk/reward/adapter/a;Z)V
    .locals 0

    .line 2065
    iput-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$b;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2066
    iput-object p2, p0, Lccsancom/mbridge/msdk/reward/a/a$b;->b:Lccsancom/mbridge/msdk/reward/adapter/a;

    .line 2067
    iput-boolean p3, p0, Lccsancom/mbridge/msdk/reward/a/a$b;->c:Z

    .line 2068
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 2092
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a$b;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2093
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a$b;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/a/a;->q(Lccsancom/mbridge/msdk/reward/a/a;)Lccsanandroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/a/a$b;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2095
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a$b;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/a/a;->d(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/reward/a/a$c;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2096
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a$b;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/a/a;->d(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/reward/a/a$c;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/a/a$b;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v1}, Lccsancom/mbridge/msdk/reward/a/a;->f(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/a/a$b;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v2}, Lccsancom/mbridge/msdk/reward/a/a;->g(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lccsancom/mbridge/msdk/reward/a/a$c;->a(Lccsancom/mbridge/msdk/reward/a/a$c;Ljava/lang/String;Ljava/lang/String;)V

    .line 2098
    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/Runnable;)V
    .locals 0

    .line 2077
    iput-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$b;->d:Ljava/lang/Runnable;

    .line 2078
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 2102
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a$b;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2103
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a$b;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/a/a;->q(Lccsancom/mbridge/msdk/reward/a/a;)Lccsanandroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/a/a$b;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2105
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a$b;->b:Lccsancom/mbridge/msdk/reward/adapter/a;

    if-eqz v0, :cond_1

    .line 2106
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lccsancom/mbridge/msdk/reward/adapter/a;->a(Lccsancom/mbridge/msdk/reward/adapter/b;)V

    .line 2107
    iput-object v1, p0, Lccsancom/mbridge/msdk/reward/a/a$b;->b:Lccsancom/mbridge/msdk/reward/adapter/a;

    .line 2110
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a$b;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/a/a;->d(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/reward/a/a$c;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2111
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a$b;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/a/a;->d(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/reward/a/a$c;

    move-result-object v0

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/reward/a/a$c;->a(Lccsancom/mbridge/msdk/reward/a/a$c;Ljava/lang/String;)V

    .line 2113
    :cond_2
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .line 2082
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$b;->d:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 2083
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$b;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/a/a;->q(Lccsancom/mbridge/msdk/reward/a/a;)Lccsanandroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a$b;->d:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lccsanandroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2085
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$b;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/a/a;->d(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/reward/a/a$c;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2086
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a$b;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/a/a;->d(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/reward/a/a$c;

    move-result-object p1

    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a$b;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/reward/a/a;->f(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/a/a$b;->a:Lccsancom/mbridge/msdk/reward/a/a;

    invoke-static {v1}, Lccsancom/mbridge/msdk/reward/a/a;->g(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lccsancom/mbridge/msdk/reward/a/a$c;->d(Lccsancom/mbridge/msdk/reward/a/a$c;Ljava/lang/String;Ljava/lang/String;)V

    .line 2088
    :cond_1
    return-void
.end method
