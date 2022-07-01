.class public final Lccsancom/mbridge/msdk/foundation/same/net/n;
.super Ljava/lang/Object;
.source "VolleyManager.java"


# static fields
.field private static c:Lccsancom/mbridge/msdk/foundation/same/net/n;


# instance fields
.field private a:Lccsancom/mbridge/msdk/foundation/same/net/j;

.field private b:Lccsancom/mbridge/msdk/foundation/same/net/d/b;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public static a()Lccsancom/mbridge/msdk/foundation/same/net/d/b;
    .locals 2

    .line 38
    sget-object v0, Lccsancom/mbridge/msdk/foundation/same/net/n;->c:Lccsancom/mbridge/msdk/foundation/same/net/n;

    iget-object v0, v0, Lccsancom/mbridge/msdk/foundation/same/net/n;->b:Lccsancom/mbridge/msdk/foundation/same/net/d/b;

    if-eqz v0, :cond_0

    .line 39
    return-object v0

    .line 41
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FileDownloader not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Lccsanandroid/content/Context;)V
    .locals 3

    .line 18
    sget-object v0, Lccsancom/mbridge/msdk/foundation/same/net/n;->c:Lccsancom/mbridge/msdk/foundation/same/net/n;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lccsancom/mbridge/msdk/foundation/same/net/n;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/foundation/same/net/n;-><init>()V

    sput-object v0, Lccsancom/mbridge/msdk/foundation/same/net/n;->c:Lccsancom/mbridge/msdk/foundation/same/net/n;

    .line 20
    new-instance v1, Lccsancom/mbridge/msdk/foundation/same/net/j;

    invoke-virtual {p0}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lccsancom/mbridge/msdk/foundation/same/net/j;-><init>(Lccsanandroid/content/Context;)V

    iput-object v1, v0, Lccsancom/mbridge/msdk/foundation/same/net/n;->a:Lccsancom/mbridge/msdk/foundation/same/net/j;

    .line 21
    sget-object p0, Lccsancom/mbridge/msdk/foundation/same/net/n;->c:Lccsancom/mbridge/msdk/foundation/same/net/n;

    new-instance v0, Lccsancom/mbridge/msdk/foundation/same/net/d/b;

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/net/n;->b()Lccsancom/mbridge/msdk/foundation/same/net/j;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lccsancom/mbridge/msdk/foundation/same/net/d/b;-><init>(Lccsancom/mbridge/msdk/foundation/same/net/j;I)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/n;->b:Lccsancom/mbridge/msdk/foundation/same/net/d/b;

    .line 23
    :cond_0
    return-void
.end method

.method public static a(Lccsancom/mbridge/msdk/foundation/same/net/i;)V
    .locals 1

    .line 26
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/net/n;->b()Lccsancom/mbridge/msdk/foundation/same/net/j;

    move-result-object v0

    invoke-virtual {v0, p0}, Lccsancom/mbridge/msdk/foundation/same/net/j;->a(Lccsancom/mbridge/msdk/foundation/same/net/i;)V

    .line 27
    return-void
.end method

.method private static b()Lccsancom/mbridge/msdk/foundation/same/net/j;
    .locals 2

    .line 30
    sget-object v0, Lccsancom/mbridge/msdk/foundation/same/net/n;->c:Lccsancom/mbridge/msdk/foundation/same/net/n;

    iget-object v0, v0, Lccsancom/mbridge/msdk/foundation/same/net/n;->a:Lccsancom/mbridge/msdk/foundation/same/net/j;

    if-eqz v0, :cond_0

    .line 31
    return-object v0

    .line 33
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RequestQueue not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
