.class Lccsancom/vungle/warren/utility/ActivityManager$4;
.super Lccsancom/vungle/warren/utility/ActivityManager$LifeCycleCallback;
.source "ActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/utility/ActivityManager;->addOnNextAppLeftCallback(Lccsancom/vungle/warren/utility/ActivityManager$LeftApplicationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/vungle/warren/utility/ActivityManager;

.field final synthetic val$cancelRunnable:Ljava/lang/Runnable;

.field final synthetic val$weakCallback:Ljava/lang/ref/WeakReference;

.field wasPaused:Z


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/utility/ActivityManager;Ljava/lang/ref/WeakReference;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/vungle/warren/utility/ActivityManager;

    .line 223
    iput-object p1, p0, Lccsancom/vungle/warren/utility/ActivityManager$4;->this$0:Lccsancom/vungle/warren/utility/ActivityManager;

    iput-object p2, p0, Lccsancom/vungle/warren/utility/ActivityManager$4;->val$weakCallback:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lccsancom/vungle/warren/utility/ActivityManager$4;->val$cancelRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lccsancom/vungle/warren/utility/ActivityManager$LifeCycleCallback;-><init>()V

    .line 224
    const/4 p2, 0x0

    iput-boolean p2, p0, Lccsancom/vungle/warren/utility/ActivityManager$4;->wasPaused:Z

    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 2

    .line 245
    invoke-super {p0}, Lccsancom/vungle/warren/utility/ActivityManager$LifeCycleCallback;->onPause()V

    .line 246
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/vungle/warren/utility/ActivityManager$4;->wasPaused:Z

    .line 247
    iget-object v0, p0, Lccsancom/vungle/warren/utility/ActivityManager$4;->this$0:Lccsancom/vungle/warren/utility/ActivityManager;

    invoke-static {v0}, Lccsancom/vungle/warren/utility/ActivityManager;->access$800(Lccsancom/vungle/warren/utility/ActivityManager;)Lccsanandroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lccsancom/vungle/warren/utility/ActivityManager$4;->val$cancelRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 248
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 239
    invoke-super {p0}, Lccsancom/vungle/warren/utility/ActivityManager$LifeCycleCallback;->onResume()V

    .line 240
    iget-object v0, p0, Lccsancom/vungle/warren/utility/ActivityManager$4;->this$0:Lccsancom/vungle/warren/utility/ActivityManager;

    invoke-static {v0}, Lccsancom/vungle/warren/utility/ActivityManager;->access$800(Lccsancom/vungle/warren/utility/ActivityManager;)Lccsanandroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lccsancom/vungle/warren/utility/ActivityManager$4;->val$cancelRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x578

    invoke-virtual {v0, v1, v2, v3}, Lccsanandroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 241
    return-void
.end method

.method public onStop()V
    .locals 3

    .line 228
    invoke-super {p0}, Lccsancom/vungle/warren/utility/ActivityManager$LifeCycleCallback;->onStop()V

    .line 229
    iget-object v0, p0, Lccsancom/vungle/warren/utility/ActivityManager$4;->val$weakCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/vungle/warren/utility/ActivityManager$LeftApplicationCallback;

    .line 230
    .local v0, "leftCallback":Lccsancom/vungle/warren/utility/ActivityManager$LeftApplicationCallback;
    iget-boolean v1, p0, Lccsancom/vungle/warren/utility/ActivityManager$4;->wasPaused:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lccsancom/vungle/warren/utility/ActivityManager$4;->this$0:Lccsancom/vungle/warren/utility/ActivityManager;

    invoke-static {v1}, Lccsancom/vungle/warren/utility/ActivityManager;->access$1000(Lccsancom/vungle/warren/utility/ActivityManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    invoke-interface {v0}, Lccsancom/vungle/warren/utility/ActivityManager$LeftApplicationCallback;->onLeftApplication()V

    .line 233
    :cond_0
    iget-object v1, p0, Lccsancom/vungle/warren/utility/ActivityManager$4;->this$0:Lccsancom/vungle/warren/utility/ActivityManager;

    invoke-static {v1, v0}, Lccsancom/vungle/warren/utility/ActivityManager;->access$900(Lccsancom/vungle/warren/utility/ActivityManager;Lccsancom/vungle/warren/utility/ActivityManager$LeftApplicationCallback;)V

    .line 234
    iget-object v1, p0, Lccsancom/vungle/warren/utility/ActivityManager$4;->this$0:Lccsancom/vungle/warren/utility/ActivityManager;

    invoke-static {v1}, Lccsancom/vungle/warren/utility/ActivityManager;->access$800(Lccsancom/vungle/warren/utility/ActivityManager;)Lccsanandroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lccsancom/vungle/warren/utility/ActivityManager$4;->val$cancelRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lccsanandroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 235
    return-void
.end method
