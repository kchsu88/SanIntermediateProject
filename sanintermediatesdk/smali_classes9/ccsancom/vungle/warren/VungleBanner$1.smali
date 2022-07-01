.class Lccsancom/vungle/warren/VungleBanner$1;
.super Ljava/lang/Object;
.source "VungleBanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/vungle/warren/VungleBanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/vungle/warren/VungleBanner;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/VungleBanner;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/vungle/warren/VungleBanner;

    .line 82
    iput-object p1, p0, Lccsancom/vungle/warren/VungleBanner$1;->this$0:Lccsancom/vungle/warren/VungleBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 85
    invoke-static {}, Lccsancom/vungle/warren/VungleBanner;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Refresh Timeout Reached"

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p0, Lccsancom/vungle/warren/VungleBanner$1;->this$0:Lccsancom/vungle/warren/VungleBanner;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lccsancom/vungle/warren/VungleBanner;->access$102(Lccsancom/vungle/warren/VungleBanner;Z)Z

    .line 87
    iget-object v0, p0, Lccsancom/vungle/warren/VungleBanner$1;->this$0:Lccsancom/vungle/warren/VungleBanner;

    invoke-virtual {v0}, Lccsancom/vungle/warren/VungleBanner;->loadAdInternal()V

    .line 88
    return-void
.end method
