.class public final Lccsancom/mbridge/msdk/foundation/same/net/k;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public b:Lccsancom/mbridge/msdk/foundation/same/net/a/a;

.field public c:Lccsancom/mbridge/msdk/foundation/same/net/f/c;


# direct methods
.method private constructor <init>(Lccsancom/mbridge/msdk/foundation/same/net/a/a;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/k;->a:Ljava/lang/Object;

    .line 10
    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/k;->b:Lccsancom/mbridge/msdk/foundation/same/net/a/a;

    .line 12
    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/k;->c:Lccsancom/mbridge/msdk/foundation/same/net/f/c;

    .line 33
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/same/net/k;->b:Lccsancom/mbridge/msdk/foundation/same/net/a/a;

    .line 34
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Lccsancom/mbridge/msdk/foundation/same/net/f/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lccsancom/mbridge/msdk/foundation/same/net/f/c;",
            ")V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/k;->a:Ljava/lang/Object;

    .line 10
    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/k;->b:Lccsancom/mbridge/msdk/foundation/same/net/a/a;

    .line 12
    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/k;->c:Lccsancom/mbridge/msdk/foundation/same/net/f/c;

    .line 28
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/same/net/k;->a:Ljava/lang/Object;

    .line 29
    iput-object p2, p0, Lccsancom/mbridge/msdk/foundation/same/net/k;->c:Lccsancom/mbridge/msdk/foundation/same/net/f/c;

    .line 30
    return-void
.end method

.method public static a(Lccsancom/mbridge/msdk/foundation/same/net/a/a;)Lccsancom/mbridge/msdk/foundation/same/net/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/mbridge/msdk/foundation/same/net/a/a;",
            ")",
            "Lccsancom/mbridge/msdk/foundation/same/net/k<",
            "TT;>;"
        }
    .end annotation

    .line 23
    new-instance v0, Lccsancom/mbridge/msdk/foundation/same/net/k;

    invoke-direct {v0, p0}, Lccsancom/mbridge/msdk/foundation/same/net/k;-><init>(Lccsancom/mbridge/msdk/foundation/same/net/a/a;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Lccsancom/mbridge/msdk/foundation/same/net/f/c;)Lccsancom/mbridge/msdk/foundation/same/net/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lccsancom/mbridge/msdk/foundation/same/net/f/c;",
            ")",
            "Lccsancom/mbridge/msdk/foundation/same/net/k<",
            "TT;>;"
        }
    .end annotation

    .line 19
    new-instance v0, Lccsancom/mbridge/msdk/foundation/same/net/k;

    invoke-direct {v0, p0, p1}, Lccsancom/mbridge/msdk/foundation/same/net/k;-><init>(Ljava/lang/Object;Lccsancom/mbridge/msdk/foundation/same/net/f/c;)V

    return-object v0
.end method
