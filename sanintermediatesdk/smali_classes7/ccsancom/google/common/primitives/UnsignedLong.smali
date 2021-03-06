.class public final Lccsancom/google/common/primitives/UnsignedLong;
.super Ljava/lang/Number;
.source "UnsignedLong.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable<",
        "Lccsancom/google/common/primitives/UnsignedLong;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final MAX_VALUE:Lccsancom/google/common/primitives/UnsignedLong;

.field public static final ONE:Lccsancom/google/common/primitives/UnsignedLong;

.field private static final UNSIGNED_MASK:J = 0x7fffffffffffffffL

.field public static final ZERO:Lccsancom/google/common/primitives/UnsignedLong;


# instance fields
.field private final value:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 45
    new-instance v0, Lccsancom/google/common/primitives/UnsignedLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lccsancom/google/common/primitives/UnsignedLong;-><init>(J)V

    sput-object v0, Lccsancom/google/common/primitives/UnsignedLong;->ZERO:Lccsancom/google/common/primitives/UnsignedLong;

    .line 46
    new-instance v0, Lccsancom/google/common/primitives/UnsignedLong;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Lccsancom/google/common/primitives/UnsignedLong;-><init>(J)V

    sput-object v0, Lccsancom/google/common/primitives/UnsignedLong;->ONE:Lccsancom/google/common/primitives/UnsignedLong;

    .line 47
    new-instance v0, Lccsancom/google/common/primitives/UnsignedLong;

    const-wide/16 v1, -0x1

    invoke-direct {v0, v1, v2}, Lccsancom/google/common/primitives/UnsignedLong;-><init>(J)V

    sput-object v0, Lccsancom/google/common/primitives/UnsignedLong;->MAX_VALUE:Lccsancom/google/common/primitives/UnsignedLong;

    return-void
.end method

.method private constructor <init>(J)V
    .locals 0
    .param p1, "value"    # J

    .line 51
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 52
    iput-wide p1, p0, Lccsancom/google/common/primitives/UnsignedLong;->value:J

    .line 53
    return-void
.end method

.method public static fromLongBits(J)Lccsancom/google/common/primitives/UnsignedLong;
    .locals 1
    .param p0, "bits"    # J

    .line 70
    new-instance v0, Lccsancom/google/common/primitives/UnsignedLong;

    invoke-direct {v0, p0, p1}, Lccsancom/google/common/primitives/UnsignedLong;-><init>(J)V

    return-object v0
.end method

.method public static valueOf(J)Lccsancom/google/common/primitives/UnsignedLong;
    .locals 3
    .param p0, "value"    # J

    .line 81
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-ltz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "value (%s) is outside the range for an unsigned long value"

    invoke-static {v0, v1, p0, p1}, Lccsancom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 82
    invoke-static {p0, p1}, Lccsancom/google/common/primitives/UnsignedLong;->fromLongBits(J)Lccsancom/google/common/primitives/UnsignedLong;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lccsancom/google/common/primitives/UnsignedLong;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .line 110
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lccsancom/google/common/primitives/UnsignedLong;->valueOf(Ljava/lang/String;I)Lccsancom/google/common/primitives/UnsignedLong;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;I)Lccsancom/google/common/primitives/UnsignedLong;
    .locals 2
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "radix"    # I

    .line 123
    invoke-static {p0, p1}, Lccsancom/google/common/primitives/UnsignedLongs;->parseUnsignedLong(Ljava/lang/String;I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lccsancom/google/common/primitives/UnsignedLong;->fromLongBits(J)Lccsancom/google/common/primitives/UnsignedLong;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/math/BigInteger;)Lccsancom/google/common/primitives/UnsignedLong;
    .locals 2
    .param p0, "value"    # Ljava/math/BigInteger;

    .line 93
    invoke-static {p0}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    nop

    .line 95
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x40

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 94
    :goto_0
    const-string v1, "value (%s) is outside the range for an unsigned long value"

    invoke-static {v0, v1, p0}, Lccsancom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 98
    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lccsancom/google/common/primitives/UnsignedLong;->fromLongBits(J)Lccsancom/google/common/primitives/UnsignedLong;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bigIntegerValue()Ljava/math/BigInteger;
    .locals 6

    .line 222
    iget-wide v0, p0, Lccsancom/google/common/primitives/UnsignedLong;->value:J

    const-wide v2, 0x7fffffffffffffffL

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 223
    .local v0, "bigInt":Ljava/math/BigInteger;
    iget-wide v1, p0, Lccsancom/google/common/primitives/UnsignedLong;->value:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    .line 224
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v0

    .line 226
    :cond_0
    return-object v0
