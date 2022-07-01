.class Lccsancom/bumptech/glide/manager/SupportRequestManagerFragment$SupportFragmentRequestManagerTreeNode;
.super Ljava/lang/Object;
.source "SupportRequestManagerFragment.java"

# interfaces
.implements Lccsancom/bumptech/glide/manager/RequestManagerTreeNode;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/bumptech/glide/manager/SupportRequestManagerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SupportFragmentRequestManagerTreeNode"
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/bumptech/glide/manager/SupportRequestManagerFragment;


# direct methods
.method private constructor <init>(Lccsancom/bumptech/glide/manager/SupportRequestManagerFragment;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lccsancom/bumptech/glide/manager/SupportRequestManagerFragment$SupportFragmentRequestManagerTreeNode;->this$0:Lccsancom/bumptech/glide/manager/SupportRequestManagerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/bumptech/glide/manager/SupportRequestManagerFragment;Lccsancom/bumptech/glide/manager/SupportRequestManagerFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lccsancom/bumptech/glide/manager/SupportRequestManagerFragment;
    .param p2, "x1"    # Lccsancom/bumptech/glide/manager/SupportRequestManagerFragment$1;

    .line 172
    invoke-direct {p0, p1}, Lccsancom/bumptech/glide/manager/SupportRequestManagerFragment$SupportFragmentRequestManagerTreeNode;-><init>(Lccsancom/bumptech/glide/manager/SupportRequestManagerFragment;)V

    return-void
.end method


# virtual methods
.method public getDescendants()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lccsancom/bumptech/glide/RequestManager;",
            ">;"
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lccsancom/bumptech/glide/manager/SupportRequestManagerFragment$SupportFragmentRequestManagerTreeNode;->this$0:Lccsancom/bumptech/glide/manager/SupportRequestManagerFragment;

    invoke-virtual {v0}, Lccsancom/bumptech/glide/manager/SupportRequestManagerFragment;->getDescendantRequestManagerFragments()Ljava/util/Set;

    move-result-object v0

    .line 176
    .local v0, "descendantFragments":Ljava/util/Set;, "Ljava/util/Set<Lccsancom/bumptech/glide/manager/SupportRequestManagerFragment;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 177
    .local v1, "descendants":Ljava/util/HashSet;, "Ljava/util/HashSet<Lccsancom/bumptech/glide/RequestManager;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/bumptech/glide/manager/SupportRequestManagerFragment;

    .line 178
    .local v3, "fragment":Lccsancom/bumptech/glide/manager/SupportRequestManagerFragment;
    invoke-virtual {v3}, Lccsancom/bumptech/glide/manager/SupportRequestManagerFragment;->getRequestManager()Lccsancom/bumptech/glide/RequestManager;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 179
    invoke-virtual {v3}, Lccsancom/bumptech/glide/manager/SupportRequestManagerFragment;->getRequestManager()Lccsancom/bumptech/glide/RequestManager;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 181
    .end local v3    # "fragment":Lccsancom/bumptech/glide/manager/SupportRequestManagerFragment;
    :cond_0
    goto :goto_0

    .line 182
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    return-object v1
.end method
