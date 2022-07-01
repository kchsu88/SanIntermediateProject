.class public Lccsancom/mbridge/msdk/foundation/download/utils/Objects;
.super Ljava/lang/Object;
.source "Objects.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs hash([Ljava/lang/Object;)I
    .locals 0

    .line 7
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static isNotNull(Ljava/lang/Object;)Z
    .locals 0

    .line 15
    invoke-static {p0}, Lccsancom/mbridge/msdk/foundation/download/utils/Objects;->isNull(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static isNull(Ljava/lang/Object;)Z
    .locals 0

    .line 11
    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
