.class public Lccsansan/k/IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static IncentiveDownloadUtils:[I

.field private static addDownloadListener:Lccsansan/k/IncentiveDownloadUtils;

.field private static getDownloadingList:Ljava/lang/String;

.field private static getDownloadingRecordByUrl:I

.field private static unifiedDownload:I


# instance fields
.field private removeDownloadListener:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lccsansan/k/IncentiveDownloadUtils;->unifiedDownload:I

    const/4 v0, 0x1

    sput v0, Lccsansan/k/IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    invoke-static {}, Lccsansan/k/IncentiveDownloadUtils;->IncentiveDownloadUtils()V

    sget v0, Lccsansan/k/IncentiveDownloadUtils;->unifiedDownload:I

    add-int/lit8 v0, v0, 0xd

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/k/IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lccsansan/k/IncentiveDownloadUtils;->removeDownloadListener:Ljava/util/Map;

    .line 26
    invoke-direct {p0}, Lccsansan/k/IncentiveDownloadUtils;->getDownloadingList()V

    .line 27
    invoke-direct {p0}, Lccsansan/k/IncentiveDownloadUtils;->removeDownloadListener()V

    return-void
.end method

.method private static IncentiveDownloadUtils([II)Ljava/lang/String;
    .locals 12

    .line 1126
    sget-object v0, Lccsansan/d/getPackageNameByRecord;->removeDownloadListener:Ljava/lang/Object;

    monitor-enter v0

    .line 1128
    const/4 v1, 0x4

    :try_start_0
    new-array v1, v1, [C

    .line 1129
    array-length v2, p0

    const/4 v3, 0x1

    shl-int/2addr v2, v3

    new-array v2, v2, [C

    .line 1130
    sget-object v4, Lccsansan/k/IncentiveDownloadUtils;->IncentiveDownloadUtils:[I

    invoke-virtual {v4}, [I->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .line 1132
    const/4 v5, 0x0

    sput v5, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    :goto_0
    sget v6, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    array-length v7, p0

    if-ge v6, v7, :cond_1

    .line 1134
    sget v6, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    aget v6, p0, v6

    const/16 v7, 0x10

    shr-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v1, v5

    .line 1135
    sget v6, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    aget v6, p0, v6

    int-to-char v6, v6

    aput-char v6, v1, v3

    .line 1136
    sget v6, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    add-int/2addr v6, v3

    aget v6, p0, v6

    shr-int/2addr v6, v7

    int-to-char v6, v6

    const/4 v8, 0x2

    aput-char v6, v1, v8

    .line 1137
    sget v6, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    add-int/2addr v6, v3

    aget v6, p0, v6

    int-to-char v6, v6

    const/4 v9, 0x3

    aput-char v6, v1, v9

    .line 1141
    aget-char v6, v1, v5

    shl-int/2addr v6, v7

    aget-char v10, v1, v3

    add-int/2addr v6, v10

    sput v6, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    .line 1142
    aget-char v6, v1, v8

    shl-int/2addr v6, v7

    aget-char v10, v1, v9

    add-int/2addr v6, v10

    sput v6, Lccsansan/d/getPackageNameByRecord;->IncentiveDownloadUtils:I

    .line 1145
    invoke-static {v4}, Lccsansan/d/getPackageNameByRecord;->getDownloadingList([I)V

    .line 1148
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v7, :cond_0

    .line 1150
    sget v10, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    aget v11, v4, v6

    xor-int/2addr v10, v11

    .line 1151
    sput v10, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    invoke-static {v10}, Lccsansan/d/getPackageNameByRecord;->addDownloadListener(I)I

    move-result v10

    sget v11, Lccsansan/d/getPackageNameByRecord;->IncentiveDownloadUtils:I

    xor-int/2addr v10, v11

    sput v10, Lccsansan/d/getPackageNameByRecord;->IncentiveDownloadUtils:I

    .line 1153
    sget v10, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    .line 1154
    sget v11, Lccsansan/d/getPackageNameByRecord;->IncentiveDownloadUtils:I

    sput v11, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    .line 1155
    sput v10, Lccsansan/d/getPackageNameByRecord;->IncentiveDownloadUtils:I

    .line 1148
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1157
    :cond_0
    sget v6, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    .line 1158
    sget v10, Lccsansan/d/getPackageNameByRecord;->IncentiveDownloadUtils:I

    sput v10, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    .line 1159
    nop

    .line 1161
    sput v6, Lccsansan/d/getPackageNameByRecord;->IncentiveDownloadUtils:I

    aget v10, v4, v7

    xor-int/2addr v6, v10

    sput v6, Lccsansan/d/getPackageNameByRecord;->IncentiveDownloadUtils:I

    .line 1162
    sget v6, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    const/16 v10, 0x11

    aget v10, v4, v10

    xor-int/2addr v6, v10

    sput v6, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    .line 1165
    new-array v6, v8, [I

    sget v10, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    aput v10, v6, v5

    sget v10, Lccsansan/d/getPackageNameByRecord;->IncentiveDownloadUtils:I

    aput v10, v6, v3

    .line 1167
    sget v6, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    ushr-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v1, v5

    .line 1168
    sget v6, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    int-to-char v6, v6

    aput-char v6, v1, v3

    .line 1169
    sget v6, Lccsansan/d/getPackageNameByRecord;->IncentiveDownloadUtils:I

    ushr-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v1, v8

    .line 1170
    sget v6, Lccsansan/d/getPackageNameByRecord;->IncentiveDownloadUtils:I

    int-to-char v6, v6

    aput-char v6, v1, v9

    .line 1173
    invoke-static {v4}, Lccsansan/d/getPackageNameByRecord;->getDownloadingList([I)V

    .line 1176
    sget v6, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    shl-int/2addr v6, v3

    aget-char v7, v1, v5

    aput-char v7, v2, v6

    .line 1177
    sget v6, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    shl-int/2addr v6, v3

    add-int/2addr v6, v3

    aget-char v7, v1, v3

    aput-char v7, v2, v6

    .line 1178
    sget v6, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    shl-int/2addr v6, v3

    add-int/2addr v6, v8

    aget-char v7, v1, v8

    aput-char v7, v2, v6

    .line 1179
    sget v6, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    shl-int/2addr v6, v3

    add-int/2addr v6, v9

    aget-char v7, v1, v9

    aput-char v7, v2, v6

    .line 1132
    sget v6, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    add-int/2addr v6, v8

    sput v6, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    goto/16 :goto_0

    .line 1181
    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2, v5, p1}, Ljava/lang/String;-><init>([CII)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1182
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method static synthetic IncentiveDownloadUtils(Lccsansan/k/IncentiveDownloadUtils;)Ljava/util/Map;
    .locals 2

    .line 2
    sget v0, Lccsansan/k/IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x3b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/k/IncentiveDownloadUtils;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iget-object p0, p0, Lccsansan/k/IncentiveDownloadUtils;->removeDownloadListener:Ljava/util/Map;

    add-int/lit8 v1, v1, 0x21

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsansan/k/IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const/16 v0, 0x2b

    goto :goto_0

    :cond_1
    const/16 v0, 0x14

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-object p0

    :goto_1
    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
    .end packed-switch
.end method

.method static IncentiveDownloadUtils()V
    .locals 1

    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/k/IncentiveDownloadUtils;->IncentiveDownloadUtils:[I

    return-void

    :array_0
    .array-data 4
        -0x138f34d5
        -0x65cfdb75
        0xca89409
        0x5e435324
        0x258040cf
        0x5fe36146
        0x414895
        -0x55fe4cee
        0x52f4f19
        -0x7db3a0a9
        -0xf4e43ed
        -0x24db579c
        -0x77faac7b
        0x22a04162
        -0xaa9631f
        -0x1b80ae08
        -0x54f574d8
        -0x5b3284d2
    .end array-data
.end method

.method public static addDownloadListener()Lccsansan/k/IncentiveDownloadUtils;
    .locals 4

    .line 4
    sget v0, Lccsansan/k/IncentiveDownloadUtils;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x43

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/k/IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 1
    const/16 v0, 0xc

    goto :goto_0

    :cond_0
    const/16 v0, 0x38

    :goto_0
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lccsansan/k/IncentiveDownloadUtils;->addDownloadListener:Lccsansan/k/IncentiveDownloadUtils;

    goto :goto_2

    :pswitch_0
    sget-object v0, Lccsansan/k/IncentiveDownloadUtils;->addDownloadListener:Lccsansan/k/IncentiveDownloadUtils;

    if-nez v0, :cond_1

    :goto_1
    goto :goto_3

    :goto_2
    :try_start_0
    array-length v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_1

    goto :goto_1

    .line 2
    :goto_3
    new-instance v0, Lccsansan/k/IncentiveDownloadUtils;

    invoke-direct {v0}, Lccsansan/k/IncentiveDownloadUtils;-><init>()V

    sput-object v0, Lccsansan/k/IncentiveDownloadUtils;->addDownloadListener:Lccsansan/k/IncentiveDownloadUtils;

    .line 4
    nop

    :cond_1
    sget-object v0, Lccsansan/k/IncentiveDownloadUtils;->addDownloadListener:Lccsansan/k/IncentiveDownloadUtils;

    sget v2, Lccsansan/k/IncentiveDownloadUtils;->unifiedDownload:I

    add-int/lit8 v2, v2, 0x5

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/k/IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_2

    .line 1
    const/4 v2, 0x1

    goto :goto_4

    :cond_2
    const/4 v2, 0x0

    :goto_4
    packed-switch v2, :pswitch_data_1

    .line 4
    return-object v0

    :pswitch_1
    :try_start_1
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5

    :pswitch_data_0
    .packed-switch 0x38
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method private getDownloadingList()V
    .locals 5

    .line 1
    invoke-static {}, Lccsansan/r/IncentiveDownloadUtils;->removeDownloadListener()Lccsansan/r/IncentiveDownloadUtils;

    move-result-object v0

    new-instance v1, Lccsansan/k/IncentiveDownloadUtils$IncentiveDownloadUtils;

    invoke-direct {v1, p0}, Lccsansan/k/IncentiveDownloadUtils$IncentiveDownloadUtils;-><init>(Lccsansan/k/IncentiveDownloadUtils;)V

    const/16 v2, 0xe

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    rsub-int/lit8 v3, v3, 0x1b

    invoke-static {v2, v3}, Lccsansan/k/IncentiveDownloadUtils;->IncentiveDownloadUtils([II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lccsansan/r/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Lccsansan/r/addDownloadListener;)V

    sget v0, Lccsansan/k/IncentiveDownloadUtils;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x49

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/k/IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    return-void

    nop

    :array_0
    .array-data 4
        -0xab6cd2e
        0x578dc560
        0xbb7c684
        -0x4782ba55
        -0x1bc81eef
        -0x4c4968e
        -0x76f3f905
        -0x601c2100
        -0x4c0c9c6a
        0x43f86a77
        0x59f72970
        -0x524292c6
        -0x378464c8
        0x4395cc7
    .end array-data
.end method

.method private removeDownloadListener()V
    .locals 6

    .line 1
    invoke-static {}, Lccsansan/r/IncentiveDownloadUtils;->removeDownloadListener()Lccsansan/r/IncentiveDownloadUtils;

    move-result-object v0

    new-instance v1, Lccsansan/k/IncentiveDownloadUtils$addDownloadListener;

    invoke-direct {v1, p0}, Lccsansan/k/IncentiveDownloadUtils$addDownloadListener;-><init>(Lccsansan/k/IncentiveDownloadUtils;)V

    const/16 v2, 0xc

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    const/16 v3, 0x30

    const/4 v4, 0x0

    const-string v5, ""

    invoke-static {v5, v3, v4}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x17

    invoke-static {v2, v3}, Lccsansan/k/IncentiveDownloadUtils;->IncentiveDownloadUtils([II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lccsansan/r/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Lccsansan/r/addDownloadListener;)V

    sget v0, Lccsansan/k/IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x9

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/k/IncentiveDownloadUtils;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    return-void

    nop

    :array_0
    .array-data 4
        -0xab6cd2e
        0x578dc560
        0xbb7c684
        -0x4782ba55
        -0x1bc81eef
        -0x4c4968e
        -0x76f3f905
        -0x601c2100
        -0x4c0c9c6a
        0x43f86a77
        -0x54a27c2f
        0x31990abf
    .end array-data
.end method

.method static synthetic unifiedDownload()Ljava/lang/String;
    .locals 4

    .line 1
    sget v0, Lccsansan/k/IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x77

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/k/IncentiveDownloadUtils;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v3, 0x8

    packed-switch v0, :pswitch_data_0

    new-array v0, v3, [I

    fill-array-data v0, :array_0

    invoke-static {v2, v2, v2}, Lccsanandroid/view/View;->resolveSizeAndState(III)I

    move-result v1

    rsub-int/lit8 v1, v1, 0xd

    invoke-static {v0, v1}, Lccsansan/k/IncentiveDownloadUtils;->IncentiveDownloadUtils([II)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_0
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    invoke-static {v1, v2, v2}, Lccsanandroid/view/View;->resolveSizeAndState(III)I

    move-result v1

    mul-int/lit8 v1, v1, 0x42

    invoke-static {v0, v1}, Lccsansan/k/IncentiveDownloadUtils;->IncentiveDownloadUtils([II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :goto_2
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        -0x251e95e4
        -0x61aafcfa
        -0x1eb05332
        -0x488d0ff2
        0x27b804e2
        0xe854b82
        -0x596f8069
        0x79f7f422
    .end array-data

    :array_1
    .array-data 4
        -0x251e95e4
        -0x61aafcfa
        -0x1eb05332
        -0x488d0ff2
        0x27b804e2
        0xe854b82
        -0x596f8069
        0x79f7f422
    .end array-data
.end method
