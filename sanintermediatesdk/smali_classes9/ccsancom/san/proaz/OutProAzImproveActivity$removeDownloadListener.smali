.class Lccsancom/san/proaz/OutProAzImproveActivity$removeDownloadListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsanandroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/san/proaz/OutProAzImproveActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static IncentiveDownloadUtils:C

.field private static addDownloadListener:C

.field private static deleteDownItem:I

.field private static getDownloadStatusByUrl:I

.field private static getDownloadingList:C

.field private static removeDownloadListener:C


# instance fields
.field final synthetic unifiedDownload:Lccsancom/san/proaz/OutProAzImproveActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/proaz/OutProAzImproveActivity$removeDownloadListener;->deleteDownItem:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/proaz/OutProAzImproveActivity$removeDownloadListener;->getDownloadStatusByUrl:I

    const/16 v0, 0x43af

    sput-char v0, Lccsancom/san/proaz/OutProAzImproveActivity$removeDownloadListener;->getDownloadingList:C

    const v0, 0xed26

    sput-char v0, Lccsancom/san/proaz/OutProAzImproveActivity$removeDownloadListener;->IncentiveDownloadUtils:C

    const/16 v0, 0xc00

    sput-char v0, Lccsancom/san/proaz/OutProAzImproveActivity$removeDownloadListener;->removeDownloadListener:C

    const v0, 0xad96

    sput-char v0, Lccsancom/san/proaz/OutProAzImproveActivity$removeDownloadListener;->addDownloadListener:C

    return-void
.end method

