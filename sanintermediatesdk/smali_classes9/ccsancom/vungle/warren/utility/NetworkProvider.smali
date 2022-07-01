.class public Lccsancom/vungle/warren/utility/NetworkProvider;
.super Ljava/lang/Object;
.source "NetworkProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/vungle/warren/utility/NetworkProvider$NetworkListener;
    }
.end annotation


# static fields
.field private static INSTANCE:Lccsancom/vungle/warren/utility/NetworkProvider; = null

.field static final NETWORK_CHECK_DELAY:J = 0x7530L

.field private static final TAG:Ljava/lang/String;

.field public static final TYPE_NONE:I = -0x1


# instance fields
.field private final cm:Lccsanandroid/net/ConnectivityManager;

.field private final ctx:Lccsanandroid/content/Context;

.field private final currentNetwork:Ljava/util/concurrent/atomic/AtomicInteger;

.field private enabled:Z

.field private final handler:Lccsanandroid/os/Handler;

.field private final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lccsancom/vungle/warren/utility/NetworkProvider$NetworkListener;",
            ">;"
        }
    .end annotation
.end field

.field private networkCallback:Lccsanandroid/net/ConnectivityManager$NetworkCallback;

.field private typeRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const-class v0, Lccsancom/vungle/warren/utility/NetworkProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/vungle/warren/utility/NetworkProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lccsanandroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lccsancom/vungle/warren/utility/NetworkProvider;->currentNetwork:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 33
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, p0, Lccsancom/vungle/warren/utility/NetworkProvider;->listeners:Ljava/util/Set;

    .line 36
    new-instance v1, Lccsanandroid/os/Handler;

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    iput-object v1, p0, Lccsancom/vungle/warren/utility/NetworkProvider;->handler:Lccsanandroid/os/Handler;

    .line 144
    new-instance v1, Lccsancom/vungle/warren/utility/NetworkProvider$3;

    invoke-direct {v1, p0}, Lccsancom/vungle/warren/utility/NetworkProvider$3;-><init>(Lccsancom/vungle/warren/utility/NetworkProvider;)V

    iput-object v1, p0, Lccsancom/vungle/warren/utility/NetworkProvider;->typeRunnable:Ljava/lang/Runnable;

    .line 41
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lccsancom/vungle/warren/utility/NetworkProvider;->ctx:Lccsanandroid/content/Context;

    .line 42
    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/net/ConnectivityManager;

    iput-object v1, p0, Lccsancom/vungle/warren/utility/NetworkProvider;->cm:Lccsanandroid/net/ConnectivityManager;

    .line 43
    invoke-virtual {p0}, Lccsancom/vungle/warren/utility/NetworkProvider;->getCurrentNetworkType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 44
    return-void
.end method

