.class public final Lccsancom/mbridge/msdk/foundation/download/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method

.method public static getDownloadRate(JJ)I
    .locals 2

    .line 9
    long-to-double p2, p2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p2, p2, v0

    long-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p2, p0

    mul-double p2, p2, v0

    .line 10
    const-wide/high16 p0, 0x4059000000000000L    # 100.0

    mul-double p2, p2, p0

    double-to-int p0, p2

    return p0
.end method
