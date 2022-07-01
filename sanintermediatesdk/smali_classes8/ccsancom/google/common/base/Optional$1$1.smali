.class Lccsancom/google/common/base/Optional$1$1;
.super Lccsancom/google/common/base/AbstractIterator;
.source "Optional.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/base/Optional$1;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/base/AbstractIterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+",
            "Lccsancom/google/common/base/Optional<",
            "+TT;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lccsancom/google/common/base/Optional$1;


# direct methods
.method constructor <init>(Lccsancom/google/common/base/Optional$1;)V
    .locals 1
    .param p1, "this$0"    # Lccsancom/google/common/base/Optional$1;

    .line 292
    iput-object p1, p0, Lccsancom/google/common/base/Optional$1$1;->this$0:Lccsancom/google/common/base/Optional$1;

    invoke-direct {p0}, Lccsancom/google/common/base/AbstractIterator;-><init>()V

    .line 293
    iget-object v0, p1, Lccsancom/google/common/base/Optional$1;->val$optionals:Ljava/lang/Iterable;

    .line 294
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    iput-object v0, p0, Lccsancom/google/common/base/Optional$1$1;->iterator:Ljava/util/Iterator;

    .line 293
    return-void
.end method


# virtual methods
.method protected computeNext()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 298
    :goto_0
    iget-object v0, p0, Lccsancom/google/common/base/Optional$1$1;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 299
    iget-object v0, p0, Lccsancom/google/common/base/Optional$1$1;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/base/Optional;

    .line 300
    .local v0, "optional":Lccsancom/google/common/base/Optional;, "Lccsancom/google/common/base/Optional<+TT;>;"
    invoke-virtual {v0}, Lccsancom/google/common/base/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 301
    invoke-virtual {v0}, Lccsancom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 303
    .end local v0    # "optional":Lccsancom/google/common/base/Optional;, "Lccsancom/google/common/base/Optional<+TT;>;"
    :cond_0
    goto :goto_0

    .line 304
    :cond_1
    invoke-virtual {p0}, Lccsancom/google/common/base/Optional$1$1;->endOfData()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
