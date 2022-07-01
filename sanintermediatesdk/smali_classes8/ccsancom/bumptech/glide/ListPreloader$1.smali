.class Lccsancom/bumptech/glide/ListPreloader$1;
.super Ljava/lang/Object;
.source "ListPreloader.java"

# interfaces
.implements Lccsancom/bumptech/glide/ListPreloader$PreloadModelProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/bumptech/glide/ListPreloader;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsancom/bumptech/glide/ListPreloader$PreloadModelProvider<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/bumptech/glide/ListPreloader;


# direct methods
.method constructor <init>(Lccsancom/bumptech/glide/ListPreloader;)V
    .locals 0

    .line 103
    .local p0, "this":Lccsancom/bumptech/glide/ListPreloader$1;, "Lccsancom/bumptech/glide/ListPreloader.1;"
    iput-object p1, p0, Lccsancom/bumptech/glide/ListPreloader$1;->this$0:Lccsancom/bumptech/glide/ListPreloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPreloadItems(I)Ljava/util/List;
    .locals 2
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 106
    .local p0, "this":Lccsancom/bumptech/glide/ListPreloader$1;, "Lccsancom/bumptech/glide/ListPreloader.1;"
    iget-object v0, p0, Lccsancom/bumptech/glide/ListPreloader$1;->this$0:Lccsancom/bumptech/glide/ListPreloader;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, p1, v1}, Lccsancom/bumptech/glide/ListPreloader;->getItems(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPreloadRequestBuilder(Ljava/lang/Object;)Lccsancom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lccsancom/bumptech/glide/GenericRequestBuilder;"
        }
    .end annotation

    .line 111
    .local p0, "this":Lccsancom/bumptech/glide/ListPreloader$1;, "Lccsancom/bumptech/glide/ListPreloader.1;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lccsancom/bumptech/glide/ListPreloader$1;->this$0:Lccsancom/bumptech/glide/ListPreloader;

    invoke-virtual {v0, p1}, Lccsancom/bumptech/glide/ListPreloader;->getRequestBuilder(Ljava/lang/Object;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    move-result-object v0

    return-object v0
.end method
