.class public Lccsansan/cm/getDownloadingList;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static addDownloadListener:Ljava/lang/String;


# direct methods
.method public static IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 3
    sget-object v0, Lccsansan/cm/getDownloadingList;->addDownloadListener:Ljava/lang/String;

    const-string v1, "1"

    invoke-static {v0, v1}, Lccsanandroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {p0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static removeDownloadListener(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lccsansan/cm/getDownloadingList;->addDownloadListener:Ljava/lang/String;

    return-void
.end method

.method public static removeDownloadListener()Z
    .locals 2

    .line 2
    sget-object v0, Lccsansan/cm/getDownloadingList;->addDownloadListener:Ljava/lang/String;

    const-string v1, "1"

    invoke-static {v0, v1}, Lccsanandroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
