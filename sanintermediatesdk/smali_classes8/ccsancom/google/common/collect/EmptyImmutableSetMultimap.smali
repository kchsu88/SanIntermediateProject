.class Lccsancom/google/common/collect/EmptyImmutableSetMultimap;
.super Lccsancom/google/common/collect/ImmutableSetMultimap;
.source "EmptyImmutableSetMultimap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/collect/ImmutableSetMultimap<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lccsancom/google/common/collect/EmptyImmutableSetMultimap;

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lccsancom/google/common/collect/EmptyImmutableSetMultimap;

    invoke-direct {v0}, Lccsancom/google/common/collect/EmptyImmutableSetMultimap;-><init>()V

    sput-object v0, Lccsancom/google/common/collect/EmptyImmutableSetMultimap;->INSTANCE:Lccsancom/google/common/collect/EmptyImmutableSetMultimap;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 31
    invoke-static {}, Lccsancom/google/common/collect/ImmutableMap;->of()Lccsancom/google/common/collect/ImmutableMap;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lccsancom/google/common/collect/ImmutableSetMultimap;-><init>(Lccsancom/google/common/collect/ImmutableMap;ILjava/util/Comparator;)V

    .line 32
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 35
    sget-object v0, Lccsancom/google/common/collect/EmptyImmutableSetMultimap;->INSTANCE:Lccsancom/google/common/collect/EmptyImmutableSetMultimap;

    return-object v0
.end method
