.class public final Lccsancom/mbridge/msdk/foundation/same/net/d/b;
.super Ljava/lang/Object;
.source "FileDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/foundation/same/net/d/b$a;
    }
.end annotation


# instance fields
.field private a:Lccsancom/mbridge/msdk/foundation/same/net/j;

.field private b:I

.field private c:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lccsancom/mbridge/msdk/foundation/same/net/d/b$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/foundation/same/net/j;I)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/d/b;->c:Ljava/util/LinkedList;

    .line 18
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/same/net/d/b;->a:Lccsancom/mbridge/msdk/foundation/same/net/j;

    .line 19
    iput p2, p0, Lccsancom/mbridge/msdk/foundation/same/net/d/b;->b:I

    .line 20
    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/foundation/same/net/d/b;)Lccsancom/mbridge/msdk/foundation/same/net/j;
    .locals 0

    .line 12
    iget-object p0, p0, Lccsancom/mbridge/msdk/foundation/same/net/d/b;->a:Lccsancom/mbridge/msdk/foundation/same/net/j;

    return-object p0
.end method

.method private a()V
    .locals 3

    .line 36
    monitor-enter p0

    .line 37
    const/4 v0, 0x0

    .line 38
    :try_start_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/same/net/d/b;->c:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/foundation/same/net/d/b$a;

    .line 39
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/same/net/d/b$a;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 40
    :cond_0
    goto :goto_0

    .line 41
    :cond_1
    iget v1, p0, Lccsancom/mbridge/msdk/foundation/same/net/d/b;->b:I

    if-lt v0, v1, :cond_2

    monitor-exit p0

    return-void

    .line 43
    :cond_2
    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/same/net/d/b;->c:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/foundation/same/net/d/b$a;

    .line 44
    invoke-static {v2}, Lccsancom/mbridge/msdk/foundation/same/net/d/b$a;->a(Lccsancom/mbridge/msdk/foundation/same/net/d/b$a;)Z

    move-result v2

    if-eqz v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    iget v2, p0, Lccsancom/mbridge/msdk/foundation/same/net/d/b;->b:I

    if-ne v0, v2, :cond_3

    monitor-exit p0

    return-void

    .line 45
    :cond_3
    goto :goto_1

    .line 46
    :cond_4
    monitor-exit p0

    .line 47
    return-void

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/foundation/same/net/d/b;Lccsancom/mbridge/msdk/foundation/same/net/d/b$a;)V
    .locals 1

    .line 12
    nop

    .line 1050
    monitor-enter p0

    .line 1051
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/d/b;->c:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 1052
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1053
    invoke-direct {p0}, Lccsancom/mbridge/msdk/foundation/same/net/d/b;->a()V

    .line 12
    return-void

    .line 1052
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public final a(Ljava/io/File;Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/same/net/e;)Lccsancom/mbridge/msdk/foundation/same/net/d/b$a;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Lccsancom/mbridge/msdk/foundation/same/net/e<",
            "Ljava/lang/Void;",
            ">;)",
            "Lccsancom/mbridge/msdk/foundation/same/net/d/b$a;"
        }
    .end annotation

    .line 23
    new-instance v6, Lccsancom/mbridge/msdk/foundation/same/net/d/b$a;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lccsancom/mbridge/msdk/foundation/same/net/d/b$a;-><init>(Lccsancom/mbridge/msdk/foundation/same/net/d/b;Ljava/io/File;Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/same/net/e;Lccsancom/mbridge/msdk/foundation/same/net/d/b$1;)V

    .line 24
    monitor-enter p0

    .line 25
    :try_start_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/same/net/d/b;->c:Ljava/util/LinkedList;

    invoke-virtual {p1, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 26
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    invoke-direct {p0}, Lccsancom/mbridge/msdk/foundation/same/net/d/b;->a()V

    .line 28
    return-object v6

    .line 26
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
