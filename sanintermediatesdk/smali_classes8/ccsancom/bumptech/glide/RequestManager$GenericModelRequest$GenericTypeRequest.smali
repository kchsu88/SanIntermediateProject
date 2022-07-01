.class public final Lccsancom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;
.super Ljava/lang/Object;
.source "RequestManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/bumptech/glide/RequestManager$GenericModelRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "GenericTypeRequest"
.end annotation


# instance fields
.field private final model:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private final modelClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TA;>;"
        }
    .end annotation
.end field

.field private final providedModel:Z

.field final synthetic this$1:Lccsancom/bumptech/glide/RequestManager$GenericModelRequest;


# direct methods
.method constructor <init>(Lccsancom/bumptech/glide/RequestManager$GenericModelRequest;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TA;>;)V"
        }
    .end annotation

    .line 754
    .local p0, "this":Lccsancom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;, "Lccsancom/bumptech/glide/RequestManager$GenericModelRequest<TA;TT;>.GenericTypeRequest;"
    .local p2, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    iput-object p1, p0, Lccsancom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;->this$1:Lccsancom/bumptech/glide/RequestManager$GenericModelRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 755
    const/4 p1, 0x0

    iput-boolean p1, p0, Lccsancom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;->providedModel:Z

    .line 756
    const/4 p1, 0x0

    iput-object p1, p0, Lccsancom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;->model:Ljava/lang/Object;

    .line 757
    iput-object p2, p0, Lccsancom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;->modelClass:Ljava/lang/Class;

    .line 758
    return-void
.end method

