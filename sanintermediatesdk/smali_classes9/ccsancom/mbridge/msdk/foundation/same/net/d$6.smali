.class final Lccsancom/mbridge/msdk/foundation/same/net/d$6;
.super Ljava/lang/Object;
.source "ExecutorDelivery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/foundation/same/net/d;->a(Lccsancom/mbridge/msdk/foundation/same/net/i;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/foundation/same/net/i;

.field final synthetic b:J

.field final synthetic c:J

.field final synthetic d:Lccsancom/mbridge/msdk/foundation/same/net/d;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/foundation/same/net/d;Lccsancom/mbridge/msdk/foundation/same/net/i;JJ)V
    .locals 0

    .line 101
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/same/net/d$6;->d:Lccsancom/mbridge/msdk/foundation/same/net/d;

    iput-object p2, p0, Lccsancom/mbridge/msdk/foundation/same/net/d$6;->a:Lccsancom/mbridge/msdk/foundation/same/net/i;

    iput-wide p3, p0, Lccsancom/mbridge/msdk/foundation/same/net/d$6;->b:J

    iput-wide p5, p0, Lccsancom/mbridge/msdk/foundation/same/net/d$6;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 104
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/d$6;->a:Lccsancom/mbridge/msdk/foundation/same/net/i;

    iget-wide v1, p0, Lccsancom/mbridge/msdk/foundation/same/net/d$6;->b:J

    iget-wide v3, p0, Lccsancom/mbridge/msdk/foundation/same/net/d$6;->c:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lccsancom/mbridge/msdk/foundation/same/net/i;->a(JJ)V

    .line 105
    return-void
.end method
