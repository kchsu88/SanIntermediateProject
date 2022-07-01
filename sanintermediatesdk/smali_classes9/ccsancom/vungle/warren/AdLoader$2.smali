.class Lccsancom/vungle/warren/AdLoader$2;
.super Ljava/lang/Object;
.source "AdLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/AdLoader;->load(Lccsancom/vungle/warren/AdLoader$Operation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/vungle/warren/AdLoader;

.field final synthetic val$op:Lccsancom/vungle/warren/AdLoader$Operation;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/AdLoader;Lccsancom/vungle/warren/AdLoader$Operation;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/vungle/warren/AdLoader;

    .line 446
    iput-object p1, p0, Lccsancom/vungle/warren/AdLoader$2;->this$0:Lccsancom/vungle/warren/AdLoader;

    iput-object p2, p0, Lccsancom/vungle/warren/AdLoader$2;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 449
    iget-object v0, p0, Lccsancom/vungle/warren/AdLoader$2;->this$0:Lccsancom/vungle/warren/AdLoader;

    invoke-static {v0}, Lccsancom/vungle/warren/AdLoader;->access$300(Lccsancom/vungle/warren/AdLoader;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lccsancom/vungle/warren/AdLoader$2;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 450
    return-void

    .line 453
    :cond_0
    iget-object v0, p0, Lccsancom/vungle/warren/AdLoader$2;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    .line 454
    .local v0, "starting":Lccsancom/vungle/warren/AdLoader$Operation;
    iget-object v1, p0, Lccsancom/vungle/warren/AdLoader$2;->this$0:Lccsancom/vungle/warren/AdLoader;

    invoke-static {v1}, Lccsancom/vungle/warren/AdLoader;->access$400(Lccsancom/vungle/warren/AdLoader;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, v0, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/vungle/warren/AdLoader$Operation;

    .line 455
    .local v1, "current":Lccsancom/vungle/warren/AdLoader$Operation;
    if-eqz v1, :cond_2

    .line 456
    iget v2, v1, Lccsancom/vungle/warren/AdLoader$Operation;->priority:I

    .line 457
    .local v2, "oldPriority":I
    invoke-virtual {v1, v0}, Lccsancom/vungle/warren/AdLoader$Operation;->merge(Lccsancom/vungle/warren/AdLoader$Operation;)V

    .line 458
    iget v3, v1, Lccsancom/vungle/warren/AdLoader$Operation;->priority:I

    if-ge v3, v2, :cond_1

    .line 459
    iget-object v3, p0, Lccsancom/vungle/warren/AdLoader$2;->this$0:Lccsancom/vungle/warren/AdLoader;

    invoke-static {v3, v1}, Lccsancom/vungle/warren/AdLoader;->access$500(Lccsancom/vungle/warren/AdLoader;Lccsancom/vungle/warren/AdLoader$Operation;)V

    .line 461
    .end local v2    # "oldPriority":I
    :cond_1
    goto :goto_1

    .line 462
    :cond_2
    iget-object v2, p0, Lccsancom/vungle/warren/AdLoader$2;->this$0:Lccsancom/vungle/warren/AdLoader;

    invoke-static {v2}, Lccsancom/vungle/warren/AdLoader;->access$100(Lccsancom/vungle/warren/AdLoader;)Lccsancom/vungle/warren/OperationSequence;

    move-result-object v2

    iget-object v3, v0, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-virtual {v2, v3}, Lccsancom/vungle/warren/OperationSequence;->remove(Lccsancom/vungle/warren/AdRequest;)Lccsancom/vungle/warren/OperationSequence$Entry;

    move-result-object v2

    .line 463
    .local v2, "next":Lccsancom/vungle/warren/OperationSequence$Entry;
    if-eqz v2, :cond_3

    .line 464
    iget-object v3, v2, Lccsancom/vungle/warren/OperationSequence$Entry;->operation:Lccsancom/vungle/warren/AdLoader$Operation;

    invoke-virtual {v3, v0}, Lccsancom/vungle/warren/AdLoader$Operation;->merge(Lccsancom/vungle/warren/AdLoader$Operation;)V

    .line 465
    iget-object v0, v2, Lccsancom/vungle/warren/OperationSequence$Entry;->operation:Lccsancom/vungle/warren/AdLoader$Operation;

    .line 468
    :cond_3
    iget v3, v0, Lccsancom/vungle/warren/AdLoader$Operation;->priority:I

    if-gtz v3, :cond_4

    .line 469
    iget-object v3, p0, Lccsancom/vungle/warren/AdLoader$2;->this$0:Lccsancom/vungle/warren/AdLoader;

    invoke-static {v3, v0}, Lccsancom/vungle/warren/AdLoader;->access$600(Lccsancom/vungle/warren/AdLoader;Lccsancom/vungle/warren/AdLoader$Operation;)V

    goto :goto_1

    .line 471
    :cond_4
    iget-object v3, p0, Lccsancom/vungle/warren/AdLoader$2;->this$0:Lccsancom/vungle/warren/AdLoader;

    invoke-static {v3}, Lccsancom/vungle/warren/AdLoader;->access$100(Lccsancom/vungle/warren/AdLoader;)Lccsancom/vungle/warren/OperationSequence;

    move-result-object v3

    if-nez v2, :cond_5

    new-instance v4, Lccsancom/vungle/warren/OperationSequence$Entry;

    invoke-direct {v4, v0}, Lccsancom/vungle/warren/OperationSequence$Entry;-><init>(Lccsancom/vungle/warren/AdLoader$Operation;)V

    goto :goto_0

    :cond_5
    move-object v4, v2

    :goto_0
    invoke-virtual {v3, v4}, Lccsancom/vungle/warren/OperationSequence;->offer(Lccsancom/vungle/warren/OperationSequence$Entry;)Z

    .line 472
    iget-object v3, p0, Lccsancom/vungle/warren/AdLoader$2;->this$0:Lccsancom/vungle/warren/AdLoader;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lccsancom/vungle/warren/AdLoader;->access$700(Lccsancom/vungle/warren/AdLoader;Lccsancom/vungle/warren/AdRequest;)V

    .line 475
    .end local v2    # "next":Lccsancom/vungle/warren/OperationSequence$Entry;
    :goto_1
    iget-object v2, p0, Lccsancom/vungle/warren/AdLoader$2;->this$0:Lccsancom/vungle/warren/AdLoader;

    invoke-static {v2}, Lccsancom/vungle/warren/AdLoader;->access$300(Lccsancom/vungle/warren/AdLoader;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 476
    return-void
.end method
