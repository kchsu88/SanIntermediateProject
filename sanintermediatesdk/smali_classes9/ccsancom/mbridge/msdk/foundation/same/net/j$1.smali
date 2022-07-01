.class final Lccsancom/mbridge/msdk/foundation/same/net/j$1;
.super Ljava/lang/Object;
.source "RequestQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/foundation/same/net/j;->a(Lccsancom/mbridge/msdk/foundation/same/net/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/foundation/same/net/i;

.field final synthetic b:Lccsancom/mbridge/msdk/foundation/same/net/j;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/foundation/same/net/j;Lccsancom/mbridge/msdk/foundation/same/net/i;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/same/net/j$1;->b:Lccsancom/mbridge/msdk/foundation/same/net/j;

    iput-object p2, p0, Lccsancom/mbridge/msdk/foundation/same/net/j$1;->a:Lccsancom/mbridge/msdk/foundation/same/net/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 75
    new-instance v0, Lccsancom/mbridge/msdk/foundation/same/net/h;

    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/same/net/j$1;->b:Lccsancom/mbridge/msdk/foundation/same/net/j;

    .line 76
    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/same/net/j;->a(Lccsancom/mbridge/msdk/foundation/same/net/j;)Lccsanandroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/same/net/j$1;->b:Lccsancom/mbridge/msdk/foundation/same/net/j;

    invoke-static {v2}, Lccsancom/mbridge/msdk/foundation/same/net/j;->b(Lccsancom/mbridge/msdk/foundation/same/net/j;)Lccsancom/mbridge/msdk/foundation/same/net/c;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lccsancom/mbridge/msdk/foundation/same/net/h;-><init>(Lccsanandroid/content/Context;Ljavax/net/ssl/SSLSocketFactory;Lccsancom/mbridge/msdk/foundation/same/net/c;)V

    .line 77
    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/same/net/j$1;->a:Lccsancom/mbridge/msdk/foundation/same/net/i;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/same/net/h;->a(Lccsancom/mbridge/msdk/foundation/same/net/i;)V

    .line 78
    return-void
.end method
