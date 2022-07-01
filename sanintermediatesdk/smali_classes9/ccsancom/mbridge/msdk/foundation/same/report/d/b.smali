.class public abstract Lccsancom/mbridge/msdk/foundation/same/report/d/b;
.super Lccsancom/mbridge/msdk/foundation/same/net/f;
.source "ReportResponseHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/mbridge/msdk/foundation/same/net/f<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    const-class v0, Lccsancom/mbridge/msdk/foundation/same/report/d/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/foundation/same/report/d/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lccsancom/mbridge/msdk/foundation/same/net/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lccsancom/mbridge/msdk/foundation/same/net/a/a;)V
    .locals 0

    .line 21
    iget p1, p1, Lccsancom/mbridge/msdk/foundation/same/net/a/a;->a:I

    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/same/net/g/a;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/foundation/same/report/d/b;->b(Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public final a(Lccsancom/mbridge/msdk/foundation/same/net/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/foundation/same/net/k<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 14
    if-eqz p1, :cond_0

    .line 15
    iget-object p1, p1, Lccsancom/mbridge/msdk/foundation/same/net/k;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/foundation/same/report/d/b;->a(Ljava/lang/String;)V

    .line 17
    :cond_0
    return-void
.end method

.method public abstract a(Ljava/lang/String;)V
.end method

.method public abstract b(Ljava/lang/String;)V
.end method
