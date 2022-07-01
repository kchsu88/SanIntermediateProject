.class Lccsancom/vungle/warren/utility/AppSession$1;
.super Lccsancom/vungle/warren/utility/ActivityManager$LifeCycleCallback;
.source "AppSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/vungle/warren/utility/AppSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/vungle/warren/utility/AppSession;

.field private timestamp:J


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/utility/AppSession;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/vungle/warren/utility/AppSession;

    .line 29
    iput-object p1, p0, Lccsancom/vungle/warren/utility/AppSession$1;->this$0:Lccsancom/vungle/warren/utility/AppSession;

    invoke-direct {p0}, Lccsancom/vungle/warren/utility/ActivityManager$LifeCycleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 7

    .line 35
    iget-wide v0, p0, Lccsancom/vungle/warren/utility/AppSession$1;->timestamp:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 36
    return-void

    .line 39
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lccsancom/vungle/warren/utility/AppSession$1;->timestamp:J

    sub-long/2addr v0, v2

    .line 40
    .local v0, "duration":J
    iget-object v2, p0, Lccsancom/vungle/warren/utility/AppSession$1;->this$0:Lccsancom/vungle/warren/utility/AppSession;

    invoke-static {v2}, Lccsancom/vungle/warren/utility/AppSession;->access$000(Lccsancom/vungle/warren/utility/AppSession;)Lccsancom/vungle/warren/SessionData;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lccsancom/vungle/warren/utility/AppSession$1;->this$0:Lccsancom/vungle/warren/utility/AppSession;

    invoke-static {v2}, Lccsancom/vungle/warren/utility/AppSession;->access$000(Lccsancom/vungle/warren/utility/AppSession;)Lccsancom/vungle/warren/SessionData;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/vungle/warren/SessionData;->getTimeout()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    iget-object v2, p0, Lccsancom/vungle/warren/utility/AppSession$1;->this$0:Lccsancom/vungle/warren/utility/AppSession;

    invoke-static {v2}, Lccsancom/vungle/warren/utility/AppSession;->access$000(Lccsancom/vungle/warren/utility/AppSession;)Lccsancom/vungle/warren/SessionData;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/vungle/warren/SessionData;->getTimeout()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    .line 41
    iget-object v2, p0, Lccsancom/vungle/warren/utility/AppSession$1;->this$0:Lccsancom/vungle/warren/utility/AppSession;

    invoke-static {v2}, Lccsancom/vungle/warren/utility/AppSession;->access$100(Lccsancom/vungle/warren/utility/AppSession;)Lccsancom/vungle/warren/utility/AppSession$SessionCallback;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 42
    iget-object v2, p0, Lccsancom/vungle/warren/utility/AppSession$1;->this$0:Lccsancom/vungle/warren/utility/AppSession;

    invoke-static {v2}, Lccsancom/vungle/warren/utility/AppSession;->access$100(Lccsancom/vungle/warren/utility/AppSession;)Lccsancom/vungle/warren/utility/AppSession$SessionCallback;

    move-result-object v2

    invoke-interface {v2}, Lccsancom/vungle/warren/utility/AppSession$SessionCallback;->onSessionTimeout()V

    .line 45
    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lccsancom/vungle/warren/utility/AppSession$1;->timestamp:J

    .line 50
    return-void
.end method
