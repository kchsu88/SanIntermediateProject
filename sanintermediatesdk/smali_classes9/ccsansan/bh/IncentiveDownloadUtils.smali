.class public final enum Lccsansan/bh/IncentiveDownloadUtils;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsansan/bh/IncentiveDownloadUtils;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lccsansan/bh/IncentiveDownloadUtils;

.field public static final enum GP_SUCCESS:Lccsansan/bh/IncentiveDownloadUtils;

.field private static IncentiveDownloadUtils:[I

.field public static final enum NETWORK_CONNECT:Lccsansan/bh/IncentiveDownloadUtils;

.field public static final enum P2P_AZ_FAILURE:Lccsansan/bh/IncentiveDownloadUtils;

.field public static final enum P2P_DISABLE:Lccsansan/bh/IncentiveDownloadUtils;

.field public static final enum P2P_FAILURE:Lccsansan/bh/IncentiveDownloadUtils;

.field public static final enum P2P_NOSINGED:Lccsansan/bh/IncentiveDownloadUtils;

.field public static final enum P2P_SUCCESS:Lccsansan/bh/IncentiveDownloadUtils;

.field public static final enum SESSION_SUCCESS:Lccsansan/bh/IncentiveDownloadUtils;

.field public static final enum SYSTEM_SUCCESS:Lccsansan/bh/IncentiveDownloadUtils;

.field public static final enum USER_PRESENT:Lccsansan/bh/IncentiveDownloadUtils;

.field private static addDownloadListener:I

.field private static getDownloadingList:I


# instance fields
.field private name:Ljava/lang/String;

.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const/4 v0, 0x0

    sput v0, Lccsansan/bh/IncentiveDownloadUtils;->getDownloadingList:I

    const/4 v1, 0x1

    sput v1, Lccsansan/bh/IncentiveDownloadUtils;->addDownloadListener:I

    invoke-static {}, Lccsansan/bh/IncentiveDownloadUtils;->addDownloadListener()V

    .line 1
    new-instance v2, Lccsansan/bh/IncentiveDownloadUtils;

    const-string v3, "P2P_DISABLE"

    const-string v4, "p2p_disable"

    invoke-direct {v2, v3, v0, v0, v4}, Lccsansan/bh/IncentiveDownloadUtils;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lccsansan/bh/IncentiveDownloadUtils;->P2P_DISABLE:Lccsansan/bh/IncentiveDownloadUtils;

    .line 6
    new-instance v3, Lccsansan/bh/IncentiveDownloadUtils;

    const-string v4, "P2P_NOSINGED"

    const-string v5, "p2p_nosinged"

    invoke-direct {v3, v4, v1, v1, v5}, Lccsansan/bh/IncentiveDownloadUtils;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lccsansan/bh/IncentiveDownloadUtils;->P2P_NOSINGED:Lccsansan/bh/IncentiveDownloadUtils;

    .line 11
    new-instance v4, Lccsansan/bh/IncentiveDownloadUtils;

    const-string v5, "P2P_FAILURE"

    const/4 v6, 0x2

    const-string v7, "p2p_failure"

    invoke-direct {v4, v5, v6, v6, v7}, Lccsansan/bh/IncentiveDownloadUtils;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lccsansan/bh/IncentiveDownloadUtils;->P2P_FAILURE:Lccsansan/bh/IncentiveDownloadUtils;

    .line 16
    new-instance v5, Lccsansan/bh/IncentiveDownloadUtils;

    const/16 v7, 0xa

    new-array v8, v7, [I

    fill-array-data v8, :array_0

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v9

    shr-int/lit8 v9, v9, 0x10

    add-int/lit8 v9, v9, 0x13

    invoke-static {v8, v9}, Lccsansan/bh/IncentiveDownloadUtils;->addDownloadListener([II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    const-string v9, "P2P_AZ_FAILURE"

    const/4 v10, 0x3

    invoke-direct {v5, v9, v10, v10, v8}, Lccsansan/bh/IncentiveDownloadUtils;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lccsansan/bh/IncentiveDownloadUtils;->P2P_AZ_FAILURE:Lccsansan/bh/IncentiveDownloadUtils;

    .line 21
    new-instance v8, Lccsansan/bh/IncentiveDownloadUtils;

    const-string v9, "P2P_SUCCESS"

    const/4 v11, 0x4

    const-string v12, "p2p_success"

    invoke-direct {v8, v9, v11, v11, v12}, Lccsansan/bh/IncentiveDownloadUtils;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v8, Lccsansan/bh/IncentiveDownloadUtils;->P2P_SUCCESS:Lccsansan/bh/IncentiveDownloadUtils;

    .line 26
    new-instance v9, Lccsansan/bh/IncentiveDownloadUtils;

    const-string v12, "GP_SUCCESS"

    const/4 v13, 0x5

    const-string v14, "gp_success"

    invoke-direct {v9, v12, v13, v13, v14}, Lccsansan/bh/IncentiveDownloadUtils;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v9, Lccsansan/bh/IncentiveDownloadUtils;->GP_SUCCESS:Lccsansan/bh/IncentiveDownloadUtils;

    .line 31
    new-instance v12, Lccsansan/bh/IncentiveDownloadUtils;

    const-string v14, "SESSION_SUCCESS"

    const/4 v15, 0x6

    const-string v13, "session_success"

    invoke-direct {v12, v14, v15, v15, v13}, Lccsansan/bh/IncentiveDownloadUtils;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v12, Lccsansan/bh/IncentiveDownloadUtils;->SESSION_SUCCESS:Lccsansan/bh/IncentiveDownloadUtils;

    .line 36
    new-instance v13, Lccsansan/bh/IncentiveDownloadUtils;

    const-string v14, "SYSTEM_SUCCESS"

    const/4 v15, 0x7

    const-string v11, "system_success"

    invoke-direct {v13, v14, v15, v15, v11}, Lccsansan/bh/IncentiveDownloadUtils;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v13, Lccsansan/bh/IncentiveDownloadUtils;->SYSTEM_SUCCESS:Lccsansan/bh/IncentiveDownloadUtils;

    .line 40
    new-instance v11, Lccsansan/bh/IncentiveDownloadUtils;

    const-string v14, "USER_PRESENT"

    const/16 v15, 0x8

    const-string v10, "user_present"

    invoke-direct {v11, v14, v15, v15, v10}, Lccsansan/bh/IncentiveDownloadUtils;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v11, Lccsansan/bh/IncentiveDownloadUtils;->USER_PRESENT:Lccsansan/bh/IncentiveDownloadUtils;

    .line 44
    new-instance v10, Lccsansan/bh/IncentiveDownloadUtils;

    const-string v14, "NETWORK_CONNECT"

    const/16 v15, 0x9

    const-string v6, "network_connect"

    invoke-direct {v10, v14, v15, v15, v6}, Lccsansan/bh/IncentiveDownloadUtils;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v10, Lccsansan/bh/IncentiveDownloadUtils;->NETWORK_CONNECT:Lccsansan/bh/IncentiveDownloadUtils;

    .line 45
    new-array v6, v7, [Lccsansan/bh/IncentiveDownloadUtils;

    aput-object v2, v6, v0

    aput-object v3, v6, v1

    const/4 v2, 0x2

    aput-object v4, v6, v2

    const/4 v2, 0x3

    aput-object v5, v6, v2

    const/4 v2, 0x4

    aput-object v8, v6, v2

    const/4 v2, 0x5

    aput-object v9, v6, v2

    const/4 v2, 0x6

    aput-object v12, v6, v2

    const/4 v2, 0x7

    aput-object v13, v6, v2

    const/16 v2, 0x8

    aput-object v11, v6, v2

    aput-object v10, v6, v15

    sput-object v6, Lccsansan/bh/IncentiveDownloadUtils;->$VALUES:[Lccsansan/bh/IncentiveDownloadUtils;

    sget v2, Lccsansan/bh/IncentiveDownloadUtils;->addDownloadListener:I

    add-int/lit8 v2, v2, 0x33

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/bh/IncentiveDownloadUtils;->getDownloadingList:I

    const/4 v3, 0x2

    rem-int/2addr v2, v3

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        -0x4b979e41
        0x7b03ed28    # 6.85001E35f
        0x363cfac7
        -0x26e4ce6d
        0x12b481d9
        0x7f37c617
        0x5d76b1a5
        0x32426db2
        -0x155df5c3
        -0x5a1a1c92
    .end array-data
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
    iput p3, p0, Lccsansan/bh/IncentiveDownloadUtils;->value:I

    .line 3
    iput-object p4, p0, Lccsansan/bh/IncentiveDownloadUtils;->name:Ljava/lang/String;

    return-void
.end method

.method private static addDownloadListener([II)Ljava/lang/String;
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
    sget-object v4, Lccsansan/bh/IncentiveDownloadUtils;->IncentiveDownloadUtils:[I

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

.method static addDownloadListener()V
    .locals 1

    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/bh/IncentiveDownloadUtils;->IncentiveDownloadUtils:[I

    return-void

    :array_0
    .array-data 4
        -0x315b427d
        -0x52d591e
        -0xc6316bd
        -0x568e2d1
        -0x5f8ebdf7
        -0x168adcc3
        -0x76eb5a20
        -0x5f1a5fa7
        -0x30c3922b
        -0x45f20afd
        -0x3c5ded56
        0x12fdd21a
        -0x31c17c40
        0x5e903c1a
        -0x67aca4f0
        -0x73758a0d
        -0x433e236d
        0x5d9a38a0    # 1.389101E18f
    .end array-data
.end method

.method public static fromName(Ljava/lang/String;)Lccsansan/bh/IncentiveDownloadUtils;
    .locals 7
    .param p0, "name"    # Ljava/lang/String;

    .line 2
    .end local p0    # "name":Ljava/lang/String;
    sget v0, Lccsansan/bh/IncentiveDownloadUtils;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bh/IncentiveDownloadUtils;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lccsansan/bh/IncentiveDownloadUtils;->values()[Lccsansan/bh/IncentiveDownloadUtils;

    move-result-object v0

    array-length v3, v0

    const/4 v4, 0x1

    goto :goto_1

    :pswitch_0
    invoke-static {}, Lccsansan/bh/IncentiveDownloadUtils;->values()[Lccsansan/bh/IncentiveDownloadUtils;

    move-result-object v0

    array-length v3, v0

    const/4 v4, 0x0

    .line 2
    :goto_1
    nop

    .line 1
    :goto_2
    if-ge v4, v3, :cond_4

    .line 2
    sget v5, Lccsansan/bh/IncentiveDownloadUtils;->getDownloadingList:I

    add-int/lit8 v5, v5, 0x17

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lccsansan/bh/IncentiveDownloadUtils;->addDownloadListener:I

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_1

    .line 1
    :cond_1
    aget-object v5, v0, v4

    .line 2
    invoke-virtual {v5}, Lccsansan/bh/IncentiveDownloadUtils;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1
    const/4 v6, 0x1

    goto :goto_3

    :cond_2
    const/4 v6, 0x0

    :goto_3
    packed-switch v6, :pswitch_data_1

    .line 2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1
    :pswitch_1
    sget p0, Lccsansan/bh/IncentiveDownloadUtils;->getDownloadingList:I

    add-int/lit8 p0, p0, 0x33

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/bh/IncentiveDownloadUtils;->addDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_3

    const/16 p0, 0x39

    :try_start_0
    div-int/2addr p0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v5

    :catchall_0
    move-exception p0

    throw p0

    .line 2
    :cond_3
    return-object v5

    :cond_4
    const/4 p0, 0x0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lccsansan/bh/IncentiveDownloadUtils;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .line 1
    const-class v0, Lccsansan/bh/IncentiveDownloadUtils;

    .end local p0    # "name":Ljava/lang/String;
    sget v1, Lccsansan/bh/IncentiveDownloadUtils;->addDownloadListener:I

    add-int/lit8 v1, v1, 0x3

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/bh/IncentiveDownloadUtils;->getDownloadingList:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lccsansan/bh/IncentiveDownloadUtils;

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 v0, 0x3b

    :try_start_0
    div-int/2addr v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static values()[Lccsansan/bh/IncentiveDownloadUtils;
    .locals 3

    .line 1
    sget v0, Lccsansan/bh/IncentiveDownloadUtils;->getDownloadingList:I

    add-int/lit8 v0, v0, 0x7

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bh/IncentiveDownloadUtils;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    sget-object v0, Lccsansan/bh/IncentiveDownloadUtils;->$VALUES:[Lccsansan/bh/IncentiveDownloadUtils;

    invoke-virtual {v0}, [Lccsansan/bh/IncentiveDownloadUtils;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsansan/bh/IncentiveDownloadUtils;

    sget v1, Lccsansan/bh/IncentiveDownloadUtils;->addDownloadListener:I

    add-int/lit8 v1, v1, 0x69

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/bh/IncentiveDownloadUtils;->getDownloadingList:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/16 v1, 0xb

    goto :goto_0

    :cond_1
    const/16 v1, 0x45

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-object v0

    :goto_1
    const/16 v1, 0x9

    :try_start_0
    div-int/lit8 v1, v1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x45
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 4

    .line 1
    sget v0, Lccsansan/bh/IncentiveDownloadUtils;->getDownloadingList:I

    add-int/lit8 v0, v0, 0x37

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bh/IncentiveDownloadUtils;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsansan/bh/IncentiveDownloadUtils;->name:Ljava/lang/String;

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lccsansan/bh/IncentiveDownloadUtils;->name:Ljava/lang/String;

    const/16 v3, 0x31

    :try_start_0
    div-int/2addr v3, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    throw v0

    :goto_1
    add-int/lit8 v1, v1, 0x59

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/bh/IncentiveDownloadUtils;->getDownloadingList:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public value()I
    .locals 3

    .line 1
    sget v0, Lccsansan/bh/IncentiveDownloadUtils;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bh/IncentiveDownloadUtils;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iget v0, p0, Lccsansan/bh/IncentiveDownloadUtils;->value:I

    add-int/lit8 v1, v1, 0x23

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/bh/IncentiveDownloadUtils;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    return v0
.end method
