.class public final Lccsankotlin/time/FormatToDecimalsKt;
.super Ljava/lang/Object;
.source "formatToDecimals.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nformatToDecimals.kt\nKotlin\n*S Kotlin\n*F\n+ 1 formatToDecimals.kt\nkotlin/time/FormatToDecimalsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,31:1\n1#2:32\n*E\n"
.end annotation

.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000&\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0002\u001a\u0010\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H\u0002\u001a\u0018\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u0007H\u0000\u001a\u0018\u0010\u000c\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u0007H\u0000\"\u001c\u0010\u0000\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0004\u00a8\u0006\r"
    }
    d2 = {
        "precisionFormats",
        "",
        "Ljava/lang/ThreadLocal;",
        "Ljava/text/DecimalFormat;",
        "[Ljava/lang/ThreadLocal;",
        "createFormatForDecimals",
        "decimals",
        "",
        "formatToExactDecimals",
        "",
        "value",
        "",
        "formatUpToDecimals",
        "kotlin-stdlib"
    }
    k = 0x2
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field private static final precisionFormats:[Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/ThreadLocal<",
            "Ljava/text/DecimalFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 12
    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/ThreadLocal;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    move v3, v2

    .local v3, "it":I
    const/4 v4, 0x0

    .local v4, "$i$a$-<init>-FormatToDecimalsKt$precisionFormats$1":I
    new-instance v5, Ljava/lang/ThreadLocal;

    invoke-direct {v5}, Ljava/lang/ThreadLocal;-><init>()V

    .end local v3    # "it":I
    .end local v4    # "$i$a$-<init>-FormatToDecimalsKt$precisionFormats$1":I
    aput-object v5, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sput-object v1, Lccsankotlin/time/FormatToDecimalsKt;->precisionFormats:[Ljava/lang/ThreadLocal;

    return-void
.end method

.method private static final createFormatForDecimals(I)Ljava/text/DecimalFormat;
    .locals 4
    .param p0, "decimals"    # I

    .line 14
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    .local v1, "$this$apply":Ljava/text/DecimalFormat;
    const/4 v2, 0x0

    .line 15
    .local v2, "$i$a$-apply-FormatToDecimalsKt$createFormatForDecimals$1":I
    if-lez p0, :cond_0

    invoke-virtual {v1, p0}, Ljava/text/DecimalFormat;->setMinimumFractionDigits(I)V

    .line 16
    :cond_0
    sget-object v3, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {v1, v3}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 17
    nop

    .line 14
    .end local v1    # "$this$apply":Ljava/text/DecimalFormat;
    .end local v2    # "$i$a$-apply-FormatToDecimalsKt$createFormatForDecimals$1":I
    nop

    .line 17
    return-object v0
.end method

.method public static final formatToExactDecimals(DI)Ljava/lang/String;
    .locals 3
    .param p0, "value"    # D
    .param p2, "decimals"    # I

    .line 20
    sget-object v0, Lccsankotlin/time/FormatToDecimalsKt;->precisionFormats:[Ljava/lang/ThreadLocal;

    array-length v1, v0

    if-ge p2, v1, :cond_1

    .line 21
    aget-object v0, v0, p2

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 32
    :cond_0
    const/4 v1, 0x0

    .line 21
    .local v1, "$i$a$-getOrSet-FormatToDecimalsKt$formatToExactDecimals$format$1":I
    invoke-static {p2}, Lccsankotlin/time/FormatToDecimalsKt;->createFormatForDecimals(I)Ljava/text/DecimalFormat;

    move-result-object v1

    .end local v1    # "$i$a$-getOrSet-FormatToDecimalsKt$formatToExactDecimals$format$1":I
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :goto_0
    check-cast v1, Ljava/text/DecimalFormat;

    goto :goto_1

    .line 23
    :cond_1
    invoke-static {p2}, Lccsankotlin/time/FormatToDecimalsKt;->createFormatForDecimals(I)Ljava/text/DecimalFormat;

    move-result-object v1

    .line 20
    :goto_1
    move-object v0, v1

    .line 24
    .local v0, "format":Ljava/text/DecimalFormat;
    invoke-virtual {v0, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    const-string v2, "format.format(value)"

    invoke-static {v1, v2}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public static final formatUpToDecimals(DI)Ljava/lang/String;
    .locals 3
    .param p0, "value"    # D
    .param p2, "decimals"    # I

    .line 28
    nop

    .line 30
    nop

    .line 28
    nop

    .line 29
    nop

    .line 28
    const/4 v0, 0x0

    invoke-static {v0}, Lccsankotlin/time/FormatToDecimalsKt;->createFormatForDecimals(I)Ljava/text/DecimalFormat;

    move-result-object v0

    .line 29
    move-object v1, v0

    .line 32
    .local v1, "$this$apply":Ljava/text/DecimalFormat;
    const/4 v2, 0x0

    .line 29
    .local v2, "$i$a$-apply-FormatToDecimalsKt$formatUpToDecimals$1":I
    invoke-virtual {v1, p2}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    .line 30
    .end local v1    # "$this$apply":Ljava/text/DecimalFormat;
    .end local v2    # "$i$a$-apply-FormatToDecimalsKt$formatUpToDecimals$1":I
    invoke-virtual {v0, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    const-string v1, "createFormatForDecimals(\u2026 }\n        .format(value)"

    invoke-static {v0, v1}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
