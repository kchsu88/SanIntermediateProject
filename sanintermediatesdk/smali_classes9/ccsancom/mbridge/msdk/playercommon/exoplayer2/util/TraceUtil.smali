.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/TraceUtil;
.super Ljava/lang/Object;
.source "TraceUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static beginSection(Ljava/lang/String;)V
    .locals 2

    .line 36
    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 37
    invoke-static {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/TraceUtil;->beginSectionV18(Ljava/lang/String;)V

    .line 39
    :cond_0
    return-void
.end method

.method private static beginSectionV18(Ljava/lang/String;)V
    .locals 0

    .line 54
    invoke-static {p0}, Lccsanandroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public static endSection()V
    .locals 2

    .line 47
    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 48
    invoke-static {}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/TraceUtil;->endSectionV18()V

    .line 50
    :cond_0
    return-void
.end method

.method private static endSectionV18()V
    .locals 0

    .line 59
    invoke-static {}, Lccsanandroid/os/Trace;->endSection()V

    .line 60
    return-void
.end method
