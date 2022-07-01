.class abstract enum Lccsancom/google/common/cache/LocalCache$Strength;
.super Ljava/lang/Enum;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4408
    name = "Strength"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsancom/google/common/cache/LocalCache$Strength;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lccsancom/google/common/cache/LocalCache$Strength;

.field public static final enum SOFT:Lccsancom/google/common/cache/LocalCache$Strength;

.field public static final enum STRONG:Lccsancom/google/common/cache/LocalCache$Strength;

.field public static final enum WEAK:Lccsancom/google/common/cache/LocalCache$Strength;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 378
    new-instance v0, Lccsancom/google/common/cache/LocalCache$Strength$1;

    const-string v1, "STRONG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lccsancom/google/common/cache/LocalCache$Strength$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lccsancom/google/common/cache/LocalCache$Strength;->STRONG:Lccsancom/google/common/cache/LocalCache$Strength;

    .line 392
    new-instance v1, Lccsancom/google/common/cache/LocalCache$Strength$2;

    const-string v3, "SOFT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lccsancom/google/common/cache/LocalCache$Strength$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lccsancom/google/common/cache/LocalCache$Strength;->SOFT:Lccsancom/google/common/cache/LocalCache$Strength;

    .line 407
    new-instance v3, Lccsancom/google/common/cache/LocalCache$Strength$3;

    const-string v5, "WEAK"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lccsancom/google/common/cache/LocalCache$Strength$3;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lccsancom/google/common/cache/LocalCache$Strength;->WEAK:Lccsancom/google/common/cache/LocalCache$Strength;

    .line 372
    const/4 v5, 0x3

    new-array v5, v5, [Lccsancom/google/common/cache/LocalCache$Strength;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lccsancom/google/common/cache/LocalCache$Strength;->$VALUES:[Lccsancom/google/common/cache/LocalCache$Strength;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 372
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILccsancom/google/common/cache/LocalCache$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lccsancom/google/common/cache/LocalCache$1;

    .line 372
    invoke-direct {p0, p1, p2}, Lccsancom/google/common/cache/LocalCache$Strength;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lccsancom/google/common/cache/LocalCache$Strength;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 372
    const-class v0, Lccsancom/google/common/cache/LocalCache$Strength;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/cache/LocalCache$Strength;

    return-object v0
.end method

.method public static values()[Lccsancom/google/common/cache/LocalCache$Strength;
    .locals 1

    .line 372
    sget-object v0, Lccsancom/google/common/cache/LocalCache$Strength;->$VALUES:[Lccsancom/google/common/cache/LocalCache$Strength;

    invoke-virtual {v0}, [Lccsancom/google/common/cache/LocalCache$Strength;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsancom/google/common/cache/LocalCache$Strength;

    return-object v0
.end method


# virtual methods
.method abstract defaultEquivalence()Lccsancom/google/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method abstract referenceValue(Lccsancom/google/common/cache/LocalCache$Segment;Lccsancom/google/common/cache/ReferenceEntry;Ljava/lang/Object;I)Lccsancom/google/common/cache/LocalCache$ValueReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/cache/LocalCache$Segment<",
            "TK;TV;>;",
            "Lccsancom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;TV;I)",
            "Lccsancom/google/common/cache/LocalCache$ValueReference<",
            "TK;TV;>;"
        }
    .end annotation
.end method
