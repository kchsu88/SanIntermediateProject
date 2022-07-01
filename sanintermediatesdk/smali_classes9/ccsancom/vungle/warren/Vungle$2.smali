.class Lccsancom/vungle/warren/Vungle$2;
.super Ljava/lang/Object;
.source "Vungle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/Vungle;->reConfigure()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$runtimeValues:Lccsancom/vungle/warren/RuntimeValues;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/RuntimeValues;)V
    .locals 0

    .line 396
    iput-object p1, p0, Lccsancom/vungle/warren/Vungle$2;->val$runtimeValues:Lccsancom/vungle/warren/RuntimeValues;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 399
    sget-object v0, Lccsancom/vungle/warren/Vungle;->_instance:Lccsancom/vungle/warren/Vungle;

    iget-object v1, p0, Lccsancom/vungle/warren/Vungle$2;->val$runtimeValues:Lccsancom/vungle/warren/RuntimeValues;

    iget-object v1, v1, Lccsancom/vungle/warren/RuntimeValues;->initCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/vungle/warren/InitCallback;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lccsancom/vungle/warren/Vungle;->access$1400(Lccsancom/vungle/warren/Vungle;Lccsancom/vungle/warren/InitCallback;Z)V

    .line 400
    return-void
.end method
