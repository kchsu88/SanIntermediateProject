.class final Lccsancom/google/common/collect/MultimapBuilder$1;
.super Lccsancom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;
.source "MultimapBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/collect/MultimapBuilder;->hashKeys(I)Lccsancom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$expectedKeys:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 87
    iput p1, p0, Lccsancom/google/common/collect/MultimapBuilder$1;->val$expectedKeys:I

    invoke-direct {p0}, Lccsancom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;-><init>()V

    return-void
.end method


# virtual methods
.method createMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 90
    iget v0, p0, Lccsancom/google/common/collect/MultimapBuilder$1;->val$expectedKeys:I

    invoke-static {v0}, Lccsancom/google/common/collect/Platform;->newHashMapWithExpectedSize(I)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
