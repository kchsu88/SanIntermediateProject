.class final Lccsancom/san/api/ActionSdkInitProxy$1;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/api/ActionSdkInitProxy;->collectNetAndWakeUp(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# static fields
.field private static IncentiveDownloadUtils:I

.field private static addDownloadListener:I

.field private static removeDownloadListener:[I


# instance fields
.field final synthetic getDownloadingList:Ljava/lang/String;

.field final synthetic unifiedDownload:Lccsanandroid/net/NetworkInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/api/ActionSdkInitProxy$1;->addDownloadListener:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/api/ActionSdkInitProxy$1;->IncentiveDownloadUtils:I

    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lccsancom/san/api/ActionSdkInitProxy$1;->removeDownloadListener:[I

    return-void

    :array_0
    .array-data 4
        0x47ad5b9d
        -0x2a7a1115
        -0x1267fdce
        0x3fb6180d
        0x4eddc314
        0x3ac4eec8
        -0x58755dbf
        0x75be2da5
        0x165075c6
        -0x4baf371c
        0x18a9c3b8
        -0x6f4d11ad
        0x682a3995
        -0x43da12b4
        -0x26385847
        -0x6c4f30cb
        -0x55c339da
        0x6f5944b6
    .end array-data
.end method

.method constructor <init>(Lccsanandroid/net/NetworkInfo;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/api/ActionSdkInitProxy$1;->unifiedDownload:Lccsanandroid/net/NetworkInfo;

    iput-object p2, p0, Lccsancom/san/api/ActionSdkInitProxy$1;->getDownloadingList:Ljava/lang/String;

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
    sget-object v4, Lccsancom/san/api/ActionSdkInitProxy$1;->removeDownloadListener:[I

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
    .locals 7

    .line 28
    nop

    .line 9
    sget v0, Lccsancom/san/api/ActionSdkInitProxy$1;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x19

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/api/ActionSdkInitProxy$1;->addDownloadListener:I

    const/4 v2, 0x2

    rem-int/2addr v0, v2

    if-eqz v0, :cond_0

    .line 1
    :cond_0
    :try_start_0
    iget-object v0, p0, Lccsancom/san/api/ActionSdkInitProxy$1;->unifiedDownload:Lccsanandroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    .line 9
    add-int/lit8 v1, v1, 0x69

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/api/ActionSdkInitProxy$1;->IncentiveDownloadUtils:I

    rem-int/2addr v1, v2

    .line 28
    return-void

    .line 4
    :cond_1
    :try_start_1
    invoke-static {v0}, Lccsancom/san/api/ActionSdkInitProxy;->IncentiveDownloadUtils(Lccsanandroid/net/NetworkInfo;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 9
    sget v0, Lccsancom/san/api/ActionSdkInitProxy$1;->addDownloadListener:I

    add-int/lit8 v0, v0, 0xf

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsancom/san/api/ActionSdkInitProxy$1;->IncentiveDownloadUtils:I

    rem-int/2addr v0, v2

    if-nez v0, :cond_2

    :try_start_2
    array-length v0, v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    .line 28
    :cond_2
    return-void

    .line 4
    :cond_3
    :try_start_3
    const-string v0, "app"

    .line 8
    invoke-static {v0}, Lccsansan/k/addDownloadListener;->getDownloadStatusByUrl(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_4

    .line 9
    const/4 v5, 0x1

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    :goto_0
    packed-switch v5, :pswitch_data_0

    :goto_1
    goto :goto_5

    .line 28
    :pswitch_0
    sget v5, Lccsancom/san/api/ActionSdkInitProxy$1;->IncentiveDownloadUtils:I

    add-int/lit8 v5, v5, 0x67

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lccsancom/san/api/ActionSdkInitProxy$1;->addDownloadListener:I

    rem-int/2addr v5, v2

    if-eqz v5, :cond_5

    .line 9
    const/16 v5, 0x2c

    goto :goto_2

    :cond_5
    const/16 v5, 0x46

    :goto_2
    packed-switch v5, :pswitch_data_1

    :try_start_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_4

    :pswitch_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    if-nez v0, :cond_6

    :goto_3
    goto :goto_1

    :goto_4
    :try_start_5
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-nez v0, :cond_6

    goto :goto_3

    .line 14
    :cond_6
    :try_start_6
    invoke-static {}, Lccsansan/bt/removeDownloadListener;->removeDownloadListener()J

    move-result-wide v0

    .line 15
    iget-object v2, p0, Lccsancom/san/api/ActionSdkInitProxy$1;->getDownloadingList:Ljava/lang/String;

    invoke-static {v2}, Lccsancom/san/api/ActionSdkInitProxy;->IncentiveDownloadUtils(Ljava/lang/String;)V

    .line 16
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 17
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lccsansan/bw/getDownloadedList;->getDownloadedRecordByUrl(Lccsanandroid/content/Context;)Lccsanandroid/net/NetworkInfo;

    move-result-object v2

    .line 18
    iget-object v3, p0, Lccsancom/san/api/ActionSdkInitProxy$1;->getDownloadingList:Ljava/lang/String;

    const-string v5, "retry_1"

    invoke-static {v3, v2, v4, v5}, Lccsansan/bn/getDownloadingList;->IncentiveDownloadUtils(Ljava/lang/String;Lccsanandroid/net/NetworkInfo;ZLjava/lang/String;)V

    if-nez v2, :cond_7

    return-void

    .line 23
    :cond_7
    invoke-static {v2}, Lccsancom/san/api/ActionSdkInitProxy;->IncentiveDownloadUtils(Lccsanandroid/net/NetworkInfo;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 24
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3}, Lccsancom/san/az/getDownloadedRecordByUrl;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;)V

    .line 25
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 26
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/bw/getDownloadedList;->getDownloadedRecordByUrl(Lccsanandroid/content/Context;)Lccsanandroid/net/NetworkInfo;

    move-result-object v0

    .line 27
    iget-object v1, p0, Lccsancom/san/api/ActionSdkInitProxy$1;->getDownloadingList:Ljava/lang/String;

    const-string v2, "retry_2"

    invoke-static {v1, v0, v4, v2}, Lccsansan/bn/getDownloadingList;->IncentiveDownloadUtils(Ljava/lang/String;Lccsanandroid/net/NetworkInfo;ZLjava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_6

    .line 28
    :catchall_1
    move-exception v0

    throw v0

    :goto_5
    :try_start_7
    iget-object v0, p0, Lccsancom/san/api/ActionSdkInitProxy$1;->getDownloadingList:Ljava/lang/String;

    iget-object v1, p0, Lccsancom/san/api/ActionSdkInitProxy$1;->unifiedDownload:Lccsanandroid/net/NetworkInfo;

    const/4 v5, 0x6

    new-array v5, v5, [I

    const v6, 0x3ce6e71c

    aput v6, v5, v3

    const v6, -0x4870b14

    aput v6, v5, v4

    const v4, -0x667c14c8

    aput v4, v5, v2

    const/4 v2, 0x3

    const v4, 0x947d792

    aput v4, v5, v2

    const/4 v2, 0x4

    const v4, 0x5d963496

    aput v4, v5, v2

    const/4 v2, 0x5

    const v4, -0x7aaf0980

    aput v4, v5, v2

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollBarSize()I

    move-result v2

    shr-int/lit8 v2, v2, 0x8

    rsub-int/lit8 v2, v2, 0xb

    invoke-static {v5, v2}, Lccsancom/san/api/ActionSdkInitProxy$1;->unifiedDownload([II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v3, v2}, Lccsansan/bn/getDownloadingList;->IncentiveDownloadUtils(Ljava/lang/String;Lccsanandroid/net/NetworkInfo;ZLjava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    return-void

    :catch_0
    move-exception v0

    :goto_6
    nop

    :cond_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x46
        :pswitch_1
    .end packed-switch
.end method
