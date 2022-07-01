.class final Lccsancom/mbridge/msdk/foundation/same/net/d$1;
.super Ljava/lang/Object;
.source "ExecutorDelivery.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/foundation/same/net/d;-><init>(Lccsanandroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsanandroid/os/Handler;

.field final synthetic b:Lccsancom/mbridge/msdk/foundation/same/net/d;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/foundation/same/net/d;Lccsanandroid/os/Handler;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/same/net/d$1;->b:Lccsancom/mbridge/msdk/foundation/same/net/d;

    iput-object p2, p0, Lccsancom/mbridge/msdk/foundation/same/net/d$1;->a:Lccsanandroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 18
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/d$1;->a:Lccsanandroid/os/Handler;

    invoke-virtual {v0, p1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    return-void
.end method
