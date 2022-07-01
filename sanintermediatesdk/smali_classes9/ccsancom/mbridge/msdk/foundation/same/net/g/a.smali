.class public final Lccsancom/mbridge/msdk/foundation/same/net/g/a;
.super Ljava/lang/Object;
.source "CommonHttpConfig.java"


# direct methods
.method public static a(I)Ljava/lang/String;
    .locals 1

    .line 15
    nop

    .line 16
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 17
    const-string p0, "Network error,I/O exception"

    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    .line 19
    const-string p0, "Network error,timeout exception"

    goto :goto_0

    .line 20
    :cond_1
    const/4 v0, 0x4

    if-ne p0, v0, :cond_2

    .line 21
    const-string p0, "Network unknown error"

    goto :goto_0

    .line 22
    :cond_2
    const/4 v0, -0x2

    if-ne p0, v0, :cond_3

    .line 23
    const-string p0, "Network is canceled"

    goto :goto_0

    .line 24
    :cond_3
    const/4 v0, 0x5

    if-ne p0, v0, :cond_4

    .line 25
    const-string p0, "Network error\uff0chttps is not work,please check your phone time"

    goto :goto_0

    .line 26
    :cond_4
    const/4 v0, 0x6

    if-ne p0, v0, :cond_5

    .line 27
    const-string p0, "Network error,please check"

    goto :goto_0

    .line 28
    :cond_5
    const/4 v0, 0x7

    if-ne p0, v0, :cond_6

    .line 29
    const-string p0, "The server returns an exception"

    goto :goto_0

    .line 30
    :cond_6
    const/16 v0, 0x8

    if-ne p0, v0, :cond_7

    .line 31
    const-string p0, "Cast exception, return data can\'t be casted correctly"

    goto :goto_0

    .line 30
    :cond_7
    const-string p0, "Network error,Load failed"

    .line 33
    :goto_0
    return-object p0
.end method
