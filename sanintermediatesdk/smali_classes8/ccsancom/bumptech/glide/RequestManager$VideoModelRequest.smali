.class public final Lccsancom/bumptech/glide/RequestManager$VideoModelRequest;
.super Ljava/lang/Object;
.source "RequestManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/bumptech/glide/RequestManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "VideoModelRequest"
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
            "Lccsanandroid/os/ParcelFileDescriptor;",
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
            "Lccsanandroid/os/ParcelFileDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 653
    .local p0, "this":Lccsancom/bumptech/glide/RequestManager$VideoModelRequest;, "Lccsancom/bumptech/glide/RequestManager$VideoModelRequest<TT;>;"
    .local p2, "loader":Lccsancom/bumptech/glide/load/model/ModelLoader;, "Lccsancom/bumptech/glide/load/model/ModelLoader<TT;Lccsanandroid/os/ParcelFileDescriptor;>;"
    iput-object p1, p0, Lccsancom/bumptech/glide/RequestManager$VideoModelRequest;->this$0:Lccsancom/bumptech/glide/RequestManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 654
    iput-object p2, p0, Lccsancom/bumptech/glide/RequestManager$VideoModelRequest;->loader:Lccsancom/bumptech/glide/load/model/ModelLoader;

    .line 655
    return-void
.end method


# virtual methods
.method public load(Ljava/lang/Object;)Lccsancom/bumptech/glide/DrawableTypeRequest;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lccsancom/bumptech/glide/DrawableTypeRequest<",
            "TT;>;"
        }
    .end annotation

    .line 658
    .local p0, "this":Lccsancom/bumptech/glide/RequestManager$VideoModelRequest;, "Lccsancom/bumptech/glide/RequestManager$VideoModelRequest<TT;>;"
    .local p1, "model":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lccsancom/bumptech/glide/RequestManager$VideoModelRequest;->this$0:Lccsancom/bumptech/glide/RequestManager;

    invoke-static {v0}, Lccsancom/bumptech/glide/RequestManager;->access$500(Lccsancom/bumptech/glide/RequestManager;)Lccsancom/bumptech/glide/RequestManager$OptionsApplier;

    move-result-object v0

    new-instance v10, Lccsancom/bumptech/glide/DrawableTypeRequest;

    invoke-static {p1}, Lccsancom/bumptech/glide/RequestManager;->access$000(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v2

    iget-object v4, p0, Lccsancom/bumptech/glide/RequestManager$VideoModelRequest;->loader:Lccsancom/bumptech/glide/load/model/ModelLoader;

    iget-object v1, p0, Lccsancom/bumptech/glide/RequestManager$VideoModelRequest;->this$0:Lccsancom/bumptech/glide/RequestManager;

    invoke-static {v1}, Lccsancom/bumptech/glide/RequestManager;->access$100(Lccsancom/bumptech/glide/RequestManager;)Lccsanandroid/content/Context;

    move-result-object v5

    iget-object v1, p0, Lccsancom/bumptech/glide/RequestManager$VideoModelRequest;->this$0:Lccsancom/bumptech/glide/RequestManager;

    invoke-static {v1}, Lccsancom/bumptech/glide/RequestManager;->access$200(Lccsancom/bumptech/glide/RequestManager;)Lccsancom/bumptech/glide/Glide;

    move-result-object v6

    iget-object v1, p0, Lccsancom/bumptech/glide/RequestManager$VideoModelRequest;->this$0:Lccsancom/bumptech/glide/RequestManager;

    invoke-static {v1}, Lccsancom/bumptech/glide/RequestManager;->access$300(Lccsancom/bumptech/glide/RequestManager;)Lccsancom/bumptech/glide/manager/RequestTracker;

    move-result-object v7

    iget-object v1, p0, Lccsancom/bumptech/glide/RequestManager$VideoModelRequest;->this$0:Lccsancom/bumptech/glide/RequestManager;

    invoke-static {v1}, Lccsancom/bumptech/glide/RequestManager;->access$400(Lccsancom/bumptech/glide/RequestManager;)Lccsancom/bumptech/glide/manager/Lifecycle;

    move-result-object v8

    iget-object v1, p0, Lccsancom/bumptech/glide/RequestManager$VideoModelRequest;->this$0:Lccsancom/bumptech/glide/RequestManager;

    invoke-static {v1}, Lccsancom/bumptech/glide/RequestManager;->access$500(Lccsancom/bumptech/glide/RequestManager;)Lccsancom/bumptech/glide/RequestManager$OptionsApplier;

    move-result-object v9

    const/4 v3, 0x0

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lccsancom/bumptech/glide/DrawableTypeRequest;-><init>(Ljava/lang/Class;Lccsancom/bumptech/glide/load/model/ModelLoader;Lccsancom/bumptech/glide/load/model/ModelLoader;Lccsanandroid/content/Context;Lccsancom/bumptech/glide/Glide;Lccsancom/bumptech/glide/manager/RequestTracker;Lccsancom/bumptech/glide/manager/Lifecycle;Lccsancom/bumptech/glide/RequestManager$OptionsApplier;)V

    invoke-virtual {v0, v10}, Lccsancom/bumptech/glide/RequestManager$OptionsApplier;->apply(Lccsancom/bumptech/glide/GenericRequestBuilder;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    move-result-object v0

    check-cast v0, Lccsancom/bumptech/glide/DrawableTypeRequest;

    invoke-virtual {v0, p1}, Lccsancom/bumptech/glide/DrawableTypeRequest;->load(Ljava/lang/Object;)Lccsancom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    check-cast v0, Lccsancom/bumptech/glide/DrawableTypeRequest;

    return-object v0
.end method
