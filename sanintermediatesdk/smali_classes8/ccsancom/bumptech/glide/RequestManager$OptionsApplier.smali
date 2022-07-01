.class Lccsancom/bumptech/glide/RequestManager$OptionsApplier;
.super Ljava/lang/Object;
.source "RequestManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/bumptech/glide/RequestManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OptionsApplier"
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/bumptech/glide/RequestManager;


# direct methods
.method constructor <init>(Lccsancom/bumptech/glide/RequestManager;)V
    .locals 0

    .line 779
    iput-object p1, p0, Lccsancom/bumptech/glide/RequestManager$OptionsApplier;->this$0:Lccsancom/bumptech/glide/RequestManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lccsancom/bumptech/glide/GenericRequestBuilder;)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "X:",
            "Lccsancom/bumptech/glide/GenericRequestBuilder<",
            "TA;***>;>(TX;)TX;"
        }
    .end annotation

    .line 782
    .local p1, "builder":Lccsancom/bumptech/glide/GenericRequestBuilder;, "TX;"
    iget-object v0, p0, Lccsancom/bumptech/glide/RequestManager$OptionsApplier;->this$0:Lccsancom/bumptech/glide/RequestManager;

    invoke-static {v0}, Lccsancom/bumptech/glide/RequestManager;->access$800(Lccsancom/bumptech/glide/RequestManager;)Lccsancom/bumptech/glide/RequestManager$DefaultOptions;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 783
    iget-object v0, p0, Lccsancom/bumptech/glide/RequestManager$OptionsApplier;->this$0:Lccsancom/bumptech/glide/RequestManager;

    invoke-static {v0}, Lccsancom/bumptech/glide/RequestManager;->access$800(Lccsancom/bumptech/glide/RequestManager;)Lccsancom/bumptech/glide/RequestManager$DefaultOptions;

    move-result-object v0

    invoke-interface {v0, p1}, Lccsancom/bumptech/glide/RequestManager$DefaultOptions;->apply(Lccsancom/bumptech/glide/GenericRequestBuilder;)V

    .line 785
    :cond_0
    return-object p1
.end method
