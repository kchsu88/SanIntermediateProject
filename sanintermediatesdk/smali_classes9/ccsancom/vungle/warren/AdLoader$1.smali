.class Lccsancom/vungle/warren/AdLoader$1;
.super Ljava/lang/Object;
.source "AdLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/AdLoader;->clear()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/vungle/warren/AdLoader;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/AdLoader;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/vungle/warren/AdLoader;

    .line 389
    iput-object p1, p0, Lccsancom/vungle/warren/AdLoader$1;->this$0:Lccsancom/vungle/warren/AdLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 392
    iget-object v0, p0, Lccsancom/vungle/warren/AdLoader$1;->this$0:Lccsancom/vungle/warren/AdLoader;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccsancom/vungle/warren/AdLoader;->access$002(Lccsancom/vungle/warren/AdLoader;Lccsancom/vungle/warren/AdRequest;)Lccsancom/vungle/warren/AdRequest;

    .line 393
    iget-object v0, p0, Lccsancom/vungle/warren/AdLoader$1;->this$0:Lccsancom/vungle/warren/AdLoader;

    invoke-static {v0}, Lccsancom/vungle/warren/AdLoader;->access$100(Lccsancom/vungle/warren/AdLoader;)Lccsancom/vungle/warren/OperationSequence;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/vungle/warren/OperationSequence;->removeAll()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/vungle/warren/OperationSequence$Entry;

    .line 394
    .local v1, "op":Lccsancom/vungle/warren/OperationSequence$Entry;
    iget-object v2, p0, Lccsancom/vungle/warren/AdLoader$1;->this$0:Lccsancom/vungle/warren/AdLoader;

    iget-object v3, v1, Lccsancom/vungle/warren/OperationSequence$Entry;->operation:Lccsancom/vungle/warren/AdLoader$Operation;

    const/16 v4, 0x19

    invoke-static {v2, v3, v4}, Lccsancom/vungle/warren/AdLoader;->access$200(Lccsancom/vungle/warren/AdLoader;Lccsancom/vungle/warren/AdLoader$Operation;I)V

    .line 395
    .end local v1    # "op":Lccsancom/vungle/warren/OperationSequence$Entry;
    goto :goto_0

    .line 396
    :cond_0
    return-void
.end method
