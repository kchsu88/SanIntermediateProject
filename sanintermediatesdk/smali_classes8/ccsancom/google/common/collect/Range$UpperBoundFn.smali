.class Lccsancom/google/common/collect/Range$UpperBoundFn;
.super Ljava/lang/Object;
.source "Range.java"

# interfaces
.implements Lccsancom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/Range;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UpperBoundFn"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsancom/google/common/base/Function<",
        "Lccsancom/google/common/collect/Range;",
        "Lccsancom/google/common/collect/Cut;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lccsancom/google/common/collect/Range$UpperBoundFn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 132
    new-instance v0, Lccsancom/google/common/collect/Range$UpperBoundFn;

    invoke-direct {v0}, Lccsancom/google/common/collect/Range$UpperBoundFn;-><init>()V

    sput-object v0, Lccsancom/google/common/collect/Range$UpperBoundFn;->INSTANCE:Lccsancom/google/common/collect/Range$UpperBoundFn;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lccsancom/google/common/collect/Range;)Lccsancom/google/common/collect/Cut;
    .locals 1
    .param p1, "range"    # Lccsancom/google/common/collect/Range;

    .line 136
    iget-object v0, p1, Lccsancom/google/common/collect/Range;->upperBound:Lccsancom/google/common/collect/Cut;

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 131
    check-cast p1, Lccsancom/google/common/collect/Range;

    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/Range$UpperBoundFn;->apply(Lccsancom/google/common/collect/Range;)Lccsancom/google/common/collect/Cut;

    move-result-object p1

    return-object p1
.end method
