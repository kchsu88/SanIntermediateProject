.class public Lccsancom/mbridge/msdk/foundation/same/net/d;
.super Ljava/lang/Object;
.source "ExecutorDelivery.java"

# interfaces
.implements Lccsancom/mbridge/msdk/foundation/same/net/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/foundation/same/net/d$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lccsanandroid/os/Handler;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-class v0, Lccsancom/mbridge/msdk/foundation/same/net/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/d;->a:Ljava/lang/String;

    .line 15
    new-instance v0, Lccsancom/mbridge/msdk/foundation/same/net/d$1;

    invoke-direct {v0, p0, p1}, Lccsancom/mbridge/msdk/foundation/same/net/d$1;-><init>(Lccsancom/mbridge/msdk/foundation/same/net/d;Lccsanandroid/os/Handler;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/d;->b:Ljava/util/concurrent/Executor;

    .line 21
    return-void
.end method


# virtual methods
.method public final a(Lccsancom/mbridge/msdk/foundation/same/net/i;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/foundation/same/net/i<",
            "*>;)V"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/d;->b:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_0

    .line 41
    new-instance v1, Lccsancom/mbridge/msdk/foundation/same/net/d$2;

    invoke-direct {v1, p0, p1}, Lccsancom/mbridge/msdk/foundation/same/net/d$2;-><init>(Lccsancom/mbridge/msdk/foundation/same/net/d;Lccsancom/mbridge/msdk/foundation/same/net/i;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 48
    :cond_0
    return-void
.end method

.method public final a(Lccsancom/mbridge/msdk/foundation/same/net/i;JJ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/foundation/same/net/i<",
            "*>;JJ)V"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/d;->b:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_0

    .line 101
    new-instance v8, Lccsancom/mbridge/msdk/foundation/same/net/d$6;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lccsancom/mbridge/msdk/foundation/same/net/d$6;-><init>(Lccsancom/mbridge/msdk/foundation/same/net/d;Lccsancom/mbridge/msdk/foundation/same/net/i;JJ)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 108
    :cond_0
    return-void
.end method

.method public final a(Lccsancom/mbridge/msdk/foundation/same/net/i;Lccsancom/mbridge/msdk/foundation/same/net/a/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/foundation/same/net/i<",
            "*>;",
            "Lccsancom/mbridge/msdk/foundation/same/net/a/a;",
            ")V"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/d;->b:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_0

    .line 33
    invoke-static {p2}, Lccsancom/mbridge/msdk/foundation/same/net/k;->a(Lccsancom/mbridge/msdk/foundation/same/net/a/a;)Lccsancom/mbridge/msdk/foundation/same/net/k;

    move-result-object p2

    .line 34
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/d;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lccsancom/mbridge/msdk/foundation/same/net/d$a;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/foundation/same/net/d$a;-><init>(Lccsancom/mbridge/msdk/foundation/same/net/d;Lccsancom/mbridge/msdk/foundation/same/net/i;Lccsancom/mbridge/msdk/foundation/same/net/k;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 36
    :cond_0
    return-void
.end method

.method public final a(Lccsancom/mbridge/msdk/foundation/same/net/i;Lccsancom/mbridge/msdk/foundation/same/net/k;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/foundation/same/net/i<",
            "*>;",
            "Lccsancom/mbridge/msdk/foundation/same/net/k<",
            "*>;)V"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/d;->b:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_0

    .line 26
    new-instance v1, Lccsancom/mbridge/msdk/foundation/same/net/d$a;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/foundation/same/net/d$a;-><init>(Lccsancom/mbridge/msdk/foundation/same/net/d;Lccsancom/mbridge/msdk/foundation/same/net/i;Lccsancom/mbridge/msdk/foundation/same/net/k;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 28
    :cond_0
    return-void
.end method

.method public final b(Lccsancom/mbridge/msdk/foundation/same/net/i;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/foundation/same/net/i<",
            "*>;)V"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/d;->b:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_0

    .line 53
    new-instance v1, Lccsancom/mbridge/msdk/foundation/same/net/d$3;

    invoke-direct {v1, p0, p1}, Lccsancom/mbridge/msdk/foundation/same/net/d$3;-><init>(Lccsancom/mbridge/msdk/foundation/same/net/d;Lccsancom/mbridge/msdk/foundation/same/net/i;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 60
    :cond_0
    return-void
.end method

.method public final c(Lccsancom/mbridge/msdk/foundation/same/net/i;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/foundation/same/net/i<",
            "*>;)V"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/d;->b:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_0

    .line 65
    new-instance v1, Lccsancom/mbridge/msdk/foundation/same/net/d$4;

    invoke-direct {v1, p0, p1}, Lccsancom/mbridge/msdk/foundation/same/net/d$4;-><init>(Lccsancom/mbridge/msdk/foundation/same/net/d;Lccsancom/mbridge/msdk/foundation/same/net/i;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 72
    :cond_0
    return-void
.end method

.method public final d(Lccsancom/mbridge/msdk/foundation/same/net/i;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/foundation/same/net/i<",
            "*>;)V"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/d;->b:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_0

    .line 77
    new-instance v1, Lccsancom/mbridge/msdk/foundation/same/net/d$5;

    invoke-direct {v1, p0, p1}, Lccsancom/mbridge/msdk/foundation/same/net/d$5;-><init>(Lccsancom/mbridge/msdk/foundation/same/net/d;Lccsancom/mbridge/msdk/foundation/same/net/i;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 84
    :cond_0
    return-void
.end method
