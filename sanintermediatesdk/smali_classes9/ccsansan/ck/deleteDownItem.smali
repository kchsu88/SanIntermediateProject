.class public final enum Lccsansan/ck/deleteDownItem;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsansan/ck/deleteDownItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lccsansan/ck/deleteDownItem;

.field public static final enum DEEPLINK:Lccsansan/ck/deleteDownItem;

.field public static final enum GOOGLEPLAY:Lccsansan/ck/deleteDownItem;

.field private static IncentiveDownloadUtils:C

.field public static final enum LANDINGPAGE:Lccsansan/ck/deleteDownItem;

.field public static final enum RESERVE:Lccsansan/ck/deleteDownItem;

.field public static final enum WEB:Lccsansan/ck/deleteDownItem;

.field public static final enum WEBINTERNAL:Lccsansan/ck/deleteDownItem;

.field public static final enum XZ:Lccsansan/ck/deleteDownItem;

.field private static addDownloadListener:I

.field private static getDownloadedRecordByUrl:I

.field private static getDownloadingList:C

.field private static final mValues:Lccsanandroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/util/SparseArray<",
            "Lccsansan/ck/deleteDownItem;",
            ">;"
        }
    .end annotation
.end field

.field private static removeDownloadListener:C

.field private static unifiedDownload:C


# instance fields
.field public actionClazzName:Ljava/lang/String;

