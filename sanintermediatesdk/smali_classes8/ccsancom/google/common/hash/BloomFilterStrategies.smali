.class abstract enum Lccsancom/google/common/hash/BloomFilterStrategies;
.super Ljava/lang/Enum;
.source "BloomFilterStrategies.java"

# interfaces
.implements Lccsancom/google/common/hash/BloomFilter$Strategy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsancom/google/common/hash/BloomFilterStrategies;",
        ">;",
        "Lccsancom/google/common/hash/BloomFilter$Strategy;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lccsancom/google/common/hash/BloomFilterStrategies;

.field public static final enum MURMUR128_MITZ_32:Lccsancom/google/common/hash/BloomFilterStrategies;

.field public static final enum MURMUR128_MITZ_64:Lccsancom/google/common/hash/BloomFilterStrategies;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 45
    new-instance v0, Lccsancom/google/common/hash/BloomFilterStrategies$1;

    const-string v1, "MURMUR128_MITZ_32"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lccsancom/google/common/hash/BloomFilterStrategies$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lccsancom/google/common/hash/BloomFilterStrategies;->MURMUR128_MITZ_32:Lccsancom/google/common/hash/BloomFilterStrategies;

    .line 93
    new-instance v1, Lccsancom/google/common/hash/BloomFilterStrategies$2;

    const-string v3, "MURMUR128_MITZ_64"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lccsancom/google/common/hash/BloomFilterStrategies$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lccsancom/google/common/hash/BloomFilterStrategies;->MURMUR128_MITZ_64:Lccsancom/google/common/hash/BloomFilterStrategies;

    .line 39
    const/4 v3, 0x2

    new-array v3, v3, [Lccsancom/google/common/hash/BloomFilterStrategies;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lccsancom/google/common/hash/BloomFilterStrategies;->$VALUES:[Lccsancom/google/common/hash/BloomFilterStrategies;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILccsancom/google/common/hash/BloomFilterStrategies$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lccsancom/google/common/hash/BloomFilterStrategies$1;

    .line 39
    invoke-direct {p0, p1, p2}, Lccsancom/google/common/hash/BloomFilterStrategies;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lccsancom/google/common/hash/BloomFilterStrategies;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 39
    const-class v0, Lccsancom/google/common/hash/BloomFilterStrategies;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/hash/BloomFilterStrategies;

    return-object v0
.end method

.method public static values()[Lccsancom/google/common/hash/BloomFilterStrategies;
    .locals 1

    .line 39
    sget-object v0, Lccsancom/google/common/hash/BloomFilterStrategies;->$VALUES:[Lccsancom/google/common/hash/BloomFilterStrategies;

    invoke-virtual {v0}, [Lccsancom/google/common/hash/BloomFilterStrategies;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsancom/google/common/hash/BloomFilterStrategies;

    return-object v0
.end method