.class public final Lccsancom/bumptech/glide/RequestManager$ImageModelRequest;
.super Ljava/lang/Object;
.source "RequestManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/bumptech/glide/RequestManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ImageModelRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final loader:Lccsancom/bumptech/glide/load/model/ModelLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/bumptech/glide/load/model/ModelLoader<",
            "TT;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lccsancom/bumptech/glide/RequestManager;


# direct methods
.method constructor <init>(Lccsancom/bumptech/glide/RequestManager;Lccsancom/bumptech/glide/load/model/ModelLoader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/model/ModelLoader<",
            "TT;",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .line 673
    .local p0, "this":Lccsancom/bumptech/glide/RequestManager$ImageModelRequest;, "Lccsancom/bumptech/glide/RequestManager$ImageModelRequest<TT;>;"
    .local p2, "loader":Lccsancom/bumptech/glide/load/model/ModelLoader;, "Lccsancom/bumptech/glide/load/model/ModelLoader<TT;Ljava/io/InputStream;>;"
    iput-object p1, p0, Lccsancom/bumptech/glide/RequestManager$ImageModelRequest;->this$0:Lccsancom/bumptech/glide/RequestManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 674
    iput-object p2, p0, Lccsancom/bumptech/glide/RequestManager$ImageModelRequest;->loader:Lccsancom/bumptech/glide/load/model/ModelLoader;

    .line 675
    return-void
.end method


# virtual methods
.method public from(Ljava/lang/Class;)Lccsancom/bumptech/glide/DrawableTypeRequest;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lccsancom/bumptech/glide/DrawableTypeRequest<",
            "TT;>;"
        }
    .end annotation

    .line 684
    .local p0, "this":Lccsancom/bumptech/glide/RequestManager$ImageModelRequest;, "Lccsancom/bumptech/glide/RequestManager$ImageModelRequest<TT;>;"
    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lccsancom/bumptech/glide/RequestManager$ImageModelRequest;->this$0:Lccsancom/bumptech/glide/RequestManager;

    invoke-static {v0}, Lccsancom/bumptech/glide/RequestManager;->access$500(Lccsancom/bumptech/glide/RequestManager;)Lccsancom/bumptech/glide/RequestManager$OptionsApplier;

    move-result-object v0

    new-instance v10, Lccsancom/bumptech/glide/DrawableTypeRequest;

    iget-object v3, p0, Lccsancom/bumptech/glide/RequestManager$ImageModelRequest;->loader:Lccsancom/bumptech/glide/load/model/ModelLoader;

    iget-object v1, p0, Lccsancom/bumptech/glide/RequestManager$ImageModelRequest;->this$0:Lccsancom/bumptech/glide/RequestManager;

    invoke-static {v1}, Lccsancom/bumptech/glide/RequestManager;->access$100(Lccsancom/bumptech/glide/RequestManager;)Lccsanandroid/content/Context;

    move-result-object v5

    iget-object v1, p0, Lccsancom/bumptech/glide/RequestManager$ImageModelRequest;->this$0:Lccsancom/bumptech/glide/RequestManager;

    invoke-static {v1}, Lccsancom/bumptech/glide/RequestManager;->access$200(Lccsancom/bumptech/glide/RequestManager;)Lccsancom/bumptech/glide/Glide;

    move-result-object v6

    iget-object v1, p0, Lccsancom/bumptech/glide/RequestManager$ImageModelRequest;->this$0:Lccsancom/bumptech/glide/RequestManager;

    invoke-static {v1}, Lccsancom/bumptech/glide/RequestManager;->access$300(Lccsancom/bumptech/glide/RequestManager;)Lccsancom/bumptech/glide/manager/RequestTracker;

    move-result-object v7

    iget-object v1, p0, Lccsancom/bumptech/glide/RequestManager$ImageModelRequest;->this$0:Lccsancom/bumptech/glide/RequestManager;

    invoke-static {v1}, Lccsancom/bumptech/glide/RequestManager;->access$400(Lccsancom/bumptech/glide/RequestManager;)Lccsancom/bumptech/glide/manager/Lifecycle;

    move-result-object v8

    iget-object v1, p0, Lccsancom/bumptech/glide/RequestManager$ImageModelRequest;->this$0:Lccsancom/bumptech/glide/RequestManager;

    invoke-static {v1}, Lccsancom/bumptech/glide/RequestManager;->access$500(Lccsancom/bumptech/glide/RequestManager;)Lccsancom/bumptech/glide/RequestManager$OptionsApplier;

    move-result-object v9

    const/4 v4, 0x0

    move-object v1, v10

    move-object v2, p1

    invoke-direct/range {v1 .. v9}, Lccsancom/bumptech/glide/DrawableTypeRequest;-><init>(Ljava/lang/Class;Lccsancom/bumptech/glide/load/model/ModelLoader;Lccsancom/bumptech/glide/load/model/ModelLoader;Lccsanandroid/content/Context;Lccsancom/bumptech/glide/Glide;Lccsancom/bumptech/glide/manager/RequestTracker;Lccsancom/bumptech/glide/manager/Lifecycle;Lccsancom/bumptech/glide/RequestManager$OptionsApplier;)V

    invoke-virtual {v0, v10}, Lccsancom/bumptech/glide/RequestManager$OptionsApplier;->apply(Lccsancom/bumptech/glide/GenericRequestBuilder;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    move-result-object v0

    check-cast v0, Lccsancom/bumptech/glide/DrawableTypeRequest;

    return-object v0
.end method

.method public load(Ljava/lang/Object;)Lccsancom/bumptech/glide/DrawableTypeRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lccsancom/bumptech/glide/DrawableTypeRequest<",
            "TT;>;"
        }
    .end annotation

    .line 697
    .local p0, "this":Lccsancom/bumptech/glide/RequestManager$ImageModelRequest;, "Lccsancom/bumptech/glide/RequestManager$ImageModelRequest<TT;>;"
    .local p1, "model":Ljava/lang/Object;, "TT;"
    invoke-static {p1}, Lccsancom/bumptech/glide/RequestManager;->access$000(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/bumptech/glide/RequestManager$ImageModelRequest;->from(Ljava/lang/Class;)Lccsancom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/bumptech/glide/DrawableTypeRequest;->load(Ljava/lang/Object;)Lccsancom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    check-cast v0, Lccsancom/bumptech/glide/DrawableTypeRequest;

    return-object v0
.end method
