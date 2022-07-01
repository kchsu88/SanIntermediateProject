.class final Lccsancom/mbridge/msdk/foundation/same/net/d$a;
.super Ljava/lang/Object;
.source "ExecutorDelivery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/foundation/same/net/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/foundation/same/net/d;

.field private final b:Lccsancom/mbridge/msdk/foundation/same/net/i;

.field private final c:Lccsancom/mbridge/msdk/foundation/same/net/k;


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/foundation/same/net/d;Lccsancom/mbridge/msdk/foundation/same/net/i;Lccsancom/mbridge/msdk/foundation/same/net/k;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/same/net/d$a;->a:Lccsancom/mbridge/msdk/foundation/same/net/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p2, p0, Lccsancom/mbridge/msdk/foundation/same/net/d$a;->b:Lccsancom/mbridge/msdk/foundation/same/net/i;

    .line 116
    iput-object p3, p0, Lccsancom/mbridge/msdk/foundation/same/net/d$a;->c:Lccsancom/mbridge/msdk/foundation/same/net/k;

    .line 117
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 122
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/d$a;->b:Lccsancom/mbridge/msdk/foundation/same/net/i;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/same/net/i;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/d$a;->b:Lccsancom/mbridge/msdk/foundation/same/net/i;

    const-string v1, "canceled-at-delivery"

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/same/net/i;->a(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/d$a;->b:Lccsancom/mbridge/msdk/foundation/same/net/i;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/same/net/i;->i()V

    .line 125
    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/d$a;->c:Lccsancom/mbridge/msdk/foundation/same/net/k;

    .line 1015
    iget-object v0, v0, Lccsancom/mbridge/msdk/foundation/same/net/k;->b:Lccsancom/mbridge/msdk/foundation/same/net/a/a;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 128
    :goto_0
    if-eqz v0, :cond_2

    .line 129
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/d$a;->b:Lccsancom/mbridge/msdk/foundation/same/net/i;

    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/same/net/d$a;->c:Lccsancom/mbridge/msdk/foundation/same/net/k;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/same/net/i;->a(Lccsancom/mbridge/msdk/foundation/same/net/k;)V

    goto :goto_1

    .line 131
    :cond_2
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/d$a;->b:Lccsancom/mbridge/msdk/foundation/same/net/i;

    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/same/net/d$a;->c:Lccsancom/mbridge/msdk/foundation/same/net/k;

    iget-object v1, v1, Lccsancom/mbridge/msdk/foundation/same/net/k;->b:Lccsancom/mbridge/msdk/foundation/same/net/a/a;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/same/net/i;->a(Lccsancom/mbridge/msdk/foundation/same/net/a/a;)V

    .line 134
    :goto_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/d$a;->b:Lccsancom/mbridge/msdk/foundation/same/net/i;

    const-string v1, "done"

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/same/net/i;->a(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/d$a;->b:Lccsancom/mbridge/msdk/foundation/same/net/i;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/same/net/i;->k()V

    .line 136
    return-void
.end method
