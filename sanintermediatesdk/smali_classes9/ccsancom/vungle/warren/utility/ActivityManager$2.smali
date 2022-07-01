.class Lccsancom/vungle/warren/utility/ActivityManager$2;
.super Lccsancom/vungle/warren/utility/ActivityManager$LifeCycleCallback;
.source "ActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/utility/ActivityManager;->startWhenForeground(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;Lccsancom/vungle/warren/utility/ActivityManager$LeftApplicationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$intent:Lccsanandroid/content/Intent;

.field final synthetic val$leftCallback:Lccsancom/vungle/warren/utility/ActivityManager$LeftApplicationCallback;

.field final synthetic val$weakContext:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;Lccsanandroid/content/Intent;Lccsancom/vungle/warren/utility/ActivityManager$LeftApplicationCallback;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lccsancom/vungle/warren/utility/ActivityManager$2;->val$weakContext:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lccsancom/vungle/warren/utility/ActivityManager$2;->val$intent:Lccsanandroid/content/Intent;

    iput-object p3, p0, Lccsancom/vungle/warren/utility/ActivityManager$2;->val$leftCallback:Lccsancom/vungle/warren/utility/ActivityManager$LeftApplicationCallback;

    invoke-direct {p0}, Lccsancom/vungle/warren/utility/ActivityManager$LifeCycleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 3

    .line 126
    invoke-super {p0}, Lccsancom/vungle/warren/utility/ActivityManager$LifeCycleCallback;->onStart()V

    .line 127
    invoke-static {}, Lccsancom/vungle/warren/utility/ActivityManager;->access$500()Lccsancom/vungle/warren/utility/ActivityManager;

    move-result-object v0

    invoke-static {v0, p0}, Lccsancom/vungle/warren/utility/ActivityManager;->access$600(Lccsancom/vungle/warren/utility/ActivityManager;Lccsancom/vungle/warren/utility/ActivityManager$LifeCycleCallback;)V

    .line 128
    iget-object v0, p0, Lccsancom/vungle/warren/utility/ActivityManager$2;->val$weakContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/content/Context;

    .line 129
    .local v0, "context":Lccsanandroid/content/Context;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lccsancom/vungle/warren/utility/ActivityManager$2;->val$intent:Lccsanandroid/content/Intent;

    invoke-static {v0, v1}, Lccsancom/vungle/warren/utility/ActivityManager;->access$700(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    invoke-static {}, Lccsancom/vungle/warren/utility/ActivityManager;->access$500()Lccsancom/vungle/warren/utility/ActivityManager;

    move-result-object v1

    iget-object v2, p0, Lccsancom/vungle/warren/utility/ActivityManager$2;->val$leftCallback:Lccsancom/vungle/warren/utility/ActivityManager$LeftApplicationCallback;

    invoke-virtual {v1, v2}, Lccsancom/vungle/warren/utility/ActivityManager;->addOnNextAppLeftCallback(Lccsancom/vungle/warren/utility/ActivityManager$LeftApplicationCallback;)V

    .line 132
    :cond_0
    return-void
.end method
