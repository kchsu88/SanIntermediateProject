.class final Lccsancom/mbridge/msdk/foundation/same/net/d$2;
.super Ljava/lang/Object;
.source "ExecutorDelivery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/foundation/same/net/d;->a(Lccsancom/mbridge/msdk/foundation/same/net/i;)V
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

    .line 41
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/same/net/d$2;->b:Lccsancom/mbridge/msdk/foundation/same/net/d;

    iput-object p2, p0, Lccsancom/mbridge/msdk/foundation/same/net/d$2;->a:Lccsancom/mbridge/msdk/foundation/same/net/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 44
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/d$2;->a:Lccsancom/mbridge/msdk/foundation/same/net/i;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/same/net/i;->k()V

    .line 45
    return-void
.end method
