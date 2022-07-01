.class Lccsancom/google/common/cache/RemovalListeners$1$1;
.super Ljava/lang/Object;
.source "RemovalListeners.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/cache/RemovalListeners$1;->onRemoval(Lccsancom/google/common/cache/RemovalNotification;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/common/cache/RemovalListeners$1;

.field final synthetic val$notification:Lccsancom/google/common/cache/RemovalNotification;


# direct methods
.method constructor <init>(Lccsancom/google/common/cache/RemovalListeners$1;Lccsancom/google/common/cache/RemovalNotification;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/common/cache/RemovalListeners$1;

    .line 48
    iput-object p1, p0, Lccsancom/google/common/cache/RemovalListeners$1$1;->this$0:Lccsancom/google/common/cache/RemovalListeners$1;

    iput-object p2, p0, Lccsancom/google/common/cache/RemovalListeners$1$1;->val$notification:Lccsancom/google/common/cache/RemovalNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 51
    iget-object v0, p0, Lccsancom/google/common/cache/RemovalListeners$1$1;->this$0:Lccsancom/google/common/cache/RemovalListeners$1;

    iget-object v0, v0, Lccsancom/google/common/cache/RemovalListeners$1;->val$listener:Lccsancom/google/common/cache/RemovalListener;

    iget-object v1, p0, Lccsancom/google/common/cache/RemovalListeners$1$1;->val$notification:Lccsancom/google/common/cache/RemovalNotification;

    invoke-interface {v0, v1}, Lccsancom/google/common/cache/RemovalListener;->onRemoval(Lccsancom/google/common/cache/RemovalNotification;)V

    .line 52
    return-void
.end method
