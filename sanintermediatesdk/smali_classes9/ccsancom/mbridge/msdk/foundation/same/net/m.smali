.class public Lccsancom/mbridge/msdk/foundation/same/net/m;
.super Ljava/lang/Object;
.source "SocketManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/foundation/same/net/m$a;,
        Lccsancom/mbridge/msdk/foundation/same/net/m$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:I

.field private static volatile d:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private e:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    const-class v0, Lccsancom/mbridge/msdk/foundation/same/net/m;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/foundation/same/net/m;->a:Ljava/lang/String;

    .line 23
    const-string v0, "DkPtYdQTLkfAW+xUhoPwLkPTHkJBDkM/Yr5T"

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/foundation/same/net/m;->b:Ljava/lang/String;

    .line 24
    const/16 v0, 0x24a1

    sput v0, Lccsancom/mbridge/msdk/foundation/same/net/m;->c:I

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lccsancom/mbridge/msdk/foundation/same/net/m;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/m;->e:Ljava/util/concurrent/ExecutorService;

    .line 45
    return-void
.end method

.method synthetic constructor <init>(Lccsancom/mbridge/msdk/foundation/same/net/m$1;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lccsancom/mbridge/msdk/foundation/same/net/m;-><init>()V

    return-void
.end method

.method public static a()Lccsancom/mbridge/msdk/foundation/same/net/m;
    .locals 1

    .line 48
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/net/m$b;->a()Lccsancom/mbridge/msdk/foundation/same/net/m;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .line 20
    sget-object v0, Lccsancom/mbridge/msdk/foundation/same/net/m;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c()I
    .locals 1

    .line 20
    sget v0, Lccsancom/mbridge/msdk/foundation/same/net/m;->c:I

    return v0
.end method

.method static synthetic d()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 20
    sget-object v0, Lccsancom/mbridge/msdk/foundation/same/net/m;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    .line 37
    sput p1, Lccsancom/mbridge/msdk/foundation/same/net/m;->c:I

    .line 38
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .line 33
    sput-object p1, Lccsancom/mbridge/msdk/foundation/same/net/m;->b:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public final declared-synchronized a(Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/same/net/e;)V
    .locals 2

    monitor-enter p0

    .line 56
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/m;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lccsancom/mbridge/msdk/foundation/same/net/m$a;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/foundation/same/net/m$a;-><init>(Lccsancom/mbridge/msdk/foundation/same/net/m;Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/same/net/e;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    monitor-exit p0

    return-void

    .line 55
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
