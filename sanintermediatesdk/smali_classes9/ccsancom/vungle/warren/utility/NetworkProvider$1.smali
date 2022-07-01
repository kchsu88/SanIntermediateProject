.class Lccsancom/vungle/warren/utility/NetworkProvider$1;
.super Lccsanandroid/net/ConnectivityManager$NetworkCallback;
.source "NetworkProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/utility/NetworkProvider;->getNetworkCallback()Lccsanandroid/net/ConnectivityManager$NetworkCallback;
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

    .line 76
    iput-object p1, p0, Lccsancom/vungle/warren/utility/NetworkProvider$1;->this$0:Lccsancom/vungle/warren/utility/NetworkProvider;

    invoke-direct {p0}, Lccsanandroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Lccsanandroid/net/Network;)V
    .locals 1
    .param p1, "network"    # Lccsanandroid/net/Network;

    .line 81
    invoke-super {p0, p1}, Lccsanandroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Lccsanandroid/net/Network;)V

    .line 82
    iget-object v0, p0, Lccsancom/vungle/warren/utility/NetworkProvider$1;->this$0:Lccsancom/vungle/warren/utility/NetworkProvider;

    invoke-virtual {v0}, Lccsancom/vungle/warren/utility/NetworkProvider;->onNetworkChanged()V

    .line 83
    return-void
.end method

.method public onLost(Lccsanandroid/net/Network;)V
    .locals 1
    .param p1, "network"    # Lccsanandroid/net/Network;

    .line 88
    invoke-super {p0, p1}, Lccsanandroid/net/ConnectivityManager$NetworkCallback;->onLost(Lccsanandroid/net/Network;)V

    .line 89
    iget-object v0, p0, Lccsancom/vungle/warren/utility/NetworkProvider$1;->this$0:Lccsancom/vungle/warren/utility/NetworkProvider;

    invoke-virtual {v0}, Lccsancom/vungle/warren/utility/NetworkProvider;->onNetworkChanged()V

    .line 90
    return-void
.end method