.method static synthetic access$000(Lccsancom/vungle/warren/utility/NetworkProvider;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/utility/NetworkProvider;

    .line 24
    iget-object v0, p0, Lccsancom/vungle/warren/utility/NetworkProvider;->listeners:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$100(Lccsancom/vungle/warren/utility/NetworkProvider;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/utility/NetworkProvider;

    .line 24
    iget-object v0, p0, Lccsancom/vungle/warren/utility/NetworkProvider;->typeRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lccsancom/vungle/warren/utility/NetworkProvider;)Lccsanandroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/utility/NetworkProvider;

    .line 24
    iget-object v0, p0, Lccsancom/vungle/warren/utility/NetworkProvider;->handler:Lccsanandroid/os/Handler;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Lccsanandroid/content/Context;)Lccsancom/vungle/warren/utility/NetworkProvider;
    .locals 2
    .param p0, "context"    # Lccsanandroid/content/Context;

    const-class v0, Lccsancom/vungle/warren/utility/NetworkProvider;

    monitor-enter v0

    .line 47
    :try_start_0
    sget-object v1, Lccsancom/vungle/warren/utility/NetworkProvider;->INSTANCE:Lccsancom/vungle/warren/utility/NetworkProvider;

    if-nez v1, :cond_0

    .line 48
    new-instance v1, Lccsancom/vungle/warren/utility/NetworkProvider;

    invoke-direct {v1, p0}, Lccsancom/vungle/warren/utility/NetworkProvider;-><init>(Lccsanandroid/content/Context;)V

    sput-object v1, Lccsancom/vungle/warren/utility/NetworkProvider;->INSTANCE:Lccsancom/vungle/warren/utility/NetworkProvider;

    .line 51
    :cond_0
    sget-object v1, Lccsancom/vungle/warren/utility/NetworkProvider;->INSTANCE:Lccsancom/vungle/warren/utility/NetworkProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 46
    .end local p0    # "context":Lccsanandroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getNetworkCallback()Lccsanandroid/net/ConnectivityManager$NetworkCallback;
    .locals 1

    .line 76
    iget-object v0, p0, Lccsancom/vungle/warren/utility/NetworkProvider;->networkCallback:Lccsanandroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lccsancom/vungle/warren/utility/NetworkProvider$1;

    invoke-direct {v0, p0}, Lccsancom/vungle/warren/utility/NetworkProvider$1;-><init>(Lccsancom/vungle/warren/utility/NetworkProvider;)V

    iput-object v0, p0, Lccsancom/vungle/warren/utility/NetworkProvider;->networkCallback:Lccsanandroid/net/ConnectivityManager$NetworkCallback;

    :goto_0
    return-object v0
.end method

.method private postToListeners(I)V
    .locals 2
    .param p1, "currentNetwork"    # I

    .line 95
    iget-object v0, p0, Lccsancom/vungle/warren/utility/NetworkProvider;->handler:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/vungle/warren/utility/NetworkProvider$2;

    invoke-direct {v1, p0, p1}, Lccsancom/vungle/warren/utility/NetworkProvider$2;-><init>(Lccsancom/vungle/warren/utility/NetworkProvider;I)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 103
    return-void
.end method

