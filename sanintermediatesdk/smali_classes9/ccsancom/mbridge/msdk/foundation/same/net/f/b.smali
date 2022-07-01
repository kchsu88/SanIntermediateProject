.class public final Lccsancom/mbridge/msdk/foundation/same/net/f/b;
.super Ljava/lang/Object;
.source "HttpResponse.java"


# instance fields
.field private final a:I

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/same/net/c/b;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(ILjava/util/List;Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/same/net/c/b;",
            ">;",
            "Ljava/io/InputStream;",
            ")V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lccsancom/mbridge/msdk/foundation/same/net/f/b;->a:I

    .line 22
    iput-object p2, p0, Lccsancom/mbridge/msdk/foundation/same/net/f/b;->b:Ljava/util/List;

    .line 23
    iput-object p3, p0, Lccsancom/mbridge/msdk/foundation/same/net/f/b;->c:Ljava/io/InputStream;

    .line 24
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 27
    iget v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/f/b;->a:I

    return v0
.end method

.method public final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/same/net/c/b;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/f/b;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/io/InputStream;
    .locals 1

    .line 35
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/f/b;->c:Ljava/io/InputStream;

    return-object v0
.end method
