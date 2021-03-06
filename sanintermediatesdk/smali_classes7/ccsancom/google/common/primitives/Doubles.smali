.class public final Lccsancom/google/common/primitives/Doubles;
.super Ljava/lang/Object;
.source "Doubles.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/common/primitives/Doubles$DoubleArrayAsList;,
        Lccsancom/google/common/primitives/Doubles$LexicographicalComparator;,
        Lccsancom/google/common/primitives/Doubles$DoubleConverter;
    }
.end annotation


# static fields
.field public static final BYTES:I = 0x8

.field static final FLOATING_POINT_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 650
    invoke-static {}, Lccsancom/google/common/primitives/Doubles;->fpPattern()Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lccsancom/google/common/primitives/Doubles;->FLOATING_POINT_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000([DDII)I
    .locals 1
    .param p0, "x0"    # [D
    .param p1, "x1"    # D
    .param p3, "x2"    # I
    .param p4, "x3"    # I

    .line 49
    invoke-static {p0, p1, p2, p3, p4}, Lccsancom/google/common/primitives/Doubles;->indexOf([DDII)I

    move-result v0

    return v0
.end method

.method static synthetic access$100([DDII)I
    .locals 1
    .param p0, "x0"    # [D
    .param p1, "x1"    # D
    .param p3, "x2"    # I
    .param p4, "x3"    # I

    .line 49
    invoke-static {p0, p1, p2, p3, p4}, Lccsancom/google/common/primitives/Doubles;->lastIndexOf([DDII)I

    move-result v0

    return v0
.end method

.method public static varargs asList([D)Ljava/util/List;
    .locals 1
    .param p0, "backingArray"    # [D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([D)",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 506
    array-length v0, p0

    if-nez v0, :cond_0

    .line 507
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 509
    :cond_0
    new-instance v0, Lccsancom/google/common/primitives/Doubles$DoubleArrayAsList;

    invoke-direct {v0, p0}, Lccsancom/google/common/primitives/Doubles$DoubleArrayAsList;-><init>([D)V

    return-object v0
.end method

.method public static compare(DD)I
    .locals 1
    .param p0, "a"    # D
    .param p2, "b"    # D

    .line 92
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    return v0
.end method

.method public static varargs concat([[D)[D
    .locals 8
    .param p0, "arrays"    # [[D

    .line 265
    const/4 v0, 0x0

    .line 266
    .local v0, "length":I
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p0, v3

    .line 267
    .local v4, "array":[D
    array-length v5, v4

    add-int/2addr v0, v5

    .line 266
    .end local v4    # "array":[D
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 269
    :cond_0
    new-array v1, v0, [D

    .line 270
    .local v1, "result":[D
    const/4 v3, 0x0

    .line 271
    .local v3, "pos":I
    array-length v4, p0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_1

    aget-object v6, p0, v5

    .line 272
    .local v6, "array":[D
    array-length v7, v6

    invoke-static {v6, v2, v1, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 273
    array-length v7, v6

    add-int/2addr v3, v7

    .line 271
    .end local v6    # "array":[D
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 275
    :cond_1
    return-object v1
.end method

.method public static constrainToRange(DDD)D
    .locals 4
    .param p0, "value"    # D
    .param p2, "min"    # D
    .param p4, "max"    # D

    .line 252
    cmpg-double v0, p2, p4

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string v3, "min (%s) must be less than or equal to max (%s)"

    invoke-static {v0, v3, v1, v2}, Lccsancom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 253
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-static {v0, v1, p4, p5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static contains([DD)Z
    .locals 6
    .param p0, "array"    # [D
    .param p1, "target"    # D

    .line 116
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-wide v3, p0, v2

    .line 117
    .local v3, "value":D
    cmpl-double v5, v3, p1

    if-nez v5, :cond_0

    .line 118
    const/4 v0, 0x1

    return v0

    .line 116
    .end local v3    # "value":D
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 121
    :cond_1
    return v1
.end method

.method public static ensureCapacity([DII)[D
    .locals 4
    .param p0, "array"    # [D
    .param p1, "minLength"    # I
    .param p2, "padding"    # I

    .line 329
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "Invalid minLength: %s"

    invoke-static {v2, v3, p1}, Lccsancom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 330
    if-ltz p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v1, "Invalid padding: %s"

    invoke-static {v0, v1, p2}, Lccsancom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 331
    array-length v0, p0

    if-ge v0, p1, :cond_2

    add-int v0, p1, p2

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, p0

    :goto_2
    return-object v0
.end method

.method private static fpPattern()Ljava/util/regex/Pattern;
    .locals 7

    .line 661
    const-string v0, "(?:\\d+#(?:\\.\\d*#)?|\\.\\d+#)"

    .line 662
    .local v0, "decimal":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "(?:[eE][+-]?\\d+#)?[fFdD]?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 663
    .local v1, "completeDec":Ljava/lang/String;
    const-string v2, "(?:[0-9a-fA-F]+#(?:\\.[0-9a-fA-F]*#)?|\\.[0-9a-fA-F]+#)"

    .line 664
    .local v2, "hex":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0[xX]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "[pP][+-]?\\d+#[fFdD]?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 665
    .local v3, "completeHex":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[+-]?(?:NaN|Infinity|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 666
    .local v4, "fpPattern":Ljava/lang/String;
    nop

    .line 667
    const-string v5, "#"

    const-string v6, "+"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 671
    nop

    .line 673
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 671
    return-object v5
.end method

.method public static hashCode(D)I
    .locals 1
    .param p0, "value"    # D

    .line 71
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->hashCode()I

    move-result v0

    return v0
.end method

.method public static indexOf([DD)I
    .locals 2
    .param p0, "array"    # [D
    .param p1, "target"    # D

    .line 134
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1, v0}, Lccsancom/google/common/primitives/Doubles;->indexOf([DDII)I

    move-result v0

    return v0
.end method

.method private static indexOf([DDII)I
    .locals 4
    .param p0, "array"    # [D
    .param p1, "target"    # D
    .param p3, "start"    # I
    .param p4, "end"    # I

    .line 139
    move v0, p3

    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_1

    .line 140
    aget-wide v1, p0, v0

    cmpl-double v3, v1, p1

    if-nez v3, :cond_0

    .line 141
    return v0

    .line 139
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public static indexOf([D[D)I
    .locals 7
    .param p0, "array"    # [D
    .param p1, "target"    # [D

    .line 160
    const-string v0, "array"

    invoke-static {p0, v0}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const-string v0, "target"

    invoke-static {p1, v0}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    array-length v0, p1

    if-nez v0, :cond_0

    .line 163
    const/4 v0, 0x0

    return v0

    .line 167
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    array-length v2, p1

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_3

    .line 168
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 169
    add-int v2, v0, v1

    aget-wide v2, p0, v2

    aget-wide v4, p1, v1

    cmpl-double v6, v2, v4

    if-eqz v6, :cond_1

    .line 170
    nop

    .line 167
    .end local v1    # "j":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    .restart local v1    # "j":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 173
    .end local v1    # "j":I
    :cond_2
    return v0

    .line 175
    .end local v0    # "i":I
    :cond_3
    const/4 v0, -0x1

    return v0
.end method

.method public static isFinite(D)Z
    .locals 3
    .param p0, "value"    # D

    .line 104
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpg-double v2, v0, p0

    if-gez v2, :cond_0

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpg-double v2, p0, v0

    if-gez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static varargs join(Ljava/lang/String;[D)Ljava/lang/String;
    .locals 4
    .param p0, "separator"    # Ljava/lang/String;
    .param p1, "array"    # [D

    .line 347
    invoke-static {p0}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    array-length v0, p1

    if-nez v0, :cond_0

    .line 349
    const-string v0, ""

    return-object v0

    .line 353
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p1

    mul-int/lit8 v1, v1, 0xc

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 354
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    aget-wide v1, p1, v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 355
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 356
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v2, p1, v1

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 355
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 358
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static lastIndexOf([DD)I
    .locals 2
    .param p0, "array"    # [D
    .param p1, "target"    # D

    .line 188
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1, v0}, Lccsancom/google/common/primitives/Doubles;->lastIndexOf([DDII)I

    move-result v0

    return v0
.end method

.method private static lastIndexOf([DDII)I
    .locals 4
    .param p0, "array"    # [D
    .param p1, "target"    # D
    .param p3, "start"    # I
    .param p4, "end"    # I

    .line 193
    add-int/lit8 v0, p4, -0x1

    .local v0, "i":I
    :goto_0
    if-lt v0, p3, :cond_1

    .line 194
    aget-wide v1, p0, v0

    cmpl-double v3, v1, p1

    if-nez v3, :cond_0

    .line 195
    return v0

    .line 193
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 198
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public static lexicographicalComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "[D>;"
        }
    .end annotation

    .line 375
    sget-object v0, Lccsancom/google/common/primitives/Doubles$LexicographicalComparator;->INSTANCE:Lccsancom/google/common/primitives/Doubles$LexicographicalComparator;

    return-object v0
.end method

.method public static varargs max([D)D
    .locals 5
    .param p0, "array"    # [D

    .line 229
    array-length v0, p0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lccsancom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 230
    aget-wide v0, p0, v1

    .line 231
    .local v0, "max":D
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_1
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 232
    aget-wide v3, p0, v2

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 231
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 234
    .end local v2    # "i":I
    :cond_1
    return-wide v0
.end method

.method public static varargs min([D)D
    .locals 5
    .param p0, "array"    # [D

    .line 211
    array-length v0, p0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lccsancom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 212
    aget-wide v0, p0, v1

    .line 213
    .local v0, "min":D
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_1
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 214
    aget-wide v3, p0, v2

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 213
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 216
    .end local v2    # "i":I
    :cond_1
    return-wide v0
.end method

.method public static reverse([D)V
    .locals 2
    .param p0, "array"    # [D

    .line 435
    invoke-static {p0}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lccsancom/google/common/primitives/Doubles;->reverse([DII)V

    .line 437
    return-void
.end method

.method public static reverse([DII)V
    .locals 6
    .param p0, "array"    # [D
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 450
    invoke-static {p0}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    array-length v0, p0

    invoke-static {p1, p2, v0}, Lccsancom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 452
    move v0, p1

    .local v0, "i":I
    add-int/lit8 v1, p2, -0x1

    .local v1, "j":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 453
    aget-wide v2, p0, v0

    .line 454
    .local v2, "tmp":D
    aget-wide v4, p0, v1

    aput-wide v4, p0, v0

    .line 455
    aput-wide v2, p0, v1

    .line 452
    .end local v2    # "tmp":D
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 457
    .end local v0    # "i":I
    .end local v1    # "j":I
    :cond_0
    return-void
.end method

.method public static sortDescending([D)V
    .locals 2
    .param p0, "array"    # [D

    .line 408
    invoke-static {p0}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lccsancom/google/common/primitives/Doubles;->sortDescending([DII)V

    .line 410
    return-void
.end method

.method public static sortDescending([DII)V
    .locals 1
    .param p0, "array"    # [D
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 422
    invoke-static {p0}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    array-length v0, p0

    invoke-static {p1, p2, v0}, Lccsancom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 424
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->sort([DII)V

    .line 425
    invoke-static {p0, p1, p2}, Lccsancom/google/common/primitives/Doubles;->reverse([DII)V

    .line 426
    return-void
.end method

.method public static stringConverter()Lccsancom/google/common/base/Converter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/base/Converter<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 312
    sget-object v0, Lccsancom/google/common/primitives/Doubles$DoubleConverter;->INSTANCE:Lccsancom/google/common/primitives/Doubles$DoubleConverter;

    return-object v0
.end method

.method public static toArray(Ljava/util/Collection;)[D
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Number;",
            ">;)[D"
        }
    .end annotation

    .line 473
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Number;>;"
    instance-of v0, p0, Lccsancom/google/common/primitives/Doubles$DoubleArrayAsList;

    if-eqz v0, :cond_0

    .line 474
    move-object v0, p0

    check-cast v0, Lccsancom/google/common/primitives/Doubles$DoubleArrayAsList;

    invoke-virtual {v0}, Lccsancom/google/common/primitives/Doubles$DoubleArrayAsList;->toDoubleArray()[D

    move-result-object v0

    return-object v0

    .line 477
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 478
    .local v0, "boxedArray":[Ljava/lang/Object;
    array-length v1, v0

    .line 479
    .local v1, "len":I
    new-array v2, v1, [D

    .line 480
    .local v2, "array":[D
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 482
    aget-object v4, v0, v3

    invoke-static {v4}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 480
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 484
    .end local v3    # "i":I
    :cond_1
    return-object v2
.end method

.method public static tryParse(Ljava/lang/String;)Ljava/lang/Double;
    .locals 2
    .param p0, "string"    # Ljava/lang/String;
    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 696
    sget-object v0, Lccsancom/google/common/primitives/Doubles;->FLOATING_POINT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 700
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 701
    :catch_0
    move-exception v0

    .line 706
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