.method constructor <init>(Lccsancom/san/proaz/OutProAzImproveActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/proaz/OutProAzImproveActivity$removeDownloadListener;->unifiedDownload:Lccsancom/san/proaz/OutProAzImproveActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static removeDownloadListener(Ljava/lang/String;I)Ljava/lang/String;
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

    sget-char v11, Lccsancom/san/proaz/OutProAzImproveActivity$removeDownloadListener;->IncentiveDownloadUtils:C

    add-int/2addr v10, v11

    xor-int/2addr v9, v10

    aget-char v10, v4, v2

    ushr-int/lit8 v10, v10, 0x5

    sget-char v11, Lccsancom/san/proaz/OutProAzImproveActivity$removeDownloadListener;->removeDownloadListener:C

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

    sget-char v11, Lccsancom/san/proaz/OutProAzImproveActivity$removeDownloadListener;->addDownloadListener:C

    add-int/2addr v10, v11

    xor-int/2addr v9, v10

    aget-char v10, v4, v6

    ushr-int/lit8 v10, v10, 0x5

    sget-char v11, Lccsancom/san/proaz/OutProAzImproveActivity$removeDownloadListener;->getDownloadingList:C

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


# virtual methods
.method public onClick(Lccsanandroid/view/View;)V
    .locals 6

    .line 9
    nop

    .line 1
    invoke-virtual {p1}, Lccsanandroid/view/View;->getId()I

    move-result p1

    .line 2
    iget-object v0, p0, Lccsancom/san/proaz/OutProAzImproveActivity$removeDownloadListener;->unifiedDownload:Lccsancom/san/proaz/OutProAzImproveActivity;

    invoke-static {v0, p1}, Lccsancom/san/proaz/OutProAzImproveActivity;->unifiedDownload(Lccsancom/san/proaz/OutProAzImproveActivity;I)Z

    move-result v0

    const-string v1, "\ub507\ua623\ue072\u7f8b\u0bd5\u2538\u010c\ub86a\u4c05\u2ba8\ub990\u850d\uc37b\u79d1\ufbbd\u37b8\u0bd5\u2538\u9495\u0d9d\u2447\u15f6\u825d\u39a9\u6477\u77fd\ue274\u5e8c"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2, v2, v2}, Lccsanandroid/view/View;->resolveSizeAndState(III)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x17

    const-string v4, "\ude81\u8867\u51ec\u32f6\u769f\u694b\u79d1\ub60b\u6548\u420d\u2691\u097d\ud95d\u18ab\u9a09\u0f58\ub931\ud6e9\u4e0f\ua36e\ud731\u5724\uef88\u2f3a"

    invoke-static {v4, v3}, Lccsancom/san/proaz/OutProAzImproveActivity$removeDownloadListener;->removeDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccsancom/san/proaz/OutProAzImproveActivity$removeDownloadListener;->unifiedDownload:Lccsancom/san/proaz/OutProAzImproveActivity;

    invoke-static {v3}, Lccsancom/san/proaz/OutProAzImproveActivity;->removeDownloadListener(Lccsancom/san/proaz/OutProAzImproveActivity;)Lccsansan/p/getDownloadedList;

    move-result-object v3

    invoke-virtual {v3}, Lccsansan/p/getDownloadedList;->getDownloadStatusByUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v2}, Lccsanandroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x1c

    invoke-static {v1, v2}, Lccsancom/san/proaz/OutProAzImproveActivity$removeDownloadListener;->removeDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lccsancom/san/proaz/OutProAzImproveActivity$removeDownloadListener;->unifiedDownload:Lccsancom/san/proaz/OutProAzImproveActivity;

    invoke-static {v0, p1}, Lccsancom/san/proaz/OutProAzImproveActivity;->getDownloadingList(Lccsancom/san/proaz/OutProAzImproveActivity;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsancom/san/proaz/OutProAzImproveActivity;->addDownloadListener(Lccsancom/san/proaz/OutProAzImproveActivity;Ljava/lang/String;)V

    .line 9
    sget p1, Lccsancom/san/proaz/OutProAzImproveActivity$removeDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 p1, p1, 0x33

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/proaz/OutProAzImproveActivity$removeDownloadListener;->deleteDownItem:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    const/16 p1, 0x23

    goto :goto_0

    :cond_0
    const/16 p1, 0x62

    :goto_0
    packed-switch p1, :pswitch_data_0

    :goto_1
    :pswitch_0
    goto/16 :goto_5

    .line 4
    :cond_1
    invoke-static {v2}, Lccsanandroid/graphics/Color;->red(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x15

    const-string v3, "\u2682\u2161\u422c\u94cd\u55e3\u54b2\u9dd6\uba64\u2cae\u1322\u4c05\u2ba8\ub990\u850d\u6bbe\u242c\u0703\ufc9b\ua8a1\ud85f\uda74\uabd4"

    invoke-static {v3, v0}, Lccsancom/san/proaz/OutProAzImproveActivity$removeDownloadListener;->removeDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v0

    if-ne v0, p1, :cond_3

    .line 9
    sget p1, Lccsancom/san/proaz/OutProAzImproveActivity$removeDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 p1, p1, 0x13

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/proaz/OutProAzImproveActivity$removeDownloadListener;->deleteDownItem:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_2

    const/16 p1, 0x4f

    goto :goto_2

    :cond_2
    const/16 p1, 0x22

    :goto_2
    const-string v0, "out_activity"

    const-string v3, "close out activity"

    const-string v4, ""

    packed-switch p1, :pswitch_data_1

    .line 5
    const/16 p1, 0x30

    invoke-static {v4, p1, v2, v2}, Lccsanandroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result p1

    add-int/lit8 p1, p1, 0x1d

    invoke-static {v1, p1}, Lccsancom/san/proaz/OutProAzImproveActivity$removeDownloadListener;->removeDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 6
    :goto_3
    invoke-static {p1, v3}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lccsancom/san/proaz/OutProAzImproveActivity$removeDownloadListener;->unifiedDownload:Lccsancom/san/proaz/OutProAzImproveActivity;

    invoke-static {p1}, Lccsancom/san/proaz/OutProAzImproveActivity;->addDownloadListener(Lccsancom/san/proaz/OutProAzImproveActivity;)V

    .line 9
    iget-object p1, p0, Lccsancom/san/proaz/OutProAzImproveActivity$removeDownloadListener;->unifiedDownload:Lccsancom/san/proaz/OutProAzImproveActivity;

    invoke-static {p1}, Lccsancom/san/proaz/OutProAzImproveActivity;->removeDownloadListener(Lccsancom/san/proaz/OutProAzImproveActivity;)Lccsansan/p/getDownloadedList;

    move-result-object p1

    invoke-virtual {p1}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsansan/bn/getDownloadedCount;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :pswitch_1
    const/16 p1, 0x20

    const/16 v2, 0x7f

    const/4 v5, 0x1

    invoke-static {v4, v2, v5, v5}, Lccsanandroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v2

    div-int/2addr p1, v2

    invoke-static {v1, p1}, Lccsancom/san/proaz/OutProAzImproveActivity$removeDownloadListener;->removeDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :goto_4
    sget p1, Lccsancom/san/proaz/OutProAzImproveActivity$removeDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 p1, p1, 0x3b

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/proaz/OutProAzImproveActivity$removeDownloadListener;->deleteDownItem:I

    rem-int/lit8 p1, p1, 0x2

    goto :goto_1

    :cond_3
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x23
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4f
        :pswitch_1
    .end packed-switch
.end method
