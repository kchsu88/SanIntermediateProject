.class public abstract Lccsancom/google/common/collect/ComparisonChain;
.super Ljava/lang/Object;
.source "ComparisonChain.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/common/collect/ComparisonChain$InactiveComparisonChain;
    }
.end annotation


# static fields
.field private static final ACTIVE:Lccsancom/google/common/collect/ComparisonChain;

.field private static final GREATER:Lccsancom/google/common/collect/ComparisonChain;

.field private static final LESS:Lccsancom/google/common/collect/ComparisonChain;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 68
    new-instance v0, Lccsancom/google/common/collect/ComparisonChain$1;

    invoke-direct {v0}, Lccsancom/google/common/collect/ComparisonChain$1;-><init>()V

    sput-object v0, Lccsancom/google/common/collect/ComparisonChain;->ACTIVE:Lccsancom/google/common/collect/ComparisonChain;

    .line 122
    new-instance v0, Lccsancom/google/common/collect/ComparisonChain$InactiveComparisonChain;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lccsancom/google/common/collect/ComparisonChain$InactiveComparisonChain;-><init>(I)V

    sput-object v0, Lccsancom/google/common/collect/ComparisonChain;->LESS:Lccsancom/google/common/collect/ComparisonChain;

    .line 124
    new-instance v0, Lccsancom/google/common/collect/ComparisonChain$InactiveComparisonChain;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lccsancom/google/common/collect/ComparisonChain$InactiveComparisonChain;-><init>(I)V

    sput-object v0, Lccsancom/google/common/collect/ComparisonChain;->GREATER:Lccsancom/google/common/collect/ComparisonChain;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/google/common/collect/ComparisonChain$1;)V
    .locals 0
    .param p1, "x0"    # Lccsancom/google/common/collect/ComparisonChain$1;

    .line 60
    invoke-direct {p0}, Lccsancom/google/common/collect/ComparisonChain;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lccsancom/google/common/collect/ComparisonChain;
    .locals 1

    .line 60
    sget-object v0, Lccsancom/google/common/collect/ComparisonChain;->LESS:Lccsancom/google/common/collect/ComparisonChain;

    return-object v0
.end method

.method static synthetic access$200()Lccsancom/google/common/collect/ComparisonChain;
    .locals 1

    .line 60
    sget-object v0, Lccsancom/google/common/collect/ComparisonChain;->GREATER:Lccsancom/google/common/collect/ComparisonChain;

    return-object v0
.end method

.method static synthetic access$300()Lccsancom/google/common/collect/ComparisonChain;
    .locals 1

    .line 60
    sget-object v0, Lccsancom/google/common/collect/ComparisonChain;->ACTIVE:Lccsancom/google/common/collect/ComparisonChain;

    return-object v0
.end method

.method public static start()Lccsancom/google/common/collect/ComparisonChain;
    .locals 1

    .line 65
    sget-object v0, Lccsancom/google/common/collect/ComparisonChain;->ACTIVE:Lccsancom/google/common/collect/ComparisonChain;

    return-object v0
.end method


# virtual methods
.method public abstract compare(DD)Lccsancom/google/common/collect/ComparisonChain;
.end method

.method public abstract compare(FF)Lccsancom/google/common/collect/ComparisonChain;
.end method

.method public abstract compare(II)Lccsancom/google/common/collect/ComparisonChain;
.end method

.method public abstract compare(JJ)Lccsancom/google/common/collect/ComparisonChain;
.end method

.method public final compare(Ljava/lang/Boolean;Ljava/lang/Boolean;)Lccsancom/google/common/collect/ComparisonChain;
    .locals 2
    .param p1, "left"    # Ljava/lang/Boolean;
    .param p2, "right"    # Ljava/lang/Boolean;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 226
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lccsancom/google/common/collect/ComparisonChain;->compareFalseFirst(ZZ)Lccsancom/google/common/collect/ComparisonChain;

    move-result-object v0

    return-object v0
.end method

.method public abstract compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lccsancom/google/common/collect/ComparisonChain;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Comparable<",
            "*>;",
            "Ljava/lang/Comparable<",
            "*>;)",
            "Lccsancom/google/common/collect/ComparisonChain;"
        }
    .end annotation
.end method

.method public abstract compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lccsancom/google/common/collect/ComparisonChain;
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;",
            "Ljava/util/Comparator<",
            "TT;>;)",
            "Lccsancom/google/common/collect/ComparisonChain;"
        }
    .end annotation
.end method

.method public abstract compareFalseFirst(ZZ)Lccsancom/google/common/collect/ComparisonChain;
.end method

.method public abstract compareTrueFirst(ZZ)Lccsancom/google/common/collect/ComparisonChain;
.end method

.method public abstract result()I
.end method
