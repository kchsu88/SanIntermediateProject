.class Lccsancom/vungle/warren/VungleJobRunner$PendingRunnable;
.super Ljava/lang/Object;
.source "VungleJobRunner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/vungle/warren/VungleJobRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PendingRunnable"
.end annotation


# instance fields
.field runner:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lccsancom/vungle/warren/VungleJobRunner;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lccsancom/vungle/warren/VungleJobRunner;",
            ">;)V"
        }
    .end annotation

    .line 53
    .local p1, "runner":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lccsancom/vungle/warren/VungleJobRunner;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lccsancom/vungle/warren/VungleJobRunner$PendingRunnable;->runner:Ljava/lang/ref/WeakReference;

    .line 55
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 59
    iget-object v0, p0, Lccsancom/vungle/warren/VungleJobRunner$PendingRunnable;->runner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/vungle/warren/VungleJobRunner;

    .line 60
    .local v0, "ref":Lccsancom/vungle/warren/VungleJobRunner;
    if-eqz v0, :cond_0

    .line 61
    invoke-static {v0}, Lccsancom/vungle/warren/VungleJobRunner;->access$000(Lccsancom/vungle/warren/VungleJobRunner;)V

    .line 63
    :cond_0
    return-void
.end method
