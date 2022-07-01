.class final Lccsancom/google/common/collect/Iterables$5;
.super Lccsancom/google/common/collect/FluentIterable;
.source "Iterables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/collect/Iterables;->transform(Ljava/lang/Iterable;Lccsancom/google/common/base/Function;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/collect/FluentIterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$fromIterable:Ljava/lang/Iterable;

.field final synthetic val$function:Lccsancom/google/common/base/Function;


# direct methods
.method constructor <init>(Ljava/lang/Iterable;Lccsancom/google/common/base/Function;)V
    .locals 0

    .line 715
    iput-object p1, p0, Lccsancom/google/common/collect/Iterables$5;->val$fromIterable:Ljava/lang/Iterable;

    iput-object p2, p0, Lccsancom/google/common/collect/Iterables$5;->val$function:Lccsancom/google/common/base/Function;

    invoke-direct {p0}, Lccsancom/google/common/collect/FluentIterable;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 718
    iget-object v0, p0, Lccsancom/google/common/collect/Iterables$5;->val$fromIterable:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lccsancom/google/common/collect/Iterables$5;->val$function:Lccsancom/google/common/base/Function;

    invoke-static {v0, v1}, Lccsancom/google/common/collect/Iterators;->transform(Ljava/util/Iterator;Lccsancom/google/common/base/Function;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
