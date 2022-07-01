.class Lccsancom/google/common/collect/Range$LowerBoundFn;
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
    name = "LowerBoundFn"
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
.field static final INSTANCE:Lccsancom/google/common/collect/Range$LowerBoundFn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 123
    new-instance v0, Lccsancom/google/common/collect/Range$LowerBoundFn;

    invoke-direct {v0}, Lccsancom/google/common/collect/Range$LowerBoundFn;-><init>()V

    sput-object v0, Lccsancom/google/common/collect/Range$LowerBoundFn;->INSTANCE:Lccsancom/google/common/collect/Range$LowerBoundFn;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lccsancom/google/common/collect/Range;)Lccsancom/google/common/collect/Cut;
    .locals 1
    .param p1, "range"    # Lccsancom/google/common/collect/Range;

    .line 127
    iget-object v0, p1, Lccsancom/google/common/collect/Range;->lowerBound:Lccsancom/google/common/collect/Cut;

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 122
    check-cast p1, Lccsancom/google/common/collect/Range;

    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/Range$LowerBoundFn;->apply(Lccsancom/google/common/collect/Range;)Lccsancom/google/common/collect/Cut;

    move-result-object p1

    return-object p1
.end method
