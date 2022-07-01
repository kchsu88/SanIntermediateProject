.class Lccsancom/google/common/util/concurrent/Futures$MappingCheckedFuture;
.super Lccsancom/google/common/util/concurrent/AbstractCheckedFuture;
.source "Futures.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/util/concurrent/Futures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MappingCheckedFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "X:",
        "Ljava/lang/Exception;",
        ">",
        "Lccsancom/google/common/util/concurrent/AbstractCheckedFuture<",
        "TV;TX;>;"
    }
.end annotation


# instance fields
.field final mapper:Lccsancom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/base/Function<",
            "-",
            "Ljava/lang/Exception;",
            "TX;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lccsancom/google/common/util/concurrent/ListenableFuture;Lccsancom/google/common/base/Function;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "TV;>;",
            "Lccsancom/google/common/base/Function<",
            "-",
            "Ljava/lang/Exception;",
            "TX;>;)V"
        }
    .end annotation

    .line 1303
    .local p0, "this":Lccsancom/google/common/util/concurrent/Futures$MappingCheckedFuture;, "Lccsancom/google/common/util/concurrent/Futures$MappingCheckedFuture<TV;TX;>;"
    .local p1, "delegate":Lccsancom/google/common/util/concurrent/ListenableFuture;, "Lccsancom/google/common/util/concurrent/ListenableFuture<TV;>;"
    .local p2, "mapper":Lccsancom/google/common/base/Function;, "Lccsancom/google/common/base/Function<-Ljava/lang/Exception;TX;>;"
    invoke-direct {p0, p1}, Lccsancom/google/common/util/concurrent/AbstractCheckedFuture;-><init>(Lccsancom/google/common/util/concurrent/ListenableFuture;)V

    .line 1305
    invoke-static {p2}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/base/Function;

    iput-object v0, p0, Lccsancom/google/common/util/concurrent/Futures$MappingCheckedFuture;->mapper:Lccsancom/google/common/base/Function;

    .line 1306
    return-void
.end method


# virtual methods
.method protected mapException(Ljava/lang/Exception;)Ljava/lang/Exception;
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            ")TX;"
        }
    .end annotation

    .line 1310
    .local p0, "this":Lccsancom/google/common/util/concurrent/Futures$MappingCheckedFuture;, "Lccsancom/google/common/util/concurrent/Futures$MappingCheckedFuture<TV;TX;>;"
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/Futures$MappingCheckedFuture;->mapper:Lccsancom/google/common/base/Function;

    invoke-interface {v0, p1}, Lccsancom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    return-object v0
.end method
