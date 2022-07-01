.class Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState$1;
.super Ljava/lang/Object;
.source "ServiceManager.java"

# interfaces
.implements Lccsancom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->startupTimes()Lccsancom/google/common/collect/ImmutableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsancom/google/common/base/Function<",
        "Ljava/util/Map$Entry<",
        "Lccsancom/google/common/util/concurrent/Service;",
        "Ljava/lang/Long;",
        ">;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;


# direct methods
.method constructor <init>(Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    .line 630
    iput-object p1, p0, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState$1;->this$0:Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/util/Map$Entry;)Ljava/lang/Long;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Lccsancom/google/common/util/concurrent/Service;",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Long;"
        }
    .end annotation

    .line 633
    .local p1, "input":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lccsancom/google/common/util/concurrent/Service;Ljava/lang/Long;>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 630
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState$1;->apply(Ljava/util/Map$Entry;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
