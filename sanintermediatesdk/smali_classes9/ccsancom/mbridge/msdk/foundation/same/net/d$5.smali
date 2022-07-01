.class final Lccsancom/mbridge/msdk/foundation/same/net/d$5;
.super Ljava/lang/Object;
.source "ExecutorDelivery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/foundation/same/net/d;->d(Lccsancom/mbridge/msdk/foundation/same/net/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/foundation/same/net/i;

.field final synthetic b:Lccsancom/mbridge/msdk/foundation/same/net/d;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/foundation/same/net/d;Lccsancom/mbridge/msdk/foundation/same/net/i;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/same/net/d$5;->b:Lccsancom/mbridge/msdk/foundation/same/net/d;

    iput-object p2, p0, Lccsancom/mbridge/msdk/foundation/same/net/d$5;->a:Lccsancom/mbridge/msdk/foundation/same/net/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 80
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/d$5;->a:Lccsancom/mbridge/msdk/foundation/same/net/i;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/same/net/i;->l()V

    .line 81
    return-void
.end method
