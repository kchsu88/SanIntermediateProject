.class final Lccsancom/google/common/collect/Multisets$DecreasingCount;
.super Ljava/lang/Object;
.source "Multisets.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/Multisets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DecreasingCount"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lccsancom/google/common/collect/Multiset$Entry<",
        "*>;>;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lccsancom/google/common/collect/Multisets$DecreasingCount;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1123
    new-instance v0, Lccsancom/google/common/collect/Multisets$DecreasingCount;

    invoke-direct {v0}, Lccsancom/google/common/collect/Multisets$DecreasingCount;-><init>()V

    sput-object v0, Lccsancom/google/common/collect/Multisets$DecreasingCount;->INSTANCE:Lccsancom/google/common/collect/Multisets$DecreasingCount;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lccsancom/google/common/collect/Multiset$Entry;Lccsancom/google/common/collect/Multiset$Entry;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/Multiset$Entry<",
            "*>;",
            "Lccsancom/google/common/collect/Multiset$Entry<",
            "*>;)I"
        }
    .end annotation

    .line 1127
    .local p1, "entry1":Lccsancom/google/common/collect/Multiset$Entry;, "Lccsancom/google/common/collect/Multiset$Entry<*>;"
    .local p2, "entry2":Lccsancom/google/common/collect/Multiset$Entry;, "Lccsancom/google/common/collect/Multiset$Entry<*>;"
    invoke-interface {p2}, Lccsancom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v0

    invoke-interface {p1}, Lccsancom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1122
    check-cast p1, Lccsancom/google/common/collect/Multiset$Entry;

    check-cast p2, Lccsancom/google/common/collect/Multiset$Entry;

    invoke-virtual {p0, p1, p2}, Lccsancom/google/common/collect/Multisets$DecreasingCount;->compare(Lccsancom/google/common/collect/Multiset$Entry;Lccsancom/google/common/collect/Multiset$Entry;)I

    move-result p1

    return p1
.end method
