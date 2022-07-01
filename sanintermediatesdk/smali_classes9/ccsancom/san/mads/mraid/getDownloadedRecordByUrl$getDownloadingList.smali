.class Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$getDownloadingList;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$removeDownloadListener$getDownloadingList;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$IncentiveDownloadUtils;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static addDownloadListener:I

.field private static getDownloadingList:[I

.field private static removeDownloadListener:I


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$IncentiveDownloadUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$getDownloadingList;->addDownloadListener:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$getDownloadingList;->removeDownloadListener:I

    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$getDownloadingList;->getDownloadingList:[I

    return-void

    :array_0
    .array-data 4
        -0x32d1d903    # -1.8261192E8f
        -0x1b584e12
        0x6087f011
        -0x49fb662e
        0x6fbc6c90
        0x5ebd6419
        0xa27c7bd
        -0x5cef4acb
        0x769ad54b
        -0x91ec21b
        -0x30ee6a51
        -0x5f871dd3
        0x550f3c9d
        0x50ae9234
        -0x3e9121f0
        -0x36fe113a
        -0x3e6714d8
        -0x7defcad
    .end array-data
.end method

.method constructor <init>(Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$IncentiveDownloadUtils;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$getDownloadingList;->IncentiveDownloadUtils:Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$IncentiveDownloadUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    sget-object v4, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$getDownloadingList;->getDownloadingList:[I

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


# virtual methods
.method public getDownloadingList()V
    .locals 10

    .line 3
    nop

    .line 0
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollBarSize()I

    move-result v1

    shr-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, 0x19

    invoke-static {v0, v1}, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$getDownloadingList;->IncentiveDownloadUtils([II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 1
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccsansan/bq/deleteDownItem;->getDownloadingList(Ljava/lang/String;I)V

    const/16 v0, 0x14

    new-array v2, v0, [I

    fill-array-data v2, :array_1

    invoke-static {v1, v1}, Lccsanandroid/view/View;->getDefaultSize(II)I

    move-result v3

    const/16 v4, 0x28

    rsub-int/lit8 v3, v3, 0x28

    invoke-static {v2, v3}, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$getDownloadingList;->IncentiveDownloadUtils([II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    .line 2
    const-string v3, "Ads.MraidNativeCommandHandler"

    invoke-static {v3, v2}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v2, p0, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$getDownloadingList;->IncentiveDownloadUtils:Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$IncentiveDownloadUtils;

    new-instance v3, Lccsancom/san/mads/mraid/addDownloadListener;

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    invoke-static {v1, v1}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    add-int/lit8 v9, v9, 0x29

    invoke-static {v0, v9}, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$getDownloadingList;->IncentiveDownloadUtils([II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lccsancom/san/mads/mraid/addDownloadListener;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$IncentiveDownloadUtils;->removeDownloadListener(Lccsancom/san/mads/mraid/addDownloadListener;)V

    sget v0, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$getDownloadingList;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x9

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$getDownloadingList;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v4, 0x1d

    :goto_0
    packed-switch v4, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/16 v0, 0xb

    :try_start_0
    div-int/2addr v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1d
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x28a3b212
        0x26576d78
        -0x16bd5666
        0x6a5cd352
        0x52b3f7d5
        -0x3eeee21b
        -0x26b138c6
        -0x690f5c71
        -0x57693b71
        0x36af2a1e
        -0x7679ba34
        0x485649f5
        0x2bc8abfc
        0x13fd5ada
    .end array-data

    :array_1
    .array-data 4
        -0x51f0d8ff
        0x5d1e926a
        -0x6f5d66c8
        -0x2d216fe8
        -0xbb8a6ed
        0x235c5dcf
        -0x3d319993    # -103.20005f
        0xa0f3e4
        -0x5cc4cc18
        -0x6a971424
        -0x18c18579
        0x7d12ce7e
        0x3f932d30
        0x36ca1852
        -0x77deec5e
        0x52f80b8f
        0x462485e9
        -0x1fd93390
        -0xde65432
        -0xd862919
    .end array-data

    :array_2
    .array-data 4
        -0x51f0d8ff
        0x5d1e926a
        -0x6f5d66c8
        -0x2d216fe8
        -0xbb8a6ed
        0x235c5dcf
        -0x3d319993    # -103.20005f
        0xa0f3e4
        -0x5cc4cc18
        -0x6a971424
        -0x18c18579
        0x7d12ce7e
        0x3f932d30
        0x36ca1852
        -0x77deec5e
        0x52f80b8f
        0x462485e9
        -0x1fd93390
        -0xde65432
        -0xd862919
    .end array-data
.end method

.method public removeDownloadListener()V
    .locals 3

    .line 1
    sget v0, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$getDownloadingList;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x75

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$getDownloadingList;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Image successfully saved."

    const-string v2, "Ads.MraidNativeCommandHandler"

    invoke-static {v2, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_0
    sget v0, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$getDownloadingList;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x61

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$getDownloadingList;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    return-void

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
