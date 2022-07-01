.class Lccsancom/vungle/warren/utility/NetworkProvider$3;
.super Ljava/lang/Object;
.source "NetworkProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/vungle/warren/utility/NetworkProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/vungle/warren/utility/NetworkProvider;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/utility/NetworkProvider;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/vungle/warren/utility/NetworkProvider;

    .line 144
    iput-object p1, p0, Lccsancom/vungle/warren/utility/NetworkProvider$3;->this$0:Lccsancom/vungle/warren/utility/NetworkProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 147
    iget-object v0, p0, Lccsancom/vungle/warren/utility/NetworkProvider$3;->this$0:Lccsancom/vungle/warren/utility/NetworkProvider;

    invoke-static {v0}, Lccsancom/vungle/warren/utility/NetworkProvider;->access$000(Lccsancom/vungle/warren/utility/NetworkProvider;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    iget-object v0, p0, Lccsancom/vungle/warren/utility/NetworkProvider$3;->this$0:Lccsancom/vungle/warren/utility/NetworkProvider;

    invoke-virtual {v0}, Lccsancom/vungle/warren/utility/NetworkProvider;->onNetworkChanged()V

    .line 149
    iget-object v0, p0, Lccsancom/vungle/warren/utility/NetworkProvider$3;->this$0:Lccsancom/vungle/warren/utility/NetworkProvider;

    invoke-static {v0}, Lccsancom/vungle/warren/utility/NetworkProvider;->access$200(Lccsancom/vungle/warren/utility/NetworkProvider;)Lccsanandroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lccsancom/vungle/warren/utility/NetworkProvider$3;->this$0:Lccsancom/vungle/warren/utility/NetworkProvider;

    invoke-static {v1}, Lccsancom/vungle/warren/utility/NetworkProvider;->access$100(Lccsancom/vungle/warren/utility/NetworkProvider;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Lccsanandroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 151
    :cond_0
    return-void
.end method
