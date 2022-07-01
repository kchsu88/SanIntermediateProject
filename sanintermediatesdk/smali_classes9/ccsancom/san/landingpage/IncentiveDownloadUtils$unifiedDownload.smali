.class Lccsancom/san/landingpage/IncentiveDownloadUtils$unifiedDownload;
.super Lccsanandroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/san/landingpage/IncentiveDownloadUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static IncentiveDownloadUtils:[I

.field private static getDownloadingList:I

.field private static unifiedDownload:I


# instance fields
.field final synthetic removeDownloadListener:Lccsancom/san/landingpage/IncentiveDownloadUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/landingpage/IncentiveDownloadUtils$unifiedDownload;->getDownloadingList:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/landingpage/IncentiveDownloadUtils$unifiedDownload;->unifiedDownload:I

    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lccsancom/san/landingpage/IncentiveDownloadUtils$unifiedDownload;->IncentiveDownloadUtils:[I

    return-void

    :array_0
    .array-data 4
        0x55748187
        -0x70d20cd3
        0x1d948504
        0x12458d18
        0x501f1e73
        -0x358a5cd
        0x16cb6bc4
        0x57f6c39f
        0x1bacc181
        -0x210dff1e
        -0x454a6a66
        -0x3404c342    # -3.2930172E7f
        0x693403d0
        0x58fcd737
        -0x2ce5631e
        -0x2915d019
        0x452940bf
        -0xc9743c6
    .end array-data
.end method

.method constructor <init>(Lccsancom/san/landingpage/IncentiveDownloadUtils;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils$unifiedDownload;->removeDownloadListener:Lccsancom/san/landingpage/IncentiveDownloadUtils;

    invoke-direct {p0}, Lccsanandroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static removeDownloadListener([II)Ljava/lang/String;
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
    sget-object v4, Lccsancom/san/landingpage/IncentiveDownloadUtils$unifiedDownload;->IncentiveDownloadUtils:[I

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
.method public onReceive(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;)V
    .locals 15

    move-object v1, p0

    .line 7
    sget v0, Lccsancom/san/landingpage/IncentiveDownloadUtils$unifiedDownload;->getDownloadingList:I

    add-int/lit8 v0, v0, 0x45

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsancom/san/landingpage/IncentiveDownloadUtils$unifiedDownload;->unifiedDownload:I

    const/4 v2, 0x2

    rem-int/2addr v0, v2

    if-nez v0, :cond_0

    .line 1
    :cond_0
    :try_start_0
    iget-object v0, v1, Lccsancom/san/landingpage/IncentiveDownloadUtils$unifiedDownload;->removeDownloadListener:Lccsancom/san/landingpage/IncentiveDownloadUtils;

    invoke-static {v0}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsancom/san/landingpage/IncentiveDownloadUtils;)Lccsansan/dt/removeDownloadListener;

    move-result-object v0

    invoke-static {v0}, Lccsancom/san/landingpage/unifiedDownload;->getDownloadingList(Lccsansan/dt/removeDownloadListener;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    .line 7
    const/16 v0, 0x4e

    goto :goto_0

    :cond_1
    const/16 v0, 0x31

    :goto_0
    packed-switch v0, :pswitch_data_0

    sget v0, Lccsancom/san/landingpage/IncentiveDownloadUtils$unifiedDownload;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x19

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsancom/san/landingpage/IncentiveDownloadUtils$unifiedDownload;->getDownloadingList:I

    rem-int/2addr v0, v2

    if-eqz v0, :cond_2

    .line 1
    :cond_2
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    .line 2
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Lccsanandroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x6

    const/4 v6, 0x3

    const-string v7, "LandPageViewControl"

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v0, :cond_6

    :try_start_2
    iget-object v0, v1, Lccsancom/san/landingpage/IncentiveDownloadUtils$unifiedDownload;->removeDownloadListener:Lccsancom/san/landingpage/IncentiveDownloadUtils;

    invoke-static {v0}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsancom/san/landingpage/IncentiveDownloadUtils;)Lccsansan/dt/removeDownloadListener;

    move-result-object v0

    move-object/from16 v10, p1

    invoke-static {v10, v0}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->unifiedDownload(Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v0, :cond_3

    .line 7
    const/16 v0, 0x44

    goto :goto_1

    :cond_3
    const/16 v0, 0x18

    :goto_1
    packed-switch v0, :pswitch_data_1

    sget v0, Lccsancom/san/landingpage/IncentiveDownloadUtils$unifiedDownload;->unifiedDownload:I

    add-int/2addr v0, v8

    rem-int/lit16 v10, v0, 0x80

    sput v10, Lccsancom/san/landingpage/IncentiveDownloadUtils$unifiedDownload;->getDownloadingList:I

    rem-int/2addr v0, v2

    if-eqz v0, :cond_4

    .line 2
    :cond_4
    :try_start_3
    new-array v0, v5, [I

    const v5, 0x766c4357

    aput v5, v0, v9

    const v5, 0x6dab6780

    aput v5, v0, v8

    const v5, 0x7cdc367d

    aput v5, v0, v2

    const v5, -0x20daffe4

    aput v5, v0, v6

    const v5, -0x343e72f0    # -2.536912E7f

    aput v5, v0, v4

    const v4, -0x1382f734

    aput v4, v0, v3

    const-string v3, ""

    const/16 v4, 0x30

    invoke-static {v3, v4, v9, v9}, Lccsanandroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v3

    add-int/lit8 v3, v3, 0xc

    invoke-static {v0, v3}, Lccsancom/san/landingpage/IncentiveDownloadUtils$unifiedDownload;->removeDownloadListener([II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v7, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v8, v1, Lccsancom/san/landingpage/IncentiveDownloadUtils$unifiedDownload;->removeDownloadListener:Lccsancom/san/landingpage/IncentiveDownloadUtils;

    invoke-static {v8}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsancom/san/landingpage/IncentiveDownloadUtils;)Lccsansan/dt/removeDownloadListener;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/dt/removeDownloadListener;->getErrorCode()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x17

    const-wide/16 v11, 0x64

    const-wide/16 v13, 0x64

    invoke-virtual/range {v8 .. v14}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;IJJ)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 7
    sget v0, Lccsancom/san/landingpage/IncentiveDownloadUtils$unifiedDownload;->getDownloadingList:I

    add-int/lit8 v0, v0, 0x65

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsancom/san/landingpage/IncentiveDownloadUtils$unifiedDownload;->unifiedDownload:I

    rem-int/2addr v0, v2

    if-nez v0, :cond_5

    const/16 v0, 0x50

    goto :goto_2

    :cond_5
    const/16 v0, 0x58

    goto :goto_2

    .line 4
    :cond_6
    :pswitch_0
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    .line 5
    :try_start_4
    invoke-virtual/range {p2 .. p2}, Lccsanandroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    new-array v0, v0, [I

    const v10, 0x525cd46e

    aput v10, v0, v9

    const v9, -0x70ee3ba8

    aput v9, v0, v8

    const v8, 0x3c4387e5

    aput v8, v0, v2

    const v2, 0x7491b960

    aput v2, v0, v6

    const v2, 0x643ab71d

    aput v2, v0, v4

    const v2, 0xd8c8892

    aput v2, v0, v3

    const v2, -0x3bbae0ef

    aput v2, v0, v5

    const/4 v2, 0x7

    const v3, 0x375e59d

    aput v3, v0, v2

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    add-int/lit8 v2, v2, 0xd

    invoke-static {v0, v2}, Lccsancom/san/landingpage/IncentiveDownloadUtils$unifiedDownload;->removeDownloadListener([II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v7, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v8, v1, Lccsancom/san/landingpage/IncentiveDownloadUtils$unifiedDownload;->removeDownloadListener:Lccsancom/san/landingpage/IncentiveDownloadUtils;

    invoke-static {v8}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsancom/san/landingpage/IncentiveDownloadUtils;)Lccsansan/dt/removeDownloadListener;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/dt/removeDownloadListener;->getErrorCode()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x15

    const-wide/16 v11, 0x64

    const-wide/16 v13, 0x64

    invoke-virtual/range {v8 .. v14}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;IJJ)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    :cond_7
    :goto_2
    :pswitch_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x18
        :pswitch_0
    .end packed-switch
.end method
