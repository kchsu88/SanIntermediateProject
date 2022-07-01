.class Lccsancom/vungle/warren/omsdk/OMInjector$1;
.super Ljava/lang/Object;
.source "OMInjector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/omsdk/OMInjector;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/vungle/warren/omsdk/OMInjector;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/omsdk/OMInjector;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/vungle/warren/omsdk/OMInjector;

    .line 32
    iput-object p1, p0, Lccsancom/vungle/warren/omsdk/OMInjector$1;->this$0:Lccsancom/vungle/warren/omsdk/OMInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 35
    invoke-static {}, Lccsancom/iab/omid/library/vungle/Omid;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    iget-object v0, p0, Lccsancom/vungle/warren/omsdk/OMInjector$1;->this$0:Lccsancom/vungle/warren/omsdk/OMInjector;

    invoke-static {v0}, Lccsancom/vungle/warren/omsdk/OMInjector;->access$000(Lccsancom/vungle/warren/omsdk/OMInjector;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/content/Context;

    invoke-static {v0}, Lccsancom/iab/omid/library/vungle/Omid;->activate(Lccsanandroid/content/Context;)V

    .line 38
    :cond_0
    return-void
.end method