.field public actionType:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const/4 v0, 0x0

    sput v0, Lccsansan/ck/deleteDownItem;->addDownloadListener:I

    const/4 v1, 0x1

    sput v1, Lccsansan/ck/deleteDownItem;->getDownloadedRecordByUrl:I

    invoke-static {}, Lccsansan/ck/deleteDownItem;->unifiedDownload()V

    .line 1
    new-instance v2, Lccsansan/ck/deleteDownItem;

    const-string v3, "GOOGLEPLAY"

    const-string v4, "com.san.mads.action.actiontype.ActionTypeApp"

    invoke-direct {v2, v3, v0, v1, v4}, Lccsansan/ck/deleteDownItem;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lccsansan/ck/deleteDownItem;->GOOGLEPLAY:Lccsansan/ck/deleteDownItem;

    .line 3
    new-instance v3, Lccsansan/ck/deleteDownItem;

    const-string v4, "WEB"

    const/4 v5, 0x2

    const-string v6, "com.san.mads.action.actiontype.ActionTypeWeb"

    invoke-direct {v3, v4, v1, v5, v6}, Lccsansan/ck/deleteDownItem;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lccsansan/ck/deleteDownItem;->WEB:Lccsansan/ck/deleteDownItem;

    .line 5
    new-instance v4, Lccsansan/ck/deleteDownItem;

    const-string v6, "WEBINTERNAL"

    const/4 v7, 0x3

    const-string v8, "com.san.mads.action.actiontype.ActionTypeWebInternal"

    invoke-direct {v4, v6, v5, v7, v8}, Lccsansan/ck/deleteDownItem;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lccsansan/ck/deleteDownItem;->WEBINTERNAL:Lccsansan/ck/deleteDownItem;

    .line 7
    new-instance v6, Lccsansan/ck/deleteDownItem;

    invoke-static {}, Lccsanandroid/os/Process;->myPid()I

    move-result v8

    shr-int/lit8 v8, v8, 0x16

    add-int/lit8 v8, v8, 0x21

    const-string v9, "\u1fb3\uc468\u3fd8\uec6e\ua2ca\u902d\ub4f9\u0d90\u4e40\uc02b\uec1e\u1410\u7634\u2828\ua73e\u65db\ue03f\uc415\u1a17\ue584\u24f5\uf6fc\u2a53\u1338\u1fcb\u063d\u4232\ub361\u56e0\uc5b5\ue518\ua8d2\u5eb5\u2552"

    invoke-static {v9, v8}, Lccsansan/ck/deleteDownItem;->getDownloadingList(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    const-string v9, "XZ"

    const/4 v10, 0x7

    invoke-direct {v6, v9, v7, v10, v8}, Lccsansan/ck/deleteDownItem;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lccsansan/ck/deleteDownItem;->XZ:Lccsansan/ck/deleteDownItem;

    .line 9
    new-instance v8, Lccsansan/ck/deleteDownItem;

    const/4 v9, -0x1

    const-string v11, "DEEPLINK"

    const/4 v12, 0x4

    const-string v13, "com.san.mads.action.actiontype.ActionTypeDeeplink"

    invoke-direct {v8, v11, v12, v9, v13}, Lccsansan/ck/deleteDownItem;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v8, Lccsansan/ck/deleteDownItem;->DEEPLINK:Lccsansan/ck/deleteDownItem;

    .line 11
    new-instance v9, Lccsansan/ck/deleteDownItem;

    const/4 v11, -0x3

    const-string v13, "LANDINGPAGE"

    const/4 v14, 0x5

    const-string v15, "com.san.action.ActionTypeDetailPage"

    invoke-direct {v9, v13, v14, v11, v15}, Lccsansan/ck/deleteDownItem;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v9, Lccsansan/ck/deleteDownItem;->LANDINGPAGE:Lccsansan/ck/deleteDownItem;

    .line 13
    new-instance v11, Lccsansan/ck/deleteDownItem;

    const/4 v13, -0x4

    const-string v15, "RESERVE"

    const/4 v14, 0x6

    const-string v12, "com.san.action.ActionTypeReserveApp"

    invoke-direct {v11, v15, v14, v13, v12}, Lccsansan/ck/deleteDownItem;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v11, Lccsansan/ck/deleteDownItem;->RESERVE:Lccsansan/ck/deleteDownItem;

    .line 14
    new-array v10, v10, [Lccsansan/ck/deleteDownItem;

    aput-object v2, v10, v0

    aput-object v3, v10, v1

    aput-object v4, v10, v5

    aput-object v6, v10, v7

    const/4 v2, 0x4

    aput-object v8, v10, v2

    const/4 v2, 0x5

    aput-object v9, v10, v2

    aput-object v11, v10, v14

    sput-object v10, Lccsansan/ck/deleteDownItem;->$VALUES:[Lccsansan/ck/deleteDownItem;

    .line 39
    new-instance v2, Lccsanandroid/util/SparseArray;

    invoke-direct {v2}, Lccsanandroid/util/SparseArray;-><init>()V

    sput-object v2, Lccsansan/ck/deleteDownItem;->mValues:Lccsanandroid/util/SparseArray;

    .line 42
    invoke-static {}, Lccsansan/ck/deleteDownItem;->values()[Lccsansan/ck/deleteDownItem;

    move-result-object v2

    array-length v3, v2

    .line 45
    sget v4, Lccsansan/ck/deleteDownItem;->addDownloadListener:I

    add-int/lit8 v4, v4, 0x6b

    rem-int/lit16 v6, v4, 0x80

    sput v6, Lccsansan/ck/deleteDownItem;->getDownloadedRecordByUrl:I

    rem-int/2addr v4, v5

    if-nez v4, :cond_0

    const/16 v4, 0x55

    goto :goto_0

    :cond_0
    const/16 v4, 0x43

    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 42
    :pswitch_0
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_4

    aget-object v6, v2, v4

    .line 43
    iget-object v7, v6, Lccsansan/ck/deleteDownItem;->actionClazzName:Ljava/lang/String;

    invoke-static {v7}, Lccsansan/bw/getPackageNameByRecord;->IncentiveDownloadUtils(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 45
    sget v7, Lccsansan/ck/deleteDownItem;->getDownloadedRecordByUrl:I

    add-int/lit8 v7, v7, 0x6f

    rem-int/lit16 v8, v7, 0x80

    sput v8, Lccsansan/ck/deleteDownItem;->addDownloadListener:I

    rem-int/2addr v7, v5

    if-eqz v7, :cond_1

    :cond_1
    sget-object v7, Lccsansan/ck/deleteDownItem;->mValues:Lccsanandroid/util/SparseArray;

    iget v8, v6, Lccsansan/ck/deleteDownItem;->actionType:I

    invoke-virtual {v7, v8, v6}, Lccsanandroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    sget v6, Lccsansan/ck/deleteDownItem;->addDownloadListener:I

    add-int/lit8 v6, v6, 0x5b

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lccsansan/ck/deleteDownItem;->getDownloadedRecordByUrl:I

    rem-int/2addr v6, v5

    if-nez v6, :cond_3

    const/4 v6, 0x1

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    :goto_2
    packed-switch v6, :pswitch_data_1

    :pswitch_1
    goto :goto_1

    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x55
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lccsansan/ck/deleteDownItem;->actionType:I

    .line 3
    iput-object p4, p0, Lccsansan/ck/deleteDownItem;->actionClazzName:Ljava/lang/String;

    return-void
.end method

.method public static getActionByType(I)Lccsansan/ck/deleteDownItem;
    .locals 2
    .param p0, "actionType"    # I

    .line 1
    .end local p0    # "actionType":I
    sget v0, Lccsansan/ck/deleteDownItem;->getDownloadedRecordByUrl:I

    add-int/lit8 v0, v0, 0x6d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/ck/deleteDownItem;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    sget-object v0, Lccsansan/ck/deleteDownItem;->mValues:Lccsanandroid/util/SparseArray;

    invoke-virtual {v0, p0}, Lccsanandroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lccsansan/ck/deleteDownItem;

    sget v0, Lccsansan/ck/deleteDownItem;->getDownloadedRecordByUrl:I

    add-int/lit8 v0, v0, 0x15

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/ck/deleteDownItem;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    return-object p0
.end method

.method private static getDownloadingList(Ljava/lang/String;I)Ljava/lang/String;
    .locals 12

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_0
    check-cast p0, [C

    .line 1105
    sget-object v0, Lccsansan/d/IncentiveSDK;->removeDownloadListener:Ljava/lang/Object;

    monitor-enter v0

    .line 1107
    :try_start_0
    array-length v1, p0

    new-array v1, v1, [C

    .line 1109
    const/4 v2, 0x0

    sput v2, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    .line 1110
    const/4 v3, 0x2

    new-array v4, v3, [C

    .line 1111
    :goto_0
    sget v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    array-length v6, p0

    if-ge v5, v6, :cond_2

    .line 1113
    sget v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    aget-char v5, p0, v5

    aput-char v5, v4, v2

    .line 1114
    sget v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    aget-char v5, p0, v5

    aput-char v5, v4, v6

    .line 1116
    const v5, 0xe370

    .line 1117
    const/4 v7, 0x0

    :goto_1
    const/16 v8, 0x10

    if-ge v7, v8, :cond_1

    .line 1119
    aget-char v8, v4, v6

    aget-char v9, v4, v2

    add-int/2addr v9, v5

    aget-char v10, v4, v2

    shl-int/lit8 v10, v10, 0x4

    sget-char v11, Lccsansan/ck/deleteDownItem;->getDownloadingList:C

    add-int/2addr v10, v11

    xor-int/2addr v9, v10

    aget-char v10, v4, v2

    ushr-int/lit8 v10, v10, 0x5

    sget-char v11, Lccsansan/ck/deleteDownItem;->IncentiveDownloadUtils:C

    add-int/2addr v10, v11

    xor-int/2addr v9, v10

    sub-int/2addr v8, v9

    int-to-char v8, v8

    aput-char v8, v4, v6

    .line 1122
    aget-char v8, v4, v2

    aget-char v9, v4, v6

    add-int/2addr v9, v5

    aget-char v10, v4, v6

    shl-int/lit8 v10, v10, 0x4

    sget-char v11, Lccsansan/ck/deleteDownItem;->removeDownloadListener:C

    add-int/2addr v10, v11

    xor-int/2addr v9, v10

    aget-char v10, v4, v6

    ushr-int/lit8 v10, v10, 0x5

    sget-char v11, Lccsansan/ck/deleteDownItem;->unifiedDownload:C

    add-int/2addr v10, v11

    xor-int/2addr v9, v10

    sub-int/2addr v8, v9

    int-to-char v8, v8

    aput-char v8, v4, v2

    .line 1126
    const v8, 0x9e37

    sub-int/2addr v5, v8

    .line 1117
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1128
    :cond_1
    sget v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    aget-char v7, v4, v2

    aput-char v7, v1, v5

    .line 1129
    sget v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    add-int/2addr v5, v6

    aget-char v6, v4, v6

    aput-char v6, v1, v5

    .line 1130
    sget v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    add-int/2addr v5, v3

    sput v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    .line 1131
    goto :goto_0

    .line 1134
    :cond_2
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v2, p1}, Ljava/lang/String;-><init>([CII)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1135
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method static unifiedDownload()V
    .locals 1

    const v0, 0xb9f4

    sput-char v0, Lccsansan/ck/deleteDownItem;->unifiedDownload:C

    const/16 v0, 0x7b6e

    sput-char v0, Lccsansan/ck/deleteDownItem;->getDownloadingList:C

    const/16 v0, 0x4e45

    sput-char v0, Lccsansan/ck/deleteDownItem;->IncentiveDownloadUtils:C

    const/16 v0, 0x51d2

    sput-char v0, Lccsansan/ck/deleteDownItem;->removeDownloadListener:C

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lccsansan/ck/deleteDownItem;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .line 1
    const-class v0, Lccsansan/ck/deleteDownItem;

    .end local p0    # "name":Ljava/lang/String;
    sget v1, Lccsansan/ck/deleteDownItem;->addDownloadListener:I

    add-int/lit8 v1, v1, 0x41

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/ck/deleteDownItem;->getDownloadedRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lccsansan/ck/deleteDownItem;

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    sget v0, Lccsansan/ck/deleteDownItem;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x6b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/ck/deleteDownItem;->getDownloadedRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/4 v2, 0x0

    :cond_1
    packed-switch v2, :pswitch_data_1

    return-object p0

    :pswitch_1
    const/16 v0, 0x36

    :try_start_1
    div-int/2addr v0, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object p0

    :catchall_1
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public static values()[Lccsansan/ck/deleteDownItem;
    .locals 2

    .line 1
    sget v0, Lccsansan/ck/deleteDownItem;->getDownloadedRecordByUrl:I

    add-int/lit8 v0, v0, 0x1d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/ck/deleteDownItem;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x26

    goto :goto_0

    :cond_0
    const/16 v0, 0x16

    :goto_0
    packed-switch v0, :pswitch_data_0

    sget-object v0, Lccsansan/ck/deleteDownItem;->$VALUES:[Lccsansan/ck/deleteDownItem;

    invoke-virtual {v0}, [Lccsansan/ck/deleteDownItem;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsansan/ck/deleteDownItem;

    goto :goto_1

    :pswitch_0
    sget-object v0, Lccsansan/ck/deleteDownItem;->$VALUES:[Lccsansan/ck/deleteDownItem;

    invoke-virtual {v0}, [Lccsansan/ck/deleteDownItem;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsansan/ck/deleteDownItem;

    goto :goto_2

    :goto_1
    const/16 v1, 0x4e

    :try_start_0
    div-int/lit8 v1, v1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getTypeByAction()I
    .locals 3

    .line 1
    sget v0, Lccsansan/ck/deleteDownItem;->getDownloadedRecordByUrl:I

    add-int/lit8 v0, v0, 0x35

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/ck/deleteDownItem;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x2c

    goto :goto_0

    :cond_0
    const/16 v0, 0x38

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lccsansan/ck/deleteDownItem;->actionType:I

    goto :goto_1

    :pswitch_0
    iget v0, p0, Lccsansan/ck/deleteDownItem;->actionType:I

    goto :goto_2

    :goto_1
    const/4 v1, 0x0

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_2
    sget v1, Lccsansan/ck/deleteDownItem;->getDownloadedRecordByUrl:I

    add-int/lit8 v1, v1, 0x73

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/ck/deleteDownItem;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/16 v1, 0x10

    goto :goto_3

    :cond_1
    const/16 v1, 0x12

    :goto_3
    packed-switch v1, :pswitch_data_1

    return v0

    :pswitch_1
    const/16 v1, 0x3c

    :try_start_1
    div-int/lit8 v1, v1, 0x0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    throw v0

    :catchall_1
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x38
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_1
    .end packed-switch
.end method
