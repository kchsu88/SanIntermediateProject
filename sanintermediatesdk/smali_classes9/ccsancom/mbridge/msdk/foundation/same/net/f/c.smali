.class public final Lccsancom/mbridge/msdk/foundation/same/net/f/c;
.super Ljava/lang/Object;
.source "NetworkResponse.java"


# instance fields
.field public final a:I

.field public final b:[B

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/same/net/c/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I[BLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[B",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/same/net/c/b;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-static {p3}, Lccsancom/mbridge/msdk/foundation/same/net/f/c;->a(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p3}, Lccsancom/mbridge/msdk/foundation/same/net/f/c;-><init>(I[BLjava/util/Map;Ljava/util/List;)V

    .line 19
    return-void
.end method

.method private constructor <init>(I[BLjava/util/Map;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/same/net/c/b;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lccsancom/mbridge/msdk/foundation/same/net/f/c;->a:I

    .line 27
    iput-object p2, p0, Lccsancom/mbridge/msdk/foundation/same/net/f/c;->b:[B

    .line 28
    iput-object p3, p0, Lccsancom/mbridge/msdk/foundation/same/net/f/c;->c:Ljava/util/Map;

    .line 29
    if-nez p4, :cond_0

    .line 30
    const/4 p1, 0x0

    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/same/net/f/c;->d:Ljava/util/List;

    goto :goto_0

    .line 32
    :cond_0
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/same/net/f/c;->d:Ljava/util/List;

    .line 34
    :goto_0
    return-void
.end method

.method private static a(Ljava/util/List;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/same/net/c/b;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 37
    if-nez p0, :cond_0

    .line 38
    const/4 p0, 0x0

    return-object p0

    .line 40
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 43
    :cond_1
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 44
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/mbridge/msdk/foundation/same/net/c/b;

    .line 45
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/same/net/c/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/same/net/c/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    return-object v0
.end method
