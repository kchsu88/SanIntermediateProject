.class public Lccsansan/bo/IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    const-string v0, "?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static removeDownloadListener(Lccsanandroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 5
    const-string v0, "UNKNOWN"

    :try_start_0
    invoke-static {p0}, Lccsansan/ab/removeDownloadListener;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)Lccsansan/ab/removeDownloadListener;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lccsansan/ab/removeDownloadListener;->IncentiveDownloadUtils()Lccsansan/ab/removeDownloadListener$addDownloadListener;

    move-result-object v1

    sget-object v2, Lccsansan/ab/removeDownloadListener$addDownloadListener;->MOBILE:Lccsansan/ab/removeDownloadListener$addDownloadListener;

    if-ne v1, v2, :cond_5

    .line 9
    invoke-virtual {p0}, Lccsansan/ab/removeDownloadListener;->getDownloadStatusByUrl()Lccsansan/ab/removeDownloadListener$getDownloadingList;

    move-result-object v1

    sget-object v2, Lccsansan/ab/removeDownloadListener$getDownloadingList;->UNKNOWN:Lccsansan/ab/removeDownloadListener$getDownloadingList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "MOB_UNKNOWN"

    if-ne v1, v2, :cond_1

    return-object v3

    .line 11
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lccsansan/ab/removeDownloadListener;->getDownloadStatusByUrl()Lccsansan/ab/removeDownloadListener$getDownloadingList;

    move-result-object v1

    sget-object v2, Lccsansan/ab/removeDownloadListener$getDownloadingList;->MOBILE_2G:Lccsansan/ab/removeDownloadListener$getDownloadingList;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne v1, v2, :cond_2

    const-string p0, "MOB_2G"

    return-object p0

    .line 13
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lccsansan/ab/removeDownloadListener;->getDownloadStatusByUrl()Lccsansan/ab/removeDownloadListener$getDownloadingList;

    move-result-object v1

    sget-object v2, Lccsansan/ab/removeDownloadListener$getDownloadingList;->MOBILE_3G:Lccsansan/ab/removeDownloadListener$getDownloadingList;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-ne v1, v2, :cond_3

    const-string p0, "MOB_3G"

    return-object p0

    .line 15
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Lccsansan/ab/removeDownloadListener;->getDownloadStatusByUrl()Lccsansan/ab/removeDownloadListener$getDownloadingList;

    move-result-object p0

    sget-object v0, Lccsansan/ab/removeDownloadListener$getDownloadingList;->MOBILE_4G:Lccsansan/ab/removeDownloadListener$getDownloadingList;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    if-ne p0, v0, :cond_4

    const-string p0, "MOB_4G"

    return-object p0

    :cond_4
    return-object v3

    .line 19
    :cond_5
    :try_start_4
    invoke-virtual {p0}, Lccsansan/ab/removeDownloadListener;->IncentiveDownloadUtils()Lccsansan/ab/removeDownloadListener$addDownloadListener;

    move-result-object v1

    sget-object v2, Lccsansan/ab/removeDownloadListener$addDownloadListener;->WIFI:Lccsansan/ab/removeDownloadListener$addDownloadListener;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    if-ne v1, v2, :cond_6

    const-string p0, "WIFI"

    return-object p0

    .line 21
    :cond_6
    :try_start_5
    invoke-virtual {p0}, Lccsansan/ab/removeDownloadListener;->IncentiveDownloadUtils()Lccsansan/ab/removeDownloadListener$addDownloadListener;

    move-result-object p0

    sget-object v1, Lccsansan/ab/removeDownloadListener$addDownloadListener;->OFFLINE:Lccsansan/ab/removeDownloadListener$addDownloadListener;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    if-ne p0, v1, :cond_7

    const-string p0, "OFFLINE"

    return-object p0

    :cond_7
    return-object v0

    :catch_0
    move-exception p0

    return-object v0
.end method
