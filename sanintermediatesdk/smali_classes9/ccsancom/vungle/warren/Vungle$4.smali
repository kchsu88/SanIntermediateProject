.class Lccsancom/vungle/warren/Vungle$4;
.super Ljava/lang/Object;
.source "Vungle.java"

# interfaces
.implements Lccsancom/vungle/warren/utility/AppSession$SessionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/Vungle;->configure(Lccsancom/vungle/warren/InitCallback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/vungle/warren/Vungle;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/Vungle;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/vungle/warren/Vungle;

    .line 633
    iput-object p1, p0, Lccsancom/vungle/warren/Vungle$4;->this$0:Lccsancom/vungle/warren/Vungle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSessionTimeout()V
    .locals 2

    .line 636
    sget-object v0, Lccsancom/vungle/warren/Vungle;->_instance:Lccsancom/vungle/warren/Vungle;

    invoke-static {v0}, Lccsancom/vungle/warren/Vungle;->access$1600(Lccsancom/vungle/warren/Vungle;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 637
    return-void
.end method
