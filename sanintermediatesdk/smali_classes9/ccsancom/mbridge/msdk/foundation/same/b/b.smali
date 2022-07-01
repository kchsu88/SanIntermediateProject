.class public abstract Lccsancom/mbridge/msdk/foundation/same/b/b;
.super Ljava/lang/Object;
.source "DirectoryContext.java"


# instance fields
.field protected a:Lccsancom/mbridge/msdk/foundation/same/b/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Lccsancom/mbridge/msdk/foundation/same/b/a;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/foundation/same/b/a;-><init>()V

    .line 11
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/foundation/same/b/a;->a(Ljava/lang/String;)V

    .line 12
    sget-object p1, Lccsancom/mbridge/msdk/foundation/same/b/c;->a:Lccsancom/mbridge/msdk/foundation/same/b/c;

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/foundation/same/b/a;->a(Lccsancom/mbridge/msdk/foundation/same/b/c;)V

    .line 13
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/same/b/b;->b()Ljava/util/List;

    move-result-object p1

    .line 14
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 15
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/foundation/same/b/a;->a(Ljava/util/List;)V

    .line 17
    :cond_0
    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/b/b;->a:Lccsancom/mbridge/msdk/foundation/same/b/a;

    .line 18
    return-void
.end method


# virtual methods
.method public final a()Lccsancom/mbridge/msdk/foundation/same/b/a;
    .locals 1

    .line 21
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/b/b;->a:Lccsancom/mbridge/msdk/foundation/same/b/a;

    return-object v0
.end method

.method protected final a(Ljava/util/ArrayList;Lccsancom/mbridge/msdk/foundation/same/b/c;Ljava/lang/String;)Lccsancom/mbridge/msdk/foundation/same/b/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lccsancom/mbridge/msdk/foundation/same/b/a;",
            ">;",
            "Lccsancom/mbridge/msdk/foundation/same/b/c;",
            "Ljava/lang/String;",
            ")",
            "Lccsancom/mbridge/msdk/foundation/same/b/a;"
        }
    .end annotation

    .line 27
    new-instance v0, Lccsancom/mbridge/msdk/foundation/same/b/a;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/foundation/same/b/a;-><init>()V

    .line 28
    invoke-virtual {v0, p2}, Lccsancom/mbridge/msdk/foundation/same/b/a;->a(Lccsancom/mbridge/msdk/foundation/same/b/c;)V

    .line 29
    invoke-virtual {v0, p3}, Lccsancom/mbridge/msdk/foundation/same/b/a;->a(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    return-object v0
.end method

.method protected abstract b()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/same/b/a;",
            ">;"
        }
    .end annotation
.end method
