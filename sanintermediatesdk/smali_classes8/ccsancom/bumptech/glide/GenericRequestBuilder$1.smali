.class Lccsancom/bumptech/glide/GenericRequestBuilder$1;
.super Ljava/lang/Object;
.source "GenericRequestBuilder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/bumptech/glide/GenericRequestBuilder;->into(II)Lccsancom/bumptech/glide/request/FutureTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/bumptech/glide/GenericRequestBuilder;

.field final synthetic val$target:Lccsancom/bumptech/glide/request/RequestFutureTarget;


# direct methods
.method constructor <init>(Lccsancom/bumptech/glide/GenericRequestBuilder;Lccsancom/bumptech/glide/request/RequestFutureTarget;)V
    .locals 0

    .line 725
    .local p0, "this":Lccsancom/bumptech/glide/GenericRequestBuilder$1;, "Lccsancom/bumptech/glide/GenericRequestBuilder.1;"
    iput-object p1, p0, Lccsancom/bumptech/glide/GenericRequestBuilder$1;->this$0:Lccsancom/bumptech/glide/GenericRequestBuilder;

    iput-object p2, p0, Lccsancom/bumptech/glide/GenericRequestBuilder$1;->val$target:Lccsancom/bumptech/glide/request/RequestFutureTarget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 728
    .local p0, "this":Lccsancom/bumptech/glide/GenericRequestBuilder$1;, "Lccsancom/bumptech/glide/GenericRequestBuilder.1;"
    iget-object v0, p0, Lccsancom/bumptech/glide/GenericRequestBuilder$1;->val$target:Lccsancom/bumptech/glide/request/RequestFutureTarget;

    invoke-virtual {v0}, Lccsancom/bumptech/glide/request/RequestFutureTarget;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 729
    iget-object v0, p0, Lccsancom/bumptech/glide/GenericRequestBuilder$1;->this$0:Lccsancom/bumptech/glide/GenericRequestBuilder;

    iget-object v1, p0, Lccsancom/bumptech/glide/GenericRequestBuilder$1;->val$target:Lccsancom/bumptech/glide/request/RequestFutureTarget;

    invoke-virtual {v0, v1}, Lccsancom/bumptech/glide/GenericRequestBuilder;->into(Lccsancom/bumptech/glide/request/target/Target;)Lccsancom/bumptech/glide/request/target/Target;

    .line 731
    :cond_0
    return-void
.end method
