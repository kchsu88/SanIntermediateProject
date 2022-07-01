.class public final Lccsancom/mbridge/msdk/foundation/same/net/b;
.super Ljava/lang/Object;
.source "DefaultRetryPolicy.java"

# interfaces
.implements Lccsancom/mbridge/msdk/foundation/same/net/l;


# instance fields
.field private a:I

.field private final b:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12
    const/16 v0, 0x7530

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lccsancom/mbridge/msdk/foundation/same/net/b;-><init>(II)V

    .line 13
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    if-gtz p1, :cond_0

    .line 17
    const/16 p1, 0x7530

    .line 19
    :cond_0
    iput p1, p0, Lccsancom/mbridge/msdk/foundation/same/net/b;->a:I

    .line 20
    iput p2, p0, Lccsancom/mbridge/msdk/foundation/same/net/b;->b:I

    .line 21
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 25
    iget v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/b;->a:I

    return v0
.end method
