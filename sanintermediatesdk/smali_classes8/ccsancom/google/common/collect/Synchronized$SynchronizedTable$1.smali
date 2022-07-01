.class Lccsancom/google/common/collect/Synchronized$SynchronizedTable$1;
.super Ljava/lang/Object;
.source "Synchronized.java"

# interfaces
.implements Lccsancom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/collect/Synchronized$SynchronizedTable;->rowMap()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsancom/google/common/base/Function<",
        "Ljava/util/Map<",
        "TC;TV;>;",
        "Ljava/util/Map<",
        "TC;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/common/collect/Synchronized$SynchronizedTable;


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/Synchronized$SynchronizedTable;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/common/collect/Synchronized$SynchronizedTable;

    .line 1979
    .local p0, "this":Lccsancom/google/common/collect/Synchronized$SynchronizedTable$1;, "Lccsancom/google/common/collect/Synchronized$SynchronizedTable$1;"
    iput-object p1, p0, Lccsancom/google/common/collect/Synchronized$SynchronizedTable$1;->this$0:Lccsancom/google/common/collect/Synchronized$SynchronizedTable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1979
    .local p0, "this":Lccsancom/google/common/collect/Synchronized$SynchronizedTable$1;, "Lccsancom/google/common/collect/Synchronized$SynchronizedTable$1;"
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/Synchronized$SynchronizedTable$1;->apply(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TC;TV;>;)",
            "Ljava/util/Map<",
            "TC;TV;>;"
        }
    .end annotation

    .line 1982
    .local p0, "this":Lccsancom/google/common/collect/Synchronized$SynchronizedTable$1;, "Lccsancom/google/common/collect/Synchronized$SynchronizedTable$1;"
    .local p1, "t":Ljava/util/Map;, "Ljava/util/Map<TC;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Synchronized$SynchronizedTable$1;->this$0:Lccsancom/google/common/collect/Synchronized$SynchronizedTable;

    iget-object v0, v0, Lccsancom/google/common/collect/Synchronized$SynchronizedTable;->mutex:Ljava/lang/Object;

    invoke-static {p1, v0}, Lccsancom/google/common/collect/Synchronized;->map(Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
