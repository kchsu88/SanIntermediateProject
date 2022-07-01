.class public final Lccsancom/mbridge/msdk/foundation/same/b/a;
.super Ljava/lang/Object;
.source "Directory.java"


# instance fields
.field private a:Lccsancom/mbridge/msdk/foundation/same/b/c;

.field private b:Ljava/lang/String;

.field private c:Lccsancom/mbridge/msdk/foundation/same/b/a;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/same/b/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lccsancom/mbridge/msdk/foundation/same/b/a;)V
    .locals 1

    .line 41
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/b/a;->d:Ljava/util/List;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/b/a;->d:Ljava/util/List;

    .line 44
    :cond_0
    nop

    .line 1033
    iput-object p0, p1, Lccsancom/mbridge/msdk/foundation/same/b/a;->c:Lccsancom/mbridge/msdk/foundation/same/b/a;

    .line 45
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/b/a;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    return-void
.end method


# virtual methods
.method public final a()Lccsancom/mbridge/msdk/foundation/same/b/c;
    .locals 1

    .line 13
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/b/a;->a:Lccsancom/mbridge/msdk/foundation/same/b/c;

    return-object v0
.end method

.method public final a(Lccsancom/mbridge/msdk/foundation/same/b/c;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/same/b/a;->a:Lccsancom/mbridge/msdk/foundation/same/b/c;

    .line 18
    return-void
.end method

.method public final a(Lccsancom/mbridge/msdk/foundation/same/b/c;Ljava/lang/String;)V
    .locals 1

    .line 49
    new-instance v0, Lccsancom/mbridge/msdk/foundation/same/b/a;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/foundation/same/b/a;-><init>()V

    .line 50
    nop

    .line 2017
    iput-object p1, v0, Lccsancom/mbridge/msdk/foundation/same/b/a;->a:Lccsancom/mbridge/msdk/foundation/same/b/c;

    .line 51
    nop

    .line 2025
    iput-object p2, v0, Lccsancom/mbridge/msdk/foundation/same/b/a;->b:Ljava/lang/String;

    .line 52
    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/foundation/same/b/a;->a(Lccsancom/mbridge/msdk/foundation/same/b/a;)V

    .line 53
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/same/b/a;->b:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/same/b/a;",
            ">;)V"
        }
    .end annotation

    .line 56
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 58
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/foundation/same/b/a;

    .line 59
    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/foundation/same/b/a;->a(Lccsancom/mbridge/msdk/foundation/same/b/a;)V

    .line 60
    goto :goto_0

    .line 61
    :cond_1
    return-void

    .line 57
    :cond_2
    :goto_1
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/b/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Lccsancom/mbridge/msdk/foundation/same/b/a;
    .locals 1

    .line 29
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/b/a;->c:Lccsancom/mbridge/msdk/foundation/same/b/a;

    return-object v0
.end method

.method public final d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/same/b/a;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/b/a;->d:Ljava/util/List;

    return-object v0
.end method
