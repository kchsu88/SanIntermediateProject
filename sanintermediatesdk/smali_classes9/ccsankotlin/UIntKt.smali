.class public final Lccsankotlin/UIntKt;
.super Ljava/lang/Object;
.source "UInt.kt"


# annotations
.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000,\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\n\n\u0002\u0008\u0002\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0003\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u0004H\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0005\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u0006H\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0007\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u0008H\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\t\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\nH\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000b\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u000cH\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\r\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u000e"
    }
    d2 = {
        "toUInt",
        "Lccsankotlin/UInt;",
        "",
        "(B)I",
        "",
        "(D)I",
        "",
        "(F)I",
        "",
        "(I)I",
        "",
        "(J)I",
        "",
        "(S)I",
        "kotlin-stdlib"
    }
    k = 0x2
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# direct methods
.method private static final toUInt(B)I
    .locals 2
    .param p0, "$this$toUInt"    # B

    const/4 v0, 0x0

    .line 380
    .local v0, "$i$f$toUInt":I
    invoke-static {p0}, Lccsankotlin/UInt;->constructor-impl(I)I

    move-result v1

    return v1
.end method

.method private static final toUInt(D)I
    .locals 2
    .param p0, "$this$toUInt"    # D

    const/4 v0, 0x0

    .line 436
    .local v0, "$i$f$toUInt":I
    invoke-static {p0, p1}, Lccsankotlin/UnsignedKt;->doubleToUInt(D)I

    move-result v1

    return v1
.end method

.method private static final toUInt(F)I
    .locals 3
    .param p0, "$this$toUInt"    # F

    const/4 v0, 0x0

    .line 426
    .local v0, "$i$f$toUInt":I
    float-to-double v1, p0

    invoke-static {v1, v2}, Lccsankotlin/UnsignedKt;->doubleToUInt(D)I

    move-result v1

    return v1
.end method

.method private static final toUInt(I)I
    .locals 2
    .param p0, "$this$toUInt"    # I

    const/4 v0, 0x0

    .line 403
    .local v0, "$i$f$toUInt":I
    invoke-static {p0}, Lccsankotlin/UInt;->constructor-impl(I)I

    move-result v1

    return v1
.end method

.method private static final toUInt(J)I
    .locals 2
    .param p0, "$this$toUInt"    # J

    const/4 v0, 0x0

    .line 415
    .local v0, "$i$f$toUInt":I
    long-to-int v1, p0

    invoke-static {v1}, Lccsankotlin/UInt;->constructor-impl(I)I

    move-result v1

    return v1
.end method

.method private static final toUInt(S)I
    .locals 2
    .param p0, "$this$toUInt"    # S

    const/4 v0, 0x0

    .line 392
    .local v0, "$i$f$toUInt":I
    invoke-static {p0}, Lccsankotlin/UInt;->constructor-impl(I)I

    move-result v1

    return v1
.end method
