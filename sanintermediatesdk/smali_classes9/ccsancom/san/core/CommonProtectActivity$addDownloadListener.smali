.class Lccsancom/san/core/CommonProtectActivity$addDownloadListener;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/core/CommonProtectActivity;->unifiedDownload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static IncentiveDownloadUtils:[I

.field private static addDownloadListener:I

.field private static getDownloadingList:I


# instance fields
.field final synthetic removeDownloadListener:Lccsancom/san/core/CommonProtectActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/core/CommonProtectActivity$addDownloadListener;->addDownloadListener:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/core/CommonProtectActivity$addDownloadListener;->getDownloadingList:I

    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lccsancom/san/core/CommonProtectActivity$addDownloadListener;->IncentiveDownloadUtils:[I

    return-void

    :array_0
    .array-data 4
        0x8ebd0ea
        0x2c471996
        -0x1efaa7d7
        -0x1382662
        0x425a3863
        0x432220fb
        -0x2e41de74
        0x59fee103
        0x27a4eb21
        -0x7fb2f9fe
        0x7a9c57d5
        0x247d4618    # 5.492E-17f
        0x6c4493aa
        0x5281e67
        -0xc2e0a4
        0x282fdf85
        0x45f5ab26
        0x6ef3b66
    .end array-data
.end method

.method constructor <init>(Lccsancom/san/core/CommonProtectActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/core/CommonProtectActivity$addDownloadListener;->removeDownloadListener:Lccsancom/san/core/CommonProtectActivity;

    invoke-direct {p0}, Lccsancom/san/ads/Task;-><init>()V

    return-void
.end method

.method private static unifiedDownload([II)Ljava/lang/String;
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
    sget-object v4, Lccsancom/san/core/CommonProtectActivity$addDownloadListener;->IncentiveDownloadUtils:[I

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
.method public execute()V
    .locals 26

    .line 71
    move-object/from16 v1, p0

    const-string v0, "url"

    const-string v2, "pkg"

    const-string v3, "CommonProtectActivity"

    const-string v4, "mode"

    const-string v5, "status"

    const-string v6, "portal"

    sget v7, Lccsancom/san/core/CommonProtectActivity$addDownloadListener;->addDownloadListener:I

    add-int/lit8 v7, v7, 0x5d

    rem-int/lit16 v8, v7, 0x80

    sput v8, Lccsancom/san/core/CommonProtectActivity$addDownloadListener;->getDownloadingList:I

    const/4 v8, 0x2

    rem-int/2addr v7, v8

    if-nez v7, :cond_0

    .line 1
    iget-object v7, v1, Lccsancom/san/core/CommonProtectActivity$addDownloadListener;->removeDownloadListener:Lccsancom/san/core/CommonProtectActivity;

    invoke-virtual {v7}, Lccsanandroid/app/Activity;->getIntent()Lccsanandroid/content/Intent;

    move-result-object v7

    const/4 v9, 0x0

    :try_start_0
    invoke-super {v9}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_1

    goto :goto_0

    .line 71
    :catchall_0
    move-exception v0

    move-object v2, v0

    throw v2

    .line 1
    :cond_0
    iget-object v7, v1, Lccsancom/san/core/CommonProtectActivity$addDownloadListener;->removeDownloadListener:Lccsancom/san/core/CommonProtectActivity;

    invoke-virtual {v7}, Lccsanandroid/app/Activity;->getIntent()Lccsanandroid/content/Intent;

    move-result-object v7

    if-nez v7, :cond_1

    .line 71
    :goto_0
    return-void

    .line 6
    :cond_1
    :try_start_1
    invoke-virtual {v7, v6}, Lccsanandroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 7
    invoke-virtual {v7, v5}, Lccsanandroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 8
    invoke-virtual {v7, v2}, Lccsanandroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 9
    invoke-virtual {v7, v0}, Lccsanandroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 10
    invoke-virtual {v7, v4}, Lccsanandroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 11
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "-----portal:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "---pkg:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v3, v13}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-static {v11}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v16, 0x4

    const v17, 0x6b7212a4

    const/16 v18, 0x3

    const v19, -0x65c08181    # -3.9600057E-23f

    const v20, -0x4a75daa6

    const v21, -0x1f41fa80

    const/16 v14, 0xe

    const-string v15, "cls_name"

    const-string v8, "tm"

    const/16 v22, 0x1

    const/16 v23, 0x0

    if-eqz v13, :cond_3

    :try_start_2
    invoke-static {v12}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 13
    invoke-static {v9}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 14
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    .line 15
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 16
    invoke-virtual {v2, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-virtual {v2, v5, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-virtual {v2, v15, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-virtual {v2, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v3, v14, [I

    aput v21, v3, v23

    aput v20, v3, v22

    const/4 v4, 0x2

    aput v19, v3, v4

    aput v17, v3, v18

    const v4, -0x42f530c5

    aput v4, v3, v16

    const v4, 0x351f8d8c

    const/4 v5, 0x5

    aput v4, v3, v5

    const/4 v4, 0x6

    const v5, -0x5223eee7

    aput v5, v3, v4

    const/4 v4, 0x7

    const v5, 0x1e4e63e7

    aput v5, v3, v4

    const/16 v4, 0x8

    const v5, 0x100bcc86

    aput v5, v3, v4

    const/16 v4, 0x9

    const v5, -0x2c805abc

    aput v5, v3, v4

    const/16 v4, 0xa

    const v5, -0x63da8342

    aput v5, v3, v4

    const/16 v4, 0xb

    const v5, -0x68b8ae21

    aput v5, v3, v4

    const/16 v4, 0xc

    const v5, -0x22ffb7d5

    aput v5, v3, v4

    const/16 v4, 0xd

    const v5, 0x471c1901

    aput v5, v3, v4

    invoke-static {}, Lccsanandroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    add-int/lit8 v4, v4, 0x19

    invoke-static {v3, v4}, Lccsancom/san/core/CommonProtectActivity$addDownloadListener;->unifiedDownload([II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    .line 21
    invoke-static {v0, v3, v2}, Lccsansan/dl/getDownloadingList;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    :cond_2
    return-void

    .line 26
    :cond_3
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v13

    invoke-virtual {v13, v11, v12}, Lccsansan/m/unifiedDownload;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/getDownloadedList;

    move-result-object v13

    if-eqz v13, :cond_4

    .line 1
    const/16 v24, 0x1

    goto :goto_1

    :cond_4
    const/16 v24, 0x0

    :goto_1
    packed-switch v24, :pswitch_data_0

    goto :goto_2

    .line 28
    :pswitch_0
    iget-object v14, v13, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    invoke-static {v14}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 29
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v14

    iget-object v1, v13, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    invoke-virtual {v14, v1, v11}, Lccsansan/m/unifiedDownload;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/removeDownloadListener;

    move-result-object v1

    goto :goto_3

    .line 31
    :cond_5
    :goto_2
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v1

    invoke-virtual {v1, v11}, Lccsansan/m/unifiedDownload;->addDownloadListener(Ljava/lang/String;)Lccsansan/m/removeDownloadListener;

    move-result-object v1

    .line 71
    nop

    .line 29
    :goto_3
    nop

    .line 33
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v14

    .line 34
    move-object/from16 v25, v14

    new-instance v14, Ljava/util/LinkedHashMap;

    invoke-direct {v14}, Ljava/util/LinkedHashMap;-><init>()V

    .line 35
    invoke-virtual {v14, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-virtual {v14, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    invoke-virtual {v14, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    invoke-virtual {v14, v5, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-virtual {v14, v15, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-virtual {v14, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v1, :cond_6

    .line 1
    const/4 v0, 0x1

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    :goto_4
    const-string v2, "sourcetype"

    packed-switch v0, :pswitch_data_1

    .line 42
    :try_start_3
    iget-object v0, v1, Lccsansan/m/removeDownloadListener;->resolveUrl:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_6

    .line 60
    :pswitch_1
    if-eqz v13, :cond_a

    .line 1
    sget v0, Lccsancom/san/core/CommonProtectActivity$addDownloadListener;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x6d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/core/CommonProtectActivity$addDownloadListener;->getDownloadingList:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    if-nez v0, :cond_7

    .line 64
    :cond_7
    :try_start_4
    iget-object v0, v13, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    if-nez v0, :cond_9

    .line 71
    sget v0, Lccsancom/san/core/CommonProtectActivity$addDownloadListener;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x59

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/core/CommonProtectActivity$addDownloadListener;->getDownloadingList:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    if-nez v0, :cond_8

    .line 64
    :cond_8
    const-string v0, "ad_id"

    .line 65
    :try_start_5
    iget-object v1, v13, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    nop

    .line 67
    invoke-virtual {v13, v2}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    :cond_a
    :goto_5
    goto/16 :goto_c

    .line 42
    :goto_6
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    if-nez v0, :cond_b

    const-string v0, "placement_id"

    .line 43
    :try_start_6
    iget-object v3, v1, Lccsansan/m/removeDownloadListener;->resolveUrl:Ljava/lang/String;

    invoke-virtual {v14, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    :cond_b
    iget-object v0, v1, Lccsansan/m/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    if-nez v0, :cond_c

    const-string v0, "ad_id"

    .line 46
    :try_start_7
    iget-object v3, v1, Lccsansan/m/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {v14, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 71
    sget v0, Lccsancom/san/core/CommonProtectActivity$addDownloadListener;->getDownloadingList:I

    add-int/lit8 v0, v0, 0x6f

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsancom/san/core/CommonProtectActivity$addDownloadListener;->addDownloadListener:I

    const/4 v3, 0x2

    rem-int/2addr v0, v3

    if-eqz v0, :cond_c

    .line 46
    :cond_c
    const-string v0, "did"

    .line 48
    :try_start_8
    iget-object v3, v1, Lccsansan/m/removeDownloadListener;->ActionTypeDownload:Ljava/lang/String;

    invoke-virtual {v14, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    const-string v0, "cpiparam"

    .line 49
    :try_start_9
    iget-object v3, v1, Lccsansan/m/removeDownloadListener;->performActionWhenOffline:Ljava/lang/String;

    invoke-virtual {v14, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    const-string v0, "pid"

    .line 50
    :try_start_a
    iget-object v3, v1, Lccsansan/m/removeDownloadListener;->shouldTryHandlingAction:Ljava/lang/String;

    invoke-virtual {v14, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    const-string v0, "sid"

    :try_start_b
    const-string v3, "sid"

    .line 51
    invoke-virtual {v1, v3}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    const-string v0, "creative_id"

    .line 52
    :try_start_c
    iget-object v3, v1, Lccsansan/m/removeDownloadListener;->ActionTypeDetailPage:Ljava/lang/String;

    invoke-virtual {v14, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    const-string v0, "formatid"

    .line 53
    :try_start_d
    iget-object v3, v1, Lccsansan/m/removeDownloadListener;->execute:Ljava/lang/String;

    invoke-virtual {v14, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    const-string v0, "adnet"

    .line 54
    :try_start_e
    iget-object v3, v1, Lccsansan/m/removeDownloadListener;->IncentiveSDK$1:Ljava/lang/String;

    invoke-virtual {v14, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, v1, Lccsansan/m/removeDownloadListener;->getActionType:Ljava/lang/String;

    .line 56
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    if-eqz v3, :cond_f

    .line 71
    sget v3, Lccsancom/san/core/CommonProtectActivity$addDownloadListener;->getDownloadingList:I

    add-int/lit8 v3, v3, 0x67

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lccsancom/san/core/CommonProtectActivity$addDownloadListener;->addDownloadListener:I

    const/4 v4, 0x2

    rem-int/2addr v3, v4

    if-eqz v3, :cond_d

    .line 1
    const/4 v3, 0x0

    goto :goto_7

    :cond_d
    const/4 v3, 0x1

    :goto_7
    packed-switch v3, :pswitch_data_2

    .line 71
    goto :goto_8

    .line 56
    :pswitch_2
    if-eqz v13, :cond_f

    goto :goto_a

    .line 71
    :goto_8
    const/16 v3, 0x17

    :try_start_f
    div-int/lit8 v3, v3, 0x0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    if-eqz v13, :cond_e

    .line 1
    const/4 v3, 0x1

    goto :goto_9

    :cond_e
    const/4 v3, 0x0

    :goto_9
    packed-switch v3, :pswitch_data_3

    goto :goto_b

    .line 56
    :goto_a
    :pswitch_3
    nop

    .line 57
    :try_start_10
    invoke-virtual {v13, v2}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0

    .line 71
    goto :goto_b

    :catchall_1
    move-exception v0

    move-object v1, v0

    throw v1

    .line 57
    :cond_f
    :goto_b
    nop

    .line 59
    :try_start_11
    invoke-virtual {v14, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0

    const-string v0, "downid"

    .line 60
    :try_start_12
    iget-object v1, v1, Lccsansan/m/removeDownloadListener;->performAction:Ljava/lang/String;

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 67
    :goto_c
    nop

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xe

    new-array v0, v0, [I

    aput v21, v0, v23

    aput v20, v0, v22

    const/4 v1, 0x2

    aput v19, v0, v1

    aput v17, v0, v18

    const v1, -0x42f530c5

    aput v1, v0, v16

    const v1, 0x351f8d8c

    const/4 v2, 0x5

    aput v1, v0, v2

    const/4 v1, 0x6

    const v2, -0x5223eee7

    aput v2, v0, v1

    const/4 v1, 0x7

    const v2, 0x1e4e63e7

    aput v2, v0, v1

    const/16 v1, 0x8

    const v2, 0x100bcc86

    aput v2, v0, v1

    const/16 v1, 0x9

    const v2, -0x2c805abc

    aput v2, v0, v1

    const/16 v1, 0xa

    const v2, -0x63da8342

    aput v2, v0, v1

    const/16 v1, 0xb

    const v2, -0x68b8ae21

    aput v2, v0, v1

    const/16 v1, 0xc

    const v2, -0x22ffb7d5

    aput v2, v0, v1

    const/16 v1, 0xd

    const v2, 0x471c1901

    aput v2, v0, v1

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    rsub-int/lit8 v1, v5, 0x1a

    invoke-static {v0, v1}, Lccsancom/san/core/CommonProtectActivity$addDownloadListener;->unifiedDownload([II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 71
    move-object/from16 v1, v25

    invoke-static {v1, v0, v14}, Lccsansan/dl/getDownloadingList;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0

    goto :goto_d

    :catch_0
    move-exception v0

    :goto_d
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch
.end method
