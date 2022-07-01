.class public final Lccsancom/san/xz/base/addDownloadListener;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static addDownloadListener:I

.field private static removeDownloadListener:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/xz/base/addDownloadListener;->removeDownloadListener:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/xz/base/addDownloadListener;->addDownloadListener:I

    return-void
.end method

.method public static getDownloadingList(Lccsanandroid/content/Context;Lccsansan/da/removeDownloadListener;Lccsansan/cs/unifiedDownload;)Lccsansan/ae/getDownloadingList;
    .locals 4

    .line 13
    sget p0, Lccsancom/san/xz/base/addDownloadListener;->removeDownloadListener:I

    add-int/lit8 v0, p0, 0x1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/xz/base/addDownloadListener;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 0
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 13
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    :cond_2
    :goto_1
    goto/16 :goto_7

    :pswitch_0
    and-int/lit8 v2, p0, 0x25

    xor-int/lit8 p0, p0, 0x25

    or-int/2addr p0, v2

    add-int/2addr v2, p0

    rem-int/lit16 p0, v2, 0x80

    sput p0, Lccsancom/san/xz/base/addDownloadListener;->addDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_3

    .line 1
    :cond_3
    invoke-virtual {p1}, Lccsansan/da/removeDownloadListener;->IncentiveDownloadUtils()Z

    move-result p0

    if-nez p0, :cond_4

    .line 13
    sget p0, Lccsancom/san/xz/base/addDownloadListener;->removeDownloadListener:I

    and-int/lit8 p1, p0, 0x23

    xor-int/lit8 p2, p1, -0x1

    or-int/lit8 p0, p0, 0x23

    and-int/2addr p0, p2

    shl-int/2addr p1, v1

    xor-int/lit8 p1, p1, -0x1

    sub-int/2addr p0, p1

    sub-int/2addr p0, v1

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsancom/san/xz/base/addDownloadListener;->addDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_2

    goto :goto_1

    .line 4
    :cond_4
    invoke-static {p1, p2}, Lccsancom/san/xz/base/addDownloadListener;->unifiedDownload(Lccsansan/da/removeDownloadListener;Lccsansan/cs/unifiedDownload;)Lccsancom/san/xz/base/getDownloadingList;

    move-result-object p0

    if-nez p0, :cond_5

    .line 13
    const/16 p1, 0x12

    goto :goto_2

    :cond_5
    const/16 p1, 0x43

    :goto_2
    packed-switch p1, :pswitch_data_1

    sget p0, Lccsancom/san/xz/base/addDownloadListener;->addDownloadListener:I

    xor-int/lit8 p1, p0, 0x67

    and-int/lit8 p2, p0, 0x67

    or-int/2addr p2, p1

    shl-int/2addr p2, v1

    sub-int/2addr p2, p1

    rem-int/lit16 p1, p2, 0x80

    sput p1, Lccsancom/san/xz/base/addDownloadListener;->removeDownloadListener:I

    rem-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_9

    goto :goto_6

    .line 8
    :pswitch_1
    sget-object p1, Lccsancom/san/xz/base/addDownloadListener$unifiedDownload;->addDownloadListener:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    if-eq p1, v1, :cond_7

    .line 12
    new-instance p1, Lccsansan/ae/IncentiveDownloadUtils;

    invoke-direct {p1, p0}, Lccsansan/ae/IncentiveDownloadUtils;-><init>(Lccsancom/san/xz/base/getDownloadingList;)V

    .line 13
    sget p0, Lccsancom/san/xz/base/addDownloadListener;->removeDownloadListener:I

    xor-int/lit8 p2, p0, 0x3

    and-int/lit8 p0, p0, 0x3

    shl-int/2addr p0, v1

    add-int/2addr p2, p0

    rem-int/lit16 p0, p2, 0x80

    sput p0, Lccsancom/san/xz/base/addDownloadListener;->addDownloadListener:I

    rem-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_6

    const/4 v0, 0x1

    :cond_6
    packed-switch v0, :pswitch_data_2

    goto :goto_3

    :pswitch_2
    return-object p1

    :goto_3
    :try_start_0
    array-length p0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p0

    throw p0

    :cond_7
    new-instance p1, Lccsansan/ae/unifiedDownload;

    invoke-direct {p1, p0}, Lccsansan/ae/unifiedDownload;-><init>(Lccsancom/san/xz/base/getDownloadingList;)V

    sget p0, Lccsancom/san/xz/base/addDownloadListener;->removeDownloadListener:I

    xor-int/lit8 p2, p0, 0x23

    and-int/lit8 v0, p0, 0x23

    or-int/2addr p2, v0

    shl-int/2addr p2, v1

    xor-int/lit8 v0, v0, -0x1

    or-int/lit8 p0, p0, 0x23

    and-int/2addr p0, v0

    sub-int/2addr p2, p0

    rem-int/lit16 p0, p2, 0x80

    sput p0, Lccsancom/san/xz/base/addDownloadListener;->addDownloadListener:I

    rem-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_8

    const/16 p0, 0x2a

    goto :goto_4

    :cond_8
    const/16 p0, 0x52

    :goto_4
    packed-switch p0, :pswitch_data_3

    goto :goto_5

    :pswitch_3
    return-object p1

    :goto_5
    :try_start_1
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object p1

    :catchall_1
    move-exception p0

    throw p0

    .line 4
    :cond_9
    :goto_6
    nop

    .line 13
    and-int/lit8 p1, p0, 0x79

    or-int/lit8 p0, p0, 0x79

    add-int/2addr p1, p0

    rem-int/lit16 p0, p1, 0x80

    sput p0, Lccsancom/san/xz/base/addDownloadListener;->removeDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    return-object v3

    :goto_7
    sget p0, Lccsancom/san/xz/base/addDownloadListener;->addDownloadListener:I

    and-int/lit8 p1, p0, 0xb

    or-int/lit8 p0, p0, 0xb

    add-int/2addr p1, p0

    rem-int/lit16 p0, p1, 0x80

    sput p0, Lccsancom/san/xz/base/addDownloadListener;->removeDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_a

    const/16 p0, 0x5e

    goto :goto_8

    :cond_a
    const/16 p0, 0xe

    :goto_8
    packed-switch p0, :pswitch_data_4

    goto :goto_9

    :pswitch_4
    return-object v3

    :goto_9
    :try_start_2
    array-length p0, v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-object v3

    :catchall_2
    move-exception p0

    goto :goto_b

    :goto_a
    throw p0

    :goto_b
    goto :goto_a

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x43
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x52
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xe
        :pswitch_4
    .end packed-switch
