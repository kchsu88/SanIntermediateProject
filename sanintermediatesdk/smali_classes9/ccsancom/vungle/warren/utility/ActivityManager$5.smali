.class Lccsancom/vungle/warren/utility/ActivityManager$5;
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


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/utility/ActivityManager;Ljava/lang/ref/WeakReference;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/vungle/warren/utility/ActivityManager;

    .line 257
    iput-object p1, p0, Lccsancom/vungle/warren/utility/ActivityManager$5;->this$0:Lccsancom/vungle/warren/utility/ActivityManager;

    iput-object p2, p0, Lccsancom/vungle/warren/utility/ActivityManager$5;->val$weakCallback:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lccsancom/vungle/warren/utility/ActivityManager$5;->val$cancelRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lccsancom/vungle/warren/utility/ActivityManager$LifeCycleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 5

    .line 260
    invoke-static {}, Lccsancom/vungle/warren/utility/ActivityManager;->access$500()Lccsancom/vungle/warren/utility/ActivityManager;

    move-result-object v0

    invoke-static {v0, p0}, Lccsancom/vungle/warren/utility/ActivityManager;->access$600(Lccsancom/vungle/warren/utility/ActivityManager;Lccsancom/vungle/warren/utility/ActivityManager$LifeCycleCallback;)V

    .line 261
    iget-object v0, p0, Lccsancom/vungle/warren/utility/ActivityManager$5;->this$0:Lccsancom/vungle/warren/utility/ActivityManager;

    invoke-static {v0}, Lccsancom/vungle/warren/utility/ActivityManager;->access$1000(Lccsancom/vungle/warren/utility/ActivityManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lccsancom/vungle/warren/utility/ActivityManager$5;->val$weakCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/vungle/warren/utility/ActivityManager$LifeCycleCallback;

    .line 262
    .local v0, "callback":Lccsancom/vungle/warren/utility/ActivityManager$LifeCycleCallback;
    if-eqz v0, :cond_0

    .line 263
    iget-object v1, p0, Lccsancom/vungle/warren/utility/ActivityManager$5;->this$0:Lccsancom/vungle/warren/utility/ActivityManager;

    invoke-static {v1}, Lccsancom/vungle/warren/utility/ActivityManager;->access$800(Lccsancom/vungle/warren/utility/ActivityManager;)Lccsanandroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lccsancom/vungle/warren/utility/ActivityManager$5;->val$cancelRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Lccsanandroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 264
    iget-object v1, p0, Lccsancom/vungle/warren/utility/ActivityManager$5;->this$0:Lccsancom/vungle/warren/utility/ActivityManager;

    invoke-virtual {v1, v0}, Lccsancom/vungle/warren/utility/ActivityManager;->addListener(Lccsancom/vungle/warren/utility/ActivityManager$LifeCycleCallback;)V

    .line 266
    :cond_0
    return-void
.end method
