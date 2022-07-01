.class public final Lccsansan/bt/IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private static addDownloadListener(J)Lccsanandroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lccsanandroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    long-to-double v0, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    cmpl-double v6, v0, v4

    if-ltz v6, :cond_0

    add-int/lit8 v3, v3, 0x1

    div-double/2addr v0, v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_2

    const/4 v5, 0x3

    if-eq v3, v5, :cond_1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "B"

    goto :goto_1

    :cond_1
    nop

    .line 2
    new-array p0, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, p0, v2

    const-string p1, "%.2f"

    invoke-static {p1, p0}, Lccsansan/bw/getName;->removeDownloadListener(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "GB"

    goto :goto_1

    :cond_2
    nop

    .line 3
    new-array p0, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, p0, v2

    const-string p1, "%.1f"

    invoke-static {p1, p0}, Lccsansan/bw/getName;->removeDownloadListener(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "MB"

    goto :goto_1

    :cond_3
    nop

    .line 4
    new-array p0, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, p0, v2

    const-string p1, "%.0f"

    invoke-static {p1, p0}, Lccsansan/bw/getName;->removeDownloadListener(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "KB"

    .line 20
    :goto_1
    invoke-static {p0, p1}, Lccsanandroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Lccsanandroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static getDownloadingList(J)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0, p1}, Lccsansan/bt/IncentiveDownloadUtils;->addDownloadListener(J)Lccsanandroid/util/Pair;

    move-result-object p0

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
