.class public Lccsancom/vungle/warren/HeaderBiddingCallbackWrapper;
.super Ljava/lang/Object;
.source "HeaderBiddingCallbackWrapper.java"

# interfaces
.implements Lccsancom/vungle/warren/HeaderBiddingCallback;


# instance fields
.field private final callback:Lccsancom/vungle/warren/HeaderBiddingCallback;

.field private final executorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ExecutorService;Lccsancom/vungle/warren/HeaderBiddingCallback;)V
    .locals 0
    .param p1, "executorService"    # Ljava/util/concurrent/ExecutorService;
    .param p2, "callback"    # Lccsancom/vungle/warren/HeaderBiddingCallback;

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p2, p0, Lccsancom/vungle/warren/HeaderBiddingCallbackWrapper;->callback:Lccsancom/vungle/warren/HeaderBiddingCallback;

    .line 12
    iput-object p1, p0, Lccsancom/vungle/warren/HeaderBiddingCallbackWrapper;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 13
    return-void
.end method

.method static synthetic access$000(Lccsancom/vungle/warren/HeaderBiddingCallbackWrapper;)Lccsancom/vungle/warren/HeaderBiddingCallback;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/HeaderBiddingCallbackWrapper;

    .line 5
    iget-object v0, p0, Lccsancom/vungle/warren/HeaderBiddingCallbackWrapper;->callback:Lccsancom/vungle/warren/HeaderBiddingCallback;

    return-object v0
.end method


# virtual methods
.method public adAvailableForBidToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "placementId"    # Ljava/lang/String;
    .param p2, "bidToken"    # Ljava/lang/String;

    .line 29
    iget-object v0, p0, Lccsancom/vungle/warren/HeaderBiddingCallbackWrapper;->callback:Lccsancom/vungle/warren/HeaderBiddingCallback;

    if-nez v0, :cond_0

    return-void

    .line 31
    :cond_0
    iget-object v0, p0, Lccsancom/vungle/warren/HeaderBiddingCallbackWrapper;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lccsancom/vungle/warren/HeaderBiddingCallbackWrapper$2;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/vungle/warren/HeaderBiddingCallbackWrapper$2;-><init>(Lccsancom/vungle/warren/HeaderBiddingCallbackWrapper;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 38
    return-void
.end method

.method public onBidTokenAvailable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "placementId"    # Ljava/lang/String;
    .param p2, "bidToken"    # Ljava/lang/String;

    .line 17
    iget-object v0, p0, Lccsancom/vungle/warren/HeaderBiddingCallbackWrapper;->callback:Lccsancom/vungle/warren/HeaderBiddingCallback;

    if-nez v0, :cond_0

    return-void

    .line 19
    :cond_0
    iget-object v0, p0, Lccsancom/vungle/warren/HeaderBiddingCallbackWrapper;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lccsancom/vungle/warren/HeaderBiddingCallbackWrapper$1;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/vungle/warren/HeaderBiddingCallbackWrapper$1;-><init>(Lccsancom/vungle/warren/HeaderBiddingCallbackWrapper;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 25
    return-void
.end method