.end method

.method public compareTo(Lccsancom/google/common/primitives/UnsignedLong;)I
    .locals 4
    .param p1, "o"    # Lccsancom/google/common/primitives/UnsignedLong;

    .line 231
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    iget-wide v0, p0, Lccsancom/google/common/primitives/UnsignedLong;->value:J

    iget-wide v2, p1, Lccsancom/google/common/primitives/UnsignedLong;->value:J

    invoke-static {v0, v1, v2, v3}, Lccsancom/google/common/primitives/UnsignedLongs;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 40
    check-cast p1, Lccsancom/google/common/primitives/UnsignedLong;

    invoke-virtual {p0, p1}, Lccsancom/google/common/primitives/UnsignedLong;->compareTo(Lccsancom/google/common/primitives/UnsignedLong;)I

    move-result p1

    return p1
.end method

.method public dividedBy(Lccsancom/google/common/primitives/UnsignedLong;)Lccsancom/google/common/primitives/UnsignedLong;
    .locals 4
    .param p1, "val"    # Lccsancom/google/common/primitives/UnsignedLong;

    .line 162
    iget-wide v0, p0, Lccsancom/google/common/primitives/UnsignedLong;->value:J

    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/google/common/primitives/UnsignedLong;

    iget-wide v2, v2, Lccsancom/google/common/primitives/UnsignedLong;->value:J

    invoke-static {v0, v1, v2, v3}, Lccsancom/google/common/primitives/UnsignedLongs;->divide(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Lccsancom/google/common/primitives/UnsignedLong;->fromLongBits(J)Lccsancom/google/common/primitives/UnsignedLong;

    move-result-object v0

    return-object v0
.end method

.method public doubleValue()D
    .locals 7

    .line 213
    iget-wide v0, p0, Lccsancom/google/common/primitives/UnsignedLong;->value:J

    const-wide v2, 0x7fffffffffffffffL

    and-long/2addr v2, v0

    long-to-double v2, v2

    .line 214
    .local v2, "dValue":D
    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-gez v6, :cond_0

    .line 215
    const-wide/high16 v0, 0x43e0000000000000L    # 9.223372036854776E18

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v2, v0

    .line 217
    :cond_0
    return-wide v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 242
    instance-of v0, p1, Lccsancom/google/common/primitives/UnsignedLong;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 243
    move-object v0, p1

    check-cast v0, Lccsancom/google/common/primitives/UnsignedLong;

    .line 244
    .local v0, "other":Lccsancom/google/common/primitives/UnsignedLong;
    iget-wide v2, p0, Lccsancom/google/common/primitives/UnsignedLong;->value:J

    iget-wide v4, v0, Lccsancom/google/common/primitives/UnsignedLong;->value:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 246
    .end local v0    # "other":Lccsancom/google/common/primitives/UnsignedLong;
    :cond_1
    return v1
.end method

.method public floatValue()F
    .locals 6

    .line 199
    iget-wide v0, p0, Lccsancom/google/common/primitives/UnsignedLong;->value:J

    const-wide v2, 0x7fffffffffffffffL

    and-long/2addr v2, v0

    long-to-float v2, v2

    .line 200
    .local v2, "fValue":F
    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-gez v5, :cond_0

    .line 201
    const/high16 v0, 0x5f000000

    add-float/2addr v2, v0

    .line 203
    :cond_0
    return v2
.end method

.method public hashCode()I
    .locals 2

    .line 237
    iget-wide v0, p0, Lccsancom/google/common/primitives/UnsignedLong;->value:J

    invoke-static {v0, v1}, Lccsancom/google/common/primitives/Longs;->hashCode(J)I

    move-result v0

    return v0
.end method

.method public intValue()I
    .locals 2

    .line 177
    iget-wide v0, p0, Lccsancom/google/common/primitives/UnsignedLong;->value:J

    long-to-int v1, v0

    return v1
.end method

.method public longValue()J
    .locals 2

    .line 189
    iget-wide v0, p0, Lccsancom/google/common/primitives/UnsignedLong;->value:J

    return-wide v0
.end method

.method public minus(Lccsancom/google/common/primitives/UnsignedLong;)Lccsancom/google/common/primitives/UnsignedLong;
    .locals 4
    .param p1, "val"    # Lccsancom/google/common/primitives/UnsignedLong;

    .line 143
    iget-wide v0, p0, Lccsancom/google/common/primitives/UnsignedLong;->value:J

    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/google/common/primitives/UnsignedLong;

    iget-wide v2, v2, Lccsancom/google/common/primitives/UnsignedLong;->value:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Lccsancom/google/common/primitives/UnsignedLong;->fromLongBits(J)Lccsancom/google/common/primitives/UnsignedLong;

    move-result-object v0

    return-object v0
.end method

.method public mod(Lccsancom/google/common/primitives/UnsignedLong;)Lccsancom/google/common/primitives/UnsignedLong;
    .locals 4
    .param p1, "val"    # Lccsancom/google/common/primitives/UnsignedLong;

    .line 171
    iget-wide v0, p0, Lccsancom/google/common/primitives/UnsignedLong;->value:J

    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/google/common/primitives/UnsignedLong;

    iget-wide v2, v2, Lccsancom/google/common/primitives/UnsignedLong;->value:J

    invoke-static {v0, v1, v2, v3}, Lccsancom/google/common/primitives/UnsignedLongs;->remainder(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Lccsancom/google/common/primitives/UnsignedLong;->fromLongBits(J)Lccsancom/google/common/primitives/UnsignedLong;

    move-result-object v0

    return-object v0
.end method

.method public plus(Lccsancom/google/common/primitives/UnsignedLong;)Lccsancom/google/common/primitives/UnsignedLong;
    .locals 4
    .param p1, "val"    # Lccsancom/google/common/primitives/UnsignedLong;

    .line 133
    iget-wide v0, p0, Lccsancom/google/common/primitives/UnsignedLong;->value:J

    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/google/common/primitives/UnsignedLong;

    iget-wide v2, v2, Lccsancom/google/common/primitives/UnsignedLong;->value:J

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lccsancom/google/common/primitives/UnsignedLong;->fromLongBits(J)Lccsancom/google/common/primitives/UnsignedLong;

    move-result-object v0

    return-object v0
.end method

.method public times(Lccsancom/google/common/primitives/UnsignedLong;)Lccsancom/google/common/primitives/UnsignedLong;
    .locals 4
    .param p1, "val"    # Lccsancom/google/common/primitives/UnsignedLong;

    .line 153
    iget-wide v0, p0, Lccsancom/google/common/primitives/UnsignedLong;->value:J

    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/google/common/primitives/UnsignedLong;

    iget-wide v2, v2, Lccsancom/google/common/primitives/UnsignedLong;->value:J

    mul-long v0, v0, v2

    invoke-static {v0, v1}, Lccsancom/google/common/primitives/UnsignedLong;->fromLongBits(J)Lccsancom/google/common/primitives/UnsignedLong;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 252
    iget-wide v0, p0, Lccsancom/google/common/primitives/UnsignedLong;->value:J

    invoke-static {v0, v1}, Lccsancom/google/common/primitives/UnsignedLongs;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 2
    .param p1, "radix"    # I

    .line 261
    iget-wide v0, p0, Lccsancom/google/common/primitives/UnsignedLong;->value:J

    invoke-static {v0, v1, p1}, Lccsancom/google/common/primitives/UnsignedLongs;->toString(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