.method private declared-synchronized setEnableNetworkListener(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    monitor-enter p0

    .line 56
    :try_start_0
    iget-boolean v0, p0, Lccsancom/vungle/warren/utility/NetworkProvider;->enabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    .line 57
    monitor-exit p0

    return-void

    .line 58
    :cond_0
    :try_start_1
    iput-boolean p1, p0, Lccsancom/vungle/warren/utility/NetworkProvider;->enabled:Z

    .line 59
    iget-object v0, p0, Lccsancom/vungle/warren/utility/NetworkProvider;->cm:Lccsanandroid/net/ConnectivityManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 61
    if-eqz p1, :cond_1

    .line 62
    :try_start_2
    new-instance v0, Lccsanandroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Lccsanandroid/net/NetworkRequest$Builder;-><init>()V

    .line 63
    .local v0, "builder":Lccsanandroid/net/NetworkRequest$Builder;
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lccsanandroid/net/NetworkRequest$Builder;->addCapability(I)Lccsanandroid/net/NetworkRequest$Builder;

    .line 64
    iget-object v1, p0, Lccsancom/vungle/warren/utility/NetworkProvider;->cm:Lccsanandroid/net/ConnectivityManager;

    invoke-virtual {v0}, Lccsanandroid/net/NetworkRequest$Builder;->build()Lccsanandroid/net/NetworkRequest;

    move-result-object v2

    invoke-direct {p0}, Lccsancom/vungle/warren/utility/NetworkProvider;->getNetworkCallback()Lccsanandroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lccsanandroid/net/ConnectivityManager;->registerNetworkCallback(Lccsanandroid/net/NetworkRequest;Lccsanandroid/net/ConnectivityManager$NetworkCallback;)V

    .line 65
    .end local v0    # "builder":Lccsanandroid/net/NetworkRequest$Builder;
    goto :goto_0

    .line 68
    .end local p0    # "this":Lccsancom/vungle/warren/utility/NetworkProvider;
    :catch_0
    move-exception v0

    goto :goto_1

    .line 66
    :cond_1
    invoke-direct {p0}, Lccsancom/vungle/warren/utility/NetworkProvider;->getNetworkCallback()Lccsanandroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/net/ConnectivityManager;->unregisterNetworkCallback(Lccsanandroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 70
    :goto_0
    goto :goto_2

    .line 69
    .local v0, "ex":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    sget-object v1, Lccsancom/vungle/warren/utility/NetworkProvider;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 72
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_2
    :goto_2
    monitor-exit p0

    return-void

    .line 55
    .end local p1    # "enabled":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public addListener(Lccsancom/vungle/warren/utility/NetworkProvider$NetworkListener;)V
    .locals 1
    .param p1, "networkListener"    # Lccsancom/vungle/warren/utility/NetworkProvider$NetworkListener;

    .line 135
    iget-object v0, p0, Lccsancom/vungle/warren/utility/NetworkProvider;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 136
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lccsancom/vungle/warren/utility/NetworkProvider;->setEnableNetworkListener(Z)V

    .line 137
    return-void
.end method

.method public getCurrentNetworkType()I
    .locals 6

    .line 110
    iget-object v0, p0, Lccsancom/vungle/warren/utility/NetworkProvider;->cm:Lccsanandroid/net/ConnectivityManager;

    const/4 v1, -0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lccsancom/vungle/warren/utility/NetworkProvider;->ctx:Lccsanandroid/content/Context;

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v0, v2}, Lccsanandroidx/core/content/PermissionChecker;->checkCallingOrSelfPermission(Lccsanandroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 117
    :cond_0
    iget-object v0, p0, Lccsancom/vungle/warren/utility/NetworkProvider;->cm:Lccsanandroid/net/ConnectivityManager;

    invoke-virtual {v0}, Lccsanandroid/net/ConnectivityManager;->getActiveNetworkInfo()Lccsanandroid/net/NetworkInfo;

    move-result-object v0

    .line 119
    .local v0, "activeNetwork":Lccsanandroid/net/NetworkInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lccsanandroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 120
    invoke-virtual {v0}, Lccsanandroid/net/NetworkInfo;->getType()I

    move-result v1

    goto :goto_0

    .line 121
    :cond_1
    nop

    :goto_0
    nop

    .line 123
    .local v1, "newNetwork":I
    iget-object v2, p0, Lccsancom/vungle/warren/utility/NetworkProvider;->currentNetwork:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v2

    .line 125
    .local v2, "old":I
    if-eq v1, v2, :cond_2

    .line 126
    sget-object v3, Lccsancom/vungle/warren/utility/NetworkProvider;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "on network changed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-direct {p0, v1}, Lccsancom/vungle/warren/utility/NetworkProvider;->postToListeners(I)V

    .line 130
    :cond_2
    iget-object v3, p0, Lccsancom/vungle/warren/utility/NetworkProvider;->listeners:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v3}, Lccsancom/vungle/warren/utility/NetworkProvider;->setEnableNetworkListener(Z)V

    .line 131
    return v1

    .line 113
    .end local v0    # "activeNetwork":Lccsanandroid/net/NetworkInfo;
    .end local v1    # "newNetwork":I
    .end local v2    # "old":I
    :cond_3
    :goto_1
    iget-object v0, p0, Lccsancom/vungle/warren/utility/NetworkProvider;->currentNetwork:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 114
    return v1
.end method

.method public onNetworkChanged()V
    .locals 0

    .line 106
    invoke-virtual {p0}, Lccsancom/vungle/warren/utility/NetworkProvider;->getCurrentNetworkType()I

    .line 107
    return-void
.end method

.method public removeListener(Lccsancom/vungle/warren/utility/NetworkProvider$NetworkListener;)V
    .locals 1
    .param p1, "networkListener"    # Lccsancom/vungle/warren/utility/NetworkProvider$NetworkListener;

    .line 140
    iget-object v0, p0, Lccsancom/vungle/warren/utility/NetworkProvider;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 141
    iget-object v0, p0, Lccsancom/vungle/warren/utility/NetworkProvider;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lccsancom/vungle/warren/utility/NetworkProvider;->setEnableNetworkListener(Z)V

    .line 142
    return-void
.end method