.end method

.method public static unifiedDownload(Lccsansan/da/removeDownloadListener;Lccsansan/cs/unifiedDownload;)Lccsancom/san/xz/base/getDownloadingList;
    .locals 9

    .line 45
    nop

    .line 14
    new-instance v0, Lccsancom/san/xz/base/getDownloadingList;

    invoke-direct {v0}, Lccsancom/san/xz/base/getDownloadingList;-><init>()V

    .line 16
    invoke-virtual {p0}, Lccsansan/da/removeDownloadListener;->deleteDownItem()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Lccsancom/san/xz/base/getDownloadingList;->addDownloadListener(Ljava/lang/String;Ljava/lang/Object;)V

    .line 17
    const-string v1, "ver"

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Lccsancom/san/xz/base/getDownloadingList;->addDownloadListener(Ljava/lang/String;Ljava/lang/Object;)V

    .line 19
    invoke-virtual {p0}, Lccsansan/da/removeDownloadListener;->getDownloadingRecordByUrl()Ljava/lang/String;

    move-result-object v3

    const-string v4, "name"

    invoke-virtual {v0, v4, v3}, Lccsancom/san/xz/base/getDownloadingList;->addDownloadListener(Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v5, "has_thumbnail"

    invoke-virtual {v0, v5, v3}, Lccsancom/san/xz/base/getDownloadingList;->addDownloadListener(Ljava/lang/String;Ljava/lang/Object;)V

    .line 22
    invoke-virtual {p0}, Lccsansan/da/removeDownloadListener;->deleteDownItem()Ljava/lang/String;

    move-result-object v5

    const-string v6, "file_path"

    invoke-virtual {v0, v6, v5}, Lccsancom/san/xz/base/getDownloadingList;->addDownloadListener(Ljava/lang/String;Ljava/lang/Object;)V

    .line 23
    invoke-virtual {p0}, Lccsansan/da/removeDownloadListener;->getDownloadedRecordByUrl()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "file_size"

    invoke-virtual {v0, v6, v5}, Lccsancom/san/xz/base/getDownloadingList;->addDownloadListener(Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    const-string v5, "is_exist"

    invoke-virtual {v0, v5, v3}, Lccsancom/san/xz/base/getDownloadingList;->addDownloadListener(Ljava/lang/String;Ljava/lang/Object;)V

    .line 26
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "media_id"

    invoke-virtual {v0, v6, v5}, Lccsancom/san/xz/base/getDownloadingList;->addDownloadListener(Ljava/lang/String;Ljava/lang/Object;)V

    .line 27
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "album_id"

    invoke-virtual {v0, v6, v5}, Lccsancom/san/xz/base/getDownloadingList;->addDownloadListener(Ljava/lang/String;Ljava/lang/Object;)V

    .line 28
    invoke-virtual {p0}, Lccsansan/da/removeDownloadListener;->getDownloadedList()Lccsansan/da/removeDownloadListener;

    move-result-object v5

    invoke-virtual {v5}, Lccsansan/da/removeDownloadListener;->getDownloadingRecordByUrl()Ljava/lang/String;

    move-result-object v5

    const-string v6, "album_name"

    invoke-virtual {v0, v6, v5}, Lccsancom/san/xz/base/getDownloadingList;->addDownloadListener(Ljava/lang/String;Ljava/lang/Object;)V

    .line 29
    invoke-virtual {p0}, Lccsansan/da/removeDownloadListener;->getDownloadStatusByUrl()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "date_modified"

    invoke-virtual {v0, v6, v5}, Lccsancom/san/xz/base/getDownloadingList;->addDownloadListener(Ljava/lang/String;Ljava/lang/Object;)V

    .line 30
    sget-object v5, Lccsancom/san/xz/base/addDownloadListener$unifiedDownload;->addDownloadListener:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v5, p1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq p1, v7, :cond_1

    .line 45
    sget p0, Lccsancom/san/xz/base/addDownloadListener;->addDownloadListener:I

    xor-int/lit8 p1, p0, 0x45

    and-int/lit8 p0, p0, 0x45

    shl-int/2addr p0, v7

    add-int/2addr p1, p0

    rem-int/lit16 p0, p1, 0x80

    sput p0, Lccsancom/san/xz/base/addDownloadListener;->removeDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    :cond_0
    :goto_0
    :pswitch_0
    goto/16 :goto_e

    .line 32
    :cond_1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lccsansan/da/removeDownloadListener;->deleteDownItem()Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v8}, Lccsansan/bw/getDownloadedRecordByUrl;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;)Lccsanandroid/content/pm/PackageInfo;

    move-result-object p1

    if-nez p1, :cond_2

    .line 39
    const/4 v8, 0x0

    goto :goto_1

    :cond_2
    const/4 v8, 0x1

    :goto_1
    packed-switch v8, :pswitch_data_0

    .line 35
    iget-object v8, p1, Lccsanandroid/content/pm/PackageInfo;->applicationInfo:Lccsanandroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Lccsanandroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2, v8}, Lccsancom/san/xz/base/getDownloadingList;->addDownloadListener(Ljava/lang/String;Ljava/lang/Object;)V

    .line 36
    iget v2, p1, Lccsanandroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsancom/san/xz/base/getDownloadingList;->addDownloadListener(Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lccsansan/da/removeDownloadListener;->deleteDownItem()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, p1}, Lccsansan/bw/getDownloadedRecordByUrl;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_4

    goto :goto_4

    .line 45
    :pswitch_1
    sget p0, Lccsancom/san/xz/base/addDownloadListener;->removeDownloadListener:I

    xor-int/lit8 p1, p0, 0x65

    and-int/lit8 p0, p0, 0x65

    or-int/2addr p0, p1

    shl-int/2addr p0, v7

    neg-int p1, p1

    xor-int v0, p0, p1

    and-int/2addr p0, p1

    shl-int/2addr p0, v7

    add-int/2addr v0, p0

    rem-int/lit16 p0, v0, 0x80

    sput p0, Lccsancom/san/xz/base/addDownloadListener;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    .line 39
    const/16 p0, 0x30

    goto :goto_2

    :cond_3
    const/16 p0, 0x63

    :goto_2
    packed-switch p0, :pswitch_data_1

    .line 32
    goto :goto_3

    .line 45
    :pswitch_2
    :try_start_0
    invoke-super {v5}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    throw p0

    :goto_3
    return-object v5

    .line 39
    :goto_4
    const/4 v1, 0x1

    goto :goto_5

    :cond_4
    const/4 v1, 0x0

    :goto_5
    packed-switch v1, :pswitch_data_2

    goto :goto_8

    .line 45
    :pswitch_3
    sget p0, Lccsancom/san/xz/base/addDownloadListener;->removeDownloadListener:I

    xor-int/lit8 v1, p0, 0x5d

    and-int/lit8 p0, p0, 0x5d

    shl-int/2addr p0, v7

    neg-int p0, p0

    neg-int p0, p0

    or-int v2, v1, p0

    shl-int/2addr v2, v7

    xor-int/2addr p0, v1

    sub-int/2addr v2, p0

    rem-int/lit16 p0, v2, 0x80

    sput p0, Lccsancom/san/xz/base/addDownloadListener;->addDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_5

    .line 39
    const/16 p0, 0x14

    goto :goto_6

    :cond_5
    const/16 p0, 0x4a

    :goto_6
    packed-switch p0, :pswitch_data_3

    iget-object p0, p1, Lccsanandroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    goto :goto_7

    :pswitch_4
    iget-object p0, p1, Lccsanandroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/16 v1, 0x11

    :try_start_1
    div-int/2addr v1, v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_7

    .line 45
    :catchall_1
    move-exception p0

    throw p0

    :goto_7
    nop

    .line 39
    :goto_8
    nop

    .line 40
    invoke-virtual {v0, v4, p0}, Lccsancom/san/xz/base/getDownloadingList;->addDownloadListener(Ljava/lang/String;Ljava/lang/Object;)V

    .line 41
    iget-object p0, p1, Lccsanandroid/content/pm/PackageInfo;->applicationInfo:Lccsanandroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Lccsanandroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "package_name"

    invoke-virtual {v0, v1, p0}, Lccsancom/san/xz/base/getDownloadingList;->addDownloadListener(Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    iget p0, p1, Lccsanandroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "version_code"

    invoke-virtual {v0, v1, p0}, Lccsancom/san/xz/base/getDownloadingList;->addDownloadListener(Ljava/lang/String;Ljava/lang/Object;)V

    .line 43
    iget-object p0, p1, Lccsanandroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v1, "version_name"

    invoke-virtual {v0, v1, p0}, Lccsancom/san/xz/base/getDownloadingList;->addDownloadListener(Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    iget-object p0, p1, Lccsanandroid/content/pm/PackageInfo;->applicationInfo:Lccsanandroid/content/pm/ApplicationInfo;

    iget p0, p0, Lccsanandroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr p0, v7

    if-eqz p0, :cond_6

    .line 39
    const/4 p0, 0x1

    goto :goto_9

    :cond_6
    const/4 p0, 0x0

    :goto_9
    packed-switch p0, :pswitch_data_4

    .line 44
    goto :goto_a

    .line 45
    :pswitch_5
    sget p0, Lccsancom/san/xz/base/addDownloadListener;->removeDownloadListener:I

    or-int/lit8 v1, p0, 0x59

    shl-int/lit8 v2, v1, 0x1

    and-int/lit8 v4, p0, 0x59

    xor-int/2addr v4, v3

    and-int/2addr v1, v4

    neg-int v1, v1

    xor-int/2addr v1, v3

    sub-int/2addr v2, v1

    sub-int/2addr v2, v7

    rem-int/lit16 v1, v2, 0x80

    sput v1, Lccsancom/san/xz/base/addDownloadListener;->addDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_7

    .line 44
    :cond_7
    nop

    .line 45
    xor-int/lit8 v1, p0, 0x37

    and-int/lit8 v2, p0, 0x37

    or-int/2addr v1, v2

    shl-int/2addr v1, v7

    xor-int/2addr v2, v3

    or-int/lit8 p0, p0, 0x37

    and-int/2addr p0, v2

    sub-int/2addr v1, p0

    rem-int/lit16 p0, v1, 0x80

    sput p0, Lccsancom/san/xz/base/addDownloadListener;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_8

    :cond_8
    const/4 p0, 0x1

    goto :goto_c

    :goto_a
    sget p0, Lccsancom/san/xz/base/addDownloadListener;->removeDownloadListener:I

    and-int/lit8 v1, p0, 0x1

    xor-int/2addr p0, v7

    or-int/2addr p0, v1

    add-int/2addr v1, p0

    rem-int/lit16 p0, v1, 0x80

    sput p0, Lccsancom/san/xz/base/addDownloadListener;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_9

    .line 39
    const/4 p0, 0x0

    goto :goto_b

    :cond_9
    const/4 p0, 0x1

    :goto_b
    packed-switch p0, :pswitch_data_5

    .line 45
    :pswitch_6
    nop

    .line 44
    const/4 p0, 0x0

    :goto_c
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v1, "is_system_app"

    invoke-virtual {v0, v1, p0}, Lccsancom/san/xz/base/getDownloadingList;->addDownloadListener(Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    iget-object p0, p1, Lccsanandroid/content/pm/PackageInfo;->applicationInfo:Lccsanandroid/content/pm/ApplicationInfo;

    iget-boolean p0, p0, Lccsanandroid/content/pm/ApplicationInfo;->enabled:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string p1, "is_enabled"

    invoke-virtual {v0, p1, p0}, Lccsancom/san/xz/base/getDownloadingList;->addDownloadListener(Ljava/lang/String;Ljava/lang/Object;)V

    sget p0, Lccsancom/san/xz/base/addDownloadListener;->addDownloadListener:I

    xor-int/lit8 p1, p0, 0x1b

    and-int/lit8 p0, p0, 0x1b

    shl-int/2addr p0, v7

    add-int/2addr p1, p0

    rem-int/lit16 p0, p1, 0x80

    sput p0, Lccsancom/san/xz/base/addDownloadListener;->removeDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_a

    .line 39
    const/4 p0, 0x1

    goto :goto_d

    :cond_a
    const/4 p0, 0x0

    :goto_d
    packed-switch p0, :pswitch_data_6

    .line 45
    goto/16 :goto_0

    :goto_e
    sget p0, Lccsancom/san/xz/base/addDownloadListener;->addDownloadListener:I

    xor-int/lit8 p1, p0, 0x77

    and-int/lit8 v1, p0, 0x77

    or-int/2addr p1, v1

    shl-int/2addr p1, v7

    xor-int/2addr v1, v3

    or-int/lit8 p0, p0, 0x77

    and-int/2addr p0, v1

    neg-int p0, p0

    or-int v1, p1, p0

    shl-int/2addr v1, v7

    xor-int/2addr p0, p1

    sub-int/2addr v1, p0

    rem-int/lit16 p0, v1, 0x80

    sput p0, Lccsancom/san/xz/base/addDownloadListener;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_b

    .line 39
    goto :goto_f

    :cond_b
    const/4 v6, 0x1

    :goto_f
    packed-switch v6, :pswitch_data_7

    .line 45
    goto :goto_10

    :pswitch_7
    return-object v0

    :goto_10
    :try_start_2
    array-length p0, v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-object v0

    :catchall_2
    move-exception p0

    goto :goto_12

    :goto_11
    throw p0

    :goto_12
    goto :goto_11

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x30
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x14
        :pswitch_4
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x1
        :pswitch_7
    .end packed-switch
.end method
