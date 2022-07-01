.class Lccsancom/vungle/warren/persistence/Repository$14;
.super Ljava/lang/Object;
.source "Repository.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/persistence/Repository;->delete(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/vungle/warren/persistence/Repository;

.field final synthetic val$r:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/persistence/Repository;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/vungle/warren/persistence/Repository;

    .line 620
    iput-object p1, p0, Lccsancom/vungle/warren/persistence/Repository$14;->this$0:Lccsancom/vungle/warren/persistence/Repository;

    iput-object p2, p0, Lccsancom/vungle/warren/persistence/Repository$14;->val$r:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 620
    invoke-virtual {p0}, Lccsancom/vungle/warren/persistence/Repository$14;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 623
    iget-object v0, p0, Lccsancom/vungle/warren/persistence/Repository$14;->this$0:Lccsancom/vungle/warren/persistence/Repository;

    iget-object v1, p0, Lccsancom/vungle/warren/persistence/Repository$14;->val$r:Ljava/lang/Object;

    invoke-static {v0, v1}, Lccsancom/vungle/warren/persistence/Repository;->access$900(Lccsancom/vungle/warren/persistence/Repository;Ljava/lang/Object;)V

    .line 624
    const/4 v0, 0x0

    return-object v0
.end method
