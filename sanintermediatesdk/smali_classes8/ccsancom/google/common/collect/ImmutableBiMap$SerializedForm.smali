.class Lccsancom/google/common/collect/ImmutableBiMap$SerializedForm;
.super Lccsancom/google/common/collect/ImmutableMap$SerializedForm;
.source "ImmutableBiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/ImmutableBiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerializedForm"
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/ImmutableBiMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/ImmutableBiMap<",
            "**>;)V"
        }
    .end annotation

    .line 356
    .local p1, "bimap":Lccsancom/google/common/collect/ImmutableBiMap;, "Lccsancom/google/common/collect/ImmutableBiMap<**>;"
    invoke-direct {p0, p1}, Lccsancom/google/common/collect/ImmutableMap$SerializedForm;-><init>(Lccsancom/google/common/collect/ImmutableMap;)V

    .line 357
    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .locals 2

    .line 361
    new-instance v0, Lccsancom/google/common/collect/ImmutableBiMap$Builder;

    invoke-direct {v0}, Lccsancom/google/common/collect/ImmutableBiMap$Builder;-><init>()V

    .line 362
    .local v0, "builder":Lccsancom/google/common/collect/ImmutableBiMap$Builder;, "Lccsancom/google/common/collect/ImmutableBiMap$Builder<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-virtual {p0, v0}, Lccsancom/google/common/collect/ImmutableBiMap$SerializedForm;->createMap(Lccsancom/google/common/collect/ImmutableMap$Builder;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
