.class public Lccsansan/bw/getActionType;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static addDownloadListener(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 4
    :cond_0
    const-string v0, ".sapk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