.method constructor <init>(Lccsancom/bumptech/glide/RequestManager$GenericModelRequest;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    .line 748
    .local p0, "this":Lccsancom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;, "Lccsancom/bumptech/glide/RequestManager$GenericModelRequest<TA;TT;>.GenericTypeRequest;"
    .local p2, "model":Ljava/lang/Object;, "TA;"
    iput-object p1, p0, Lccsancom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;->this$1:Lccsancom/bumptech/glide/RequestManager$GenericModelRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 749
    const/4 p1, 0x1

    iput-boolean p1, p0, Lccsancom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;->providedModel:Z

    .line 750
    iput-object p2, p0, Lccsancom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;->model:Ljava/lang/Object;

    .line 751
    invoke-static {p2}, Lccsancom/bumptech/glide/RequestManager;->access$000(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lccsancom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;->modelClass:Ljava/lang/Class;

    .line 752
    return-void
.end method


# virtual methods
.method public as(Ljava/lang/Class;)Lccsancom/bumptech/glide/GenericTranscodeRequest;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TZ;>;)",
            "Lccsancom/bumptech/glide/GenericTranscodeRequest<",
            "TA;TT;TZ;>;"
        }
    .end annotation

    .line 768
    .local p0, "this":Lccsancom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;, "Lccsancom/bumptech/glide/RequestManager$GenericModelRequest<TA;TT;>.GenericTypeRequest;"
    .local p1, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TZ;>;"
    iget-object v0, p0, Lccsancom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;->this$1:Lccsancom/bumptech/glide/RequestManager$GenericModelRequest;

    iget-object v0, v0, Lccsancom/bumptech/glide/RequestManager$GenericModelRequest;->this$0:Lccsancom/bumptech/glide/RequestManager;

    invoke-static {v0}, Lccsancom/bumptech/glide/RequestManager;->access$500(Lccsancom/bumptech/glide/RequestManager;)Lccsancom/bumptech/glide/RequestManager$OptionsApplier;

    move-result-object v0

    new-instance v11, Lccsancom/bumptech/glide/GenericTranscodeRequest;

    iget-object v1, p0, Lccsancom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;->this$1:Lccsancom/bumptech/glide/RequestManager$GenericModelRequest;

    iget-object v1, v1, Lccsancom/bumptech/glide/RequestManager$GenericModelRequest;->this$0:Lccsancom/bumptech/glide/RequestManager;

    invoke-static {v1}, Lccsancom/bumptech/glide/RequestManager;->access$100(Lccsancom/bumptech/glide/RequestManager;)Lccsanandroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Lccsancom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;->this$1:Lccsancom/bumptech/glide/RequestManager$GenericModelRequest;

    iget-object v1, v1, Lccsancom/bumptech/glide/RequestManager$GenericModelRequest;->this$0:Lccsancom/bumptech/glide/RequestManager;

    invoke-static {v1}, Lccsancom/bumptech/glide/RequestManager;->access$200(Lccsancom/bumptech/glide/RequestManager;)Lccsancom/bumptech/glide/Glide;

    move-result-object v3

    iget-object v4, p0, Lccsancom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;->modelClass:Ljava/lang/Class;

    iget-object v1, p0, Lccsancom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;->this$1:Lccsancom/bumptech/glide/RequestManager$GenericModelRequest;

    invoke-static {v1}, Lccsancom/bumptech/glide/RequestManager$GenericModelRequest;->access$600(Lccsancom/bumptech/glide/RequestManager$GenericModelRequest;)Lccsancom/bumptech/glide/load/model/ModelLoader;

    move-result-object v5

    iget-object v1, p0, Lccsancom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;->this$1:Lccsancom/bumptech/glide/RequestManager$GenericModelRequest;

    invoke-static {v1}, Lccsancom/bumptech/glide/RequestManager$GenericModelRequest;->access$700(Lccsancom/bumptech/glide/RequestManager$GenericModelRequest;)Ljava/lang/Class;

    move-result-object v6

    iget-object v1, p0, Lccsancom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;->this$1:Lccsancom/bumptech/glide/RequestManager$GenericModelRequest;

    iget-object v1, v1, Lccsancom/bumptech/glide/RequestManager$GenericModelRequest;->this$0:Lccsancom/bumptech/glide/RequestManager;

    invoke-static {v1}, Lccsancom/bumptech/glide/RequestManager;->access$300(Lccsancom/bumptech/glide/RequestManager;)Lccsancom/bumptech/glide/manager/RequestTracker;

    move-result-object v8

    iget-object v1, p0, Lccsancom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;->this$1:Lccsancom/bumptech/glide/RequestManager$GenericModelRequest;

    iget-object v1, v1, Lccsancom/bumptech/glide/RequestManager$GenericModelRequest;->this$0:Lccsancom/bumptech/glide/RequestManager;

    invoke-static {v1}, Lccsancom/bumptech/glide/RequestManager;->access$400(Lccsancom/bumptech/glide/RequestManager;)Lccsancom/bumptech/glide/manager/Lifecycle;

    move-result-object v9

    iget-object v1, p0, Lccsancom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;->this$1:Lccsancom/bumptech/glide/RequestManager$GenericModelRequest;

    iget-object v1, v1, Lccsancom/bumptech/glide/RequestManager$GenericModelRequest;->this$0:Lccsancom/bumptech/glide/RequestManager;

    invoke-static {v1}, Lccsancom/bumptech/glide/RequestManager;->access$500(Lccsancom/bumptech/glide/RequestManager;)Lccsancom/bumptech/glide/RequestManager$OptionsApplier;

    move-result-object v10

    move-object v1, v11

    move-object v7, p1

    invoke-direct/range {v1 .. v10}, Lccsancom/bumptech/glide/GenericTranscodeRequest;-><init>(Lccsanandroid/content/Context;Lccsancom/bumptech/glide/Glide;Ljava/lang/Class;Lccsancom/bumptech/glide/load/model/ModelLoader;Ljava/lang/Class;Ljava/lang/Class;Lccsancom/bumptech/glide/manager/RequestTracker;Lccsancom/bumptech/glide/manager/Lifecycle;Lccsancom/bumptech/glide/RequestManager$OptionsApplier;)V

    invoke-virtual {v0, v11}, Lccsancom/bumptech/glide/RequestManager$OptionsApplier;->apply(Lccsancom/bumptech/glide/GenericRequestBuilder;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    move-result-object v0

    check-cast v0, Lccsancom/bumptech/glide/GenericTranscodeRequest;

    .line 771
    .local v0, "result":Lccsancom/bumptech/glide/GenericTranscodeRequest;, "Lccsancom/bumptech/glide/GenericTranscodeRequest<TA;TT;TZ;>;"
    iget-boolean v1, p0, Lccsancom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;->providedModel:Z

    if-eqz v1, :cond_0

    .line 772
    iget-object v1, p0, Lccsancom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;->model:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lccsancom/bumptech/glide/GenericTranscodeRequest;->load(Ljava/lang/Object;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    .line 774
    :cond_0
    return-object v0
.end method
