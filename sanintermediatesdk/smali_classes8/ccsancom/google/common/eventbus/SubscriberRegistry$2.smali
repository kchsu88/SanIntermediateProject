.class final Lccsancom/google/common/eventbus/SubscriberRegistry$2;
.super Lccsancom/google/common/cache/CacheLoader;
.source "SubscriberRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/eventbus/SubscriberRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/cache/CacheLoader<",
        "Ljava/lang/Class<",
        "*>;",
        "Lccsancom/google/common/collect/ImmutableSet<",
        "Ljava/lang/Class<",
        "*>;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 206
    invoke-direct {p0}, Lccsancom/google/common/cache/CacheLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public load(Ljava/lang/Class;)Lccsancom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lccsancom/google/common/collect/ImmutableSet<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 211
    .local p1, "concreteClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 212
    invoke-static {p1}, Lccsancom/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lccsancom/google/common/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/common/reflect/TypeToken;->getTypes()Lccsancom/google/common/reflect/TypeToken$TypeSet;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/common/reflect/TypeToken$TypeSet;->rawTypes()Ljava/util/Set;

    move-result-object v0

    .line 211
    invoke-static {v0}, Lccsancom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lccsancom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic load(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 206
    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lccsancom/google/common/eventbus/SubscriberRegistry$2;->load(Ljava/lang/Class;)Lccsancom/google/common/collect/ImmutableSet;

    move-result-object p1

    return-object p1
.end method
