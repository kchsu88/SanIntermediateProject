.class Lccsancom/vungle/warren/LoadAdCallbackWrapper;
.super Ljava/lang/Object;
.source "LoadAdCallbackWrapper.java"

# interfaces
.implements Lccsancom/vungle/warren/LoadAdCallback;


# instance fields
.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private final loadAdCallback:Lccsancom/vungle/warren/LoadAdCallback;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;Lccsancom/vungle/warren/LoadAdCallback;)V
    .locals 0
    .param p1, "executorService"    # Ljava/util/concurrent/ExecutorService;
    .param p2, "loadAdCallback"    # Lccsancom/vungle/warren/LoadAdCallback;

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p2, p0, Lccsancom/vungle/warren/LoadAdCallbackWrapper;->loadAdCallback:Lccsancom/vungle/warren/LoadAdCallback;

    .line 14
    iput-object p1, p0, Lccsancom/vungle/warren/LoadAdCallbackWrapper;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 15
    return-void
.end method

.method static synthetic access$000(Lccsancom/vungle/warren/LoadAdCallbackWrapper;)Lccsancom/vungle/warren/LoadAdCallback;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/LoadAdCallbackWrapper;

    .line 7
    iget-object v0, p0, Lccsancom/vungle/warren/LoadAdCallbackWrapper;->loadAdCallback:Lccsancom/vungle/warren/LoadAdCallback;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 43
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 44
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 46
    :cond_1
    move-object v2, p1

    check-cast v2, Lccsancom/vungle/warren/LoadAdCallbackWrapper;

    .line 48
    .local v2, "that":Lccsancom/vungle/warren/LoadAdCallbackWrapper;
    iget-object v3, p0, Lccsancom/vungle/warren/LoadAdCallbackWrapper;->loadAdCallback:Lccsancom/vungle/warren/LoadAdCallback;

    if-eqz v3, :cond_2

    iget-object v4, v2, Lccsancom/vungle/warren/LoadAdCallbackWrapper;->loadAdCallback:Lccsancom/vungle/warren/LoadAdCallback;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_2
    iget-object v3, v2, Lccsancom/vungle/warren/LoadAdCallbackWrapper;->loadAdCallback:Lccsancom/vungle/warren/LoadAdCallback;

    if-eqz v3, :cond_3

    .line 49
    :goto_0
    return v1

    .line 50
    :cond_3
    iget-object v3, p0, Lccsancom/vungle/warren/LoadAdCallbackWrapper;->executorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v3, :cond_4

    iget-object v0, v2, Lccsancom/vungle/warren/LoadAdCallbackWrapper;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :cond_4
    iget-object v3, v2, Lccsancom/vungle/warren/LoadAdCallbackWrapper;->executorService:Ljava/util/concurrent/ExecutorService;

    if-nez v3, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 44
    .end local v2    # "that":Lccsancom/vungle/warren/LoadAdCallbackWrapper;
    :cond_6
    :goto_2
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 55
    iget-object v0, p0, Lccsancom/vungle/warren/LoadAdCallbackWrapper;->loadAdCallback:Lccsancom/vungle/warren/LoadAdCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 56
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lccsancom/vungle/warren/LoadAdCallbackWrapper;->executorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v2, v1

    .line 57
    .end local v0    # "result":I
    .local v2, "result":I
    return v2
.end method

.method public onAdLoad(Ljava/lang/String;)V
    .locals 2
    .param p1, "placementId"    # Ljava/lang/String;

    .line 19
    iget-object v0, p0, Lccsancom/vungle/warren/LoadAdCallbackWrapper;->loadAdCallback:Lccsancom/vungle/warren/LoadAdCallback;

    if-nez v0, :cond_0

    return-void

    .line 21
    :cond_0
    iget-object v0, p0, Lccsancom/vungle/warren/LoadAdCallbackWrapper;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lccsancom/vungle/warren/LoadAdCallbackWrapper$1;

    invoke-direct {v1, p0, p1}, Lccsancom/vungle/warren/LoadAdCallbackWrapper$1;-><init>(Lccsancom/vungle/warren/LoadAdCallbackWrapper;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 27
    return-void
.end method

.method public onError(Ljava/lang/String;Lccsancom/vungle/warren/error/VungleException;)V
    .locals 2
    .param p1, "placementId"    # Ljava/lang/String;
    .param p2, "exception"    # Lccsancom/vungle/warren/error/VungleException;

    .line 31
    iget-object v0, p0, Lccsancom/vungle/warren/LoadAdCallbackWrapper;->loadAdCallback:Lccsancom/vungle/warren/LoadAdCallback;

    if-nez v0, :cond_0

    return-void

    .line 33
    :cond_0
    iget-object v0, p0, Lccsancom/vungle/warren/LoadAdCallbackWrapper;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lccsancom/vungle/warren/LoadAdCallbackWrapper$2;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/vungle/warren/LoadAdCallbackWrapper$2;-><init>(Lccsancom/vungle/warren/LoadAdCallbackWrapper;Ljava/lang/String;Lccsancom/vungle/warren/error/VungleException;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 39
    return-void
.end method
