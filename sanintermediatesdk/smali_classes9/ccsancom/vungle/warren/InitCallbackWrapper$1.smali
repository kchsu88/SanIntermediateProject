.class Lccsancom/vungle/warren/InitCallbackWrapper$1;
.super Ljava/lang/Object;
.source "InitCallbackWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/InitCallbackWrapper;->onSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/vungle/warren/InitCallbackWrapper;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/InitCallbackWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/vungle/warren/InitCallbackWrapper;

    .line 21
    iput-object p1, p0, Lccsancom/vungle/warren/InitCallbackWrapper$1;->this$0:Lccsancom/vungle/warren/InitCallbackWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 24
    iget-object v0, p0, Lccsancom/vungle/warren/InitCallbackWrapper$1;->this$0:Lccsancom/vungle/warren/InitCallbackWrapper;

    invoke-static {v0}, Lccsancom/vungle/warren/InitCallbackWrapper;->access$000(Lccsancom/vungle/warren/InitCallbackWrapper;)Lccsancom/vungle/warren/InitCallback;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/vungle/warren/InitCallback;->onSuccess()V

    .line 25
    return-void
.end method
