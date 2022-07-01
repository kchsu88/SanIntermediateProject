.class public Lccsansan/cc/getDownloadingList;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static unifiedDownload(Lccsansan/cj/removeDownloadListener;)Lccsansan/cj/addDownloadListener;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lccsansan/ai/removeDownloadListener;->removeDownloadListener()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    goto :goto_1

    :sswitch_0
    const-string v1, "AD_RequestHandle_S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    goto :goto_2

    :sswitch_1
    const-string v1, "AD_RequestHandleEX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_2

    :sswitch_2
    const-string v1, "AD_RequestHandle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_2

    :sswitch_3
    const-string v1, "AD_StartLoad"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    :goto_1
    const/4 v0, -0x1

    :goto_2
    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_3

    .line 12
    :pswitch_0
    new-instance v0, Lccsansan/cj/getDownloadingRecordByUrl;

    invoke-direct {v0, p0}, Lccsansan/cj/getDownloadingRecordByUrl;-><init>(Lccsansan/cj/removeDownloadListener;)V

    goto :goto_3

    .line 13
    :pswitch_1
    new-instance v0, Lccsansan/cj/deleteDownItem;

    invoke-direct {v0, p0}, Lccsansan/cj/deleteDownItem;-><init>(Lccsansan/cj/removeDownloadListener;)V

    goto :goto_3

    .line 14
    :pswitch_2
    new-instance v0, Lccsansan/cj/unifiedDownload;

    invoke-direct {v0, p0}, Lccsansan/cj/unifiedDownload;-><init>(Lccsansan/cj/removeDownloadListener;)V

    goto :goto_3

    .line 15
    :pswitch_3
    new-instance v0, Lccsansan/cj/getDownloadedRecordByUrl;

    invoke-direct {v0, p0}, Lccsansan/cj/getDownloadedRecordByUrl;-><init>(Lccsansan/cj/removeDownloadListener;)V

    :goto_3
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x209f8f2c -> :sswitch_3
        0x6512765b -> :sswitch_2
        0x6a4e544e -> :sswitch_1
        0x6a4e576f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
