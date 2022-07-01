.class abstract enum Lccsancom/google/common/hash/Hashing$ChecksumType;
.super Ljava/lang/Enum;
.source "Hashing.java"

# interfaces
.implements Lccsancom/google/common/hash/ImmutableSupplier;


# annotations
.annotation runtime Lccsancom/google/errorprone/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/hash/Hashing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4408
    name = "ChecksumType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsancom/google/common/hash/Hashing$ChecksumType;",
        ">;",
        "Lccsancom/google/common/hash/ImmutableSupplier<",
        "Ljava/util/zip/Checksum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lccsancom/google/common/hash/Hashing$ChecksumType;

.field public static final enum ADLER_32:Lccsancom/google/common/hash/Hashing$ChecksumType;

.field public static final enum CRC_32:Lccsancom/google/common/hash/Hashing$ChecksumType;


# instance fields
.field public final hashFunction:Lccsancom/google/common/hash/HashFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 391
    new-instance v0, Lccsancom/google/common/hash/Hashing$ChecksumType$1;

    const-string v1, "CRC_32"

    const/4 v2, 0x0

    const-string v3, "Hashing.crc32()"

    invoke-direct {v0, v1, v2, v3}, Lccsancom/google/common/hash/Hashing$ChecksumType$1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lccsancom/google/common/hash/Hashing$ChecksumType;->CRC_32:Lccsancom/google/common/hash/Hashing$ChecksumType;

    .line 397
    new-instance v1, Lccsancom/google/common/hash/Hashing$ChecksumType$2;

    const-string v3, "ADLER_32"

    const/4 v4, 0x1

    const-string v5, "Hashing.adler32()"

    invoke-direct {v1, v3, v4, v5}, Lccsancom/google/common/hash/Hashing$ChecksumType$2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lccsancom/google/common/hash/Hashing$ChecksumType;->ADLER_32:Lccsancom/google/common/hash/Hashing$ChecksumType;

    .line 389
    const/4 v3, 0x2

    new-array v3, v3, [Lccsancom/google/common/hash/Hashing$ChecksumType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lccsancom/google/common/hash/Hashing$ChecksumType;->$VALUES:[Lccsancom/google/common/hash/Hashing$ChecksumType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "toString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 406
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 407
    new-instance p1, Lccsancom/google/common/hash/ChecksumHashFunction;

    const/16 p2, 0x20

    invoke-direct {p1, p0, p2, p3}, Lccsancom/google/common/hash/ChecksumHashFunction;-><init>(Lccsancom/google/common/hash/ImmutableSupplier;ILjava/lang/String;)V

    iput-object p1, p0, Lccsancom/google/common/hash/Hashing$ChecksumType;->hashFunction:Lccsancom/google/common/hash/HashFunction;

    .line 408
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lccsancom/google/common/hash/Hashing$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Lccsancom/google/common/hash/Hashing$1;

    .line 390
    invoke-direct {p0, p1, p2, p3}, Lccsancom/google/common/hash/Hashing$ChecksumType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lccsancom/google/common/hash/Hashing$ChecksumType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 389
    const-class v0, Lccsancom/google/common/hash/Hashing$ChecksumType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/hash/Hashing$ChecksumType;

    return-object v0
.end method

.method public static values()[Lccsancom/google/common/hash/Hashing$ChecksumType;
    .locals 1

    .line 389
    sget-object v0, Lccsancom/google/common/hash/Hashing$ChecksumType;->$VALUES:[Lccsancom/google/common/hash/Hashing$ChecksumType;

    invoke-virtual {v0}, [Lccsancom/google/common/hash/Hashing$ChecksumType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsancom/google/common/hash/Hashing$ChecksumType;

    return-object v0
.end method
