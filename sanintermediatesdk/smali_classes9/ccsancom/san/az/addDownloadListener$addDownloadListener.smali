.class final Lccsancom/san/az/addDownloadListener$addDownloadListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/be/unifiedDownload;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/az/addDownloadListener;->removeDownloadListener(ZLccsansan/p/getDownloadedList;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# static fields
.field private static deleteDownItem:I

.field private static getDownloadedList:I

.field private static getDownloadedRecordByUrl:C

.field private static getDownloadingList:J

.field private static unifiedDownload:I


# instance fields
.field final synthetic IncentiveDownloadUtils:Z

.field final synthetic addDownloadListener:Lccsansan/p/getDownloadedList;

.field final synthetic removeDownloadListener:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    sput v0, Lccsancom/san/az/addDownloadListener$addDownloadListener;->deleteDownItem:I

    const/4 v1, 0x1

    sput v1, Lccsancom/san/az/addDownloadListener$addDownloadListener;->getDownloadedList:I

    const-wide v1, 0x73ca8ea9e62f5c29L    # 5.941963976406872E249

    sput-wide v1, Lccsancom/san/az/addDownloadListener$addDownloadListener;->getDownloadingList:J

    sput-char v0, Lccsancom/san/az/addDownloadListener$addDownloadListener;->getDownloadedRecordByUrl:C

    sput v0, Lccsancom/san/az/addDownloadListener$addDownloadListener;->unifiedDownload:I

    return-void
.end method

.method constructor <init>(Lccsansan/p/getDownloadedList;ZLjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/az/addDownloadListener$addDownloadListener;->addDownloadListener:Lccsansan/p/getDownloadedList;

    iput-boolean p2, p0, Lccsancom/san/az/addDownloadListener$addDownloadListener;->IncentiveDownloadUtils:Z

    iput-object p3, p0, Lccsancom/san/az/addDownloadListener$addDownloadListener;->removeDownloadListener:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addDownloadListener(ILjava/lang/String;Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;
    .locals 7

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->toCharArray()[C

    move-result-object p4

    :cond_0
    check-cast p4, [C

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    :cond_1
    check-cast p2, [C

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    :cond_2
    check-cast p1, [C

    .line 1123
    sget-object v0, Lccsansan/d/getDownloadingCount;->addDownloadListener:Ljava/lang/Object;

    monitor-enter v0

    .line 1125
    :try_start_0
    invoke-virtual {p1}, [C->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [C

    .line 1126
    invoke-virtual {p2}, [C->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [C

    .line 1127
    const/4 v1, 0x0

    aget-char v2, p1, v1

    xor-int/2addr p3, v2

    int-to-char p3, p3

    aput-char p3, p1, v1

    .line 1128
    const/4 p3, 0x2

    aget-char v2, p2, p3

    int-to-char p0, p0

    add-int/2addr v2, p0

    int-to-char p0, v2

    aput-char p0, p2, p3

    .line 1130
    array-length p0, p4

    .line 1131
    new-array v2, p0, [C

    .line 1132
    sput v1, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    :goto_0
    sget v1, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    if-ge v1, p0, :cond_3

    .line 1134
    sget v1, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    add-int/2addr v1, p3

    rem-int/lit8 v1, v1, 0x4

    .line 1135
    sget v3, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    add-int/lit8 v3, v3, 0x3

    rem-int/lit8 v3, v3, 0x4

    .line 1138
    sget v4, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    rem-int/lit8 v4, v4, 0x4

    aget-char v4, p1, v4

    mul-int/lit16 v4, v4, 0x7fce

    aget-char v5, p2, v1

    add-int/2addr v4, v5

    const v5, 0xffff

    rem-int/2addr v4, v5

    int-to-char v4, v4

    sput-char v4, Lccsansan/d/getDownloadingCount;->unifiedDownload:C

    .line 1141
    aget-char v4, p1, v3

    mul-int/lit16 v4, v4, 0x7fce

    aget-char v1, p2, v1

    add-int/2addr v4, v1

    div-int/2addr v4, v5

    int-to-char v1, v4

    aput-char v1, p2, v3

    .line 1144
    sget-char v1, Lccsansan/d/getDownloadingCount;->unifiedDownload:C

    aput-char v1, p1, v3

    .line 1147
    sget v1, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    sget v4, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    aget-char v4, p4, v4

    aget-char v3, p1, v3

    xor-int/2addr v3, v4

    int-to-long v3, v3

    sget-wide v5, Lccsancom/san/az/addDownloadListener$addDownloadListener;->getDownloadingList:J

    xor-long/2addr v3, v5

    sget v5, Lccsancom/san/az/addDownloadListener$addDownloadListener;->unifiedDownload:I

    int-to-long v5, v5

    xor-long/2addr v3, v5

    sget-char v5, Lccsancom/san/az/addDownloadListener$addDownloadListener;->getDownloadedRecordByUrl:C

    int-to-long v5, v5

    xor-long/2addr v3, v5

    long-to-int v4, v3

    int-to-char v3, v4

    aput-char v3, v2, v1

    .line 1132
    sget v1, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    goto :goto_0

    .line 1154
    :cond_3
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1155
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public addDownloadListener(ILjava/lang/String;)V
    .locals 4

    .line 31
    nop

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AzHelperEx"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-static {}, Lccsansan/bt/unifiedDownload;->IncentiveDownloadUtils()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 23
    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/16 v0, 0x37

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_3

    .line 31
    :pswitch_0
    sget v0, Lccsancom/san/az/addDownloadListener$addDownloadListener;->getDownloadedList:I

    add-int/lit8 v0, v0, 0x53

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsancom/san/az/addDownloadListener$addDownloadListener;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 23
    goto :goto_1

    :cond_1
    const/16 v1, 0x45

    :goto_1
    invoke-static {}, Lccsancom/san/az/IncentiveDownloadUtils;->addDownloadListener()Lccsancom/san/az/IncentiveDownloadUtils;

    move-result-object v0

    packed-switch v1, :pswitch_data_1

    iget-object v1, p0, Lccsancom/san/az/addDownloadListener$addDownloadListener;->addDownloadListener:Lccsansan/p/getDownloadedList;

    invoke-virtual {v1}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    goto :goto_2

    :pswitch_1
    iget-object v1, p0, Lccsancom/san/az/addDownloadListener$addDownloadListener;->addDownloadListener:Lccsansan/p/getDownloadedList;

    invoke-virtual {v1}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1, v2}, Lccsancom/san/az/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Z)V

    .line 26
    :goto_3
    iget-object v0, p0, Lccsancom/san/az/addDownloadListener$addDownloadListener;->addDownloadListener:Lccsansan/p/getDownloadedList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "silence_result"

    invoke-virtual {v0, v1, p1}, Lccsansan/p/getDownloadedList;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object p1, p0, Lccsancom/san/az/addDownloadListener$addDownloadListener;->addDownloadListener:Lccsansan/p/getDownloadedList;

    invoke-static {p1}, Lccsancom/san/az/addDownloadListener;->getDownloadingList(Lccsansan/p/getDownloadedList;)V

    .line 28
    iget-object p1, p0, Lccsancom/san/az/addDownloadListener$addDownloadListener;->addDownloadListener:Lccsansan/p/getDownloadedList;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "p2p_fail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lccsansan/bn/deleteDownItem;->unifiedDownload(Lccsansan/p/getDownloadedList;Ljava/lang/String;)V

    .line 29
    iget-object p1, p0, Lccsancom/san/az/addDownloadListener$addDownloadListener;->addDownloadListener:Lccsansan/p/getDownloadedList;

    invoke-static {p1, p2}, Lccsansan/bn/getDownloadedRecordByUrl;->unifiedDownload(Lccsansan/p/getDownloadedList;Ljava/lang/String;)V

    .line 31
    iget-object p1, p0, Lccsancom/san/az/addDownloadListener$addDownloadListener;->removeDownloadListener:Ljava/lang/String;

    iget-object p2, p0, Lccsancom/san/az/addDownloadListener$addDownloadListener;->addDownloadListener:Lccsansan/p/getDownloadedList;

    iget-boolean v0, p0, Lccsancom/san/az/addDownloadListener$addDownloadListener;->IncentiveDownloadUtils:Z

    sget-object v1, Lccsansan/bh/IncentiveDownloadUtils;->P2P_FAILURE:Lccsansan/bh/IncentiveDownloadUtils;

    invoke-static {p1, p2, v0, v1}, Lccsancom/san/az/addDownloadListener;->addDownloadListener(Ljava/lang/String;Lccsansan/p/getDownloadedList;ZLccsansan/bh/IncentiveDownloadUtils;)V

    .line 23
    sget p1, Lccsancom/san/az/addDownloadListener$addDownloadListener;->deleteDownItem:I

    add-int/lit8 p1, p1, 0x47

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsancom/san/az/addDownloadListener$addDownloadListener;->getDownloadedList:I

    rem-int/lit8 p1, p1, 0x2

    .line 31
    return-void

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x8
        :pswitch_1
    .end packed-switch
.end method

.method public getDownloadingList()V
    .locals 6

    .line 20
    nop

    .line 0
    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v0

    shr-int/lit8 v0, v0, 0x10

    const/4 v1, 0x0

    invoke-static {v1}, Lccsanandroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    int-to-char v2, v2

    const-string v3, "\ub710\u3c53\ue5ec\u34cc"

    const-string v4, "\u5c29\ue62f\u8ea9\u73ca"

    const-string v5, "\u74e4\uac19\uba55\u6854\u21ea\u4b74\ubad5\u7b61\u4194\u7a8f\ua41e\u651b\u4edc\ud52a\udd06\u3442\ud00e\ud6f5\ufb7b\uf158\ubeb7\u2ff1\u9245\ub301"

    invoke-static {v0, v3, v4, v2, v5}, Lccsancom/san/az/addDownloadListener$addDownloadListener;->addDownloadListener(ILjava/lang/String;Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 1
    const-string v2, "AzHelperEx"

    invoke-static {v2, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lccsansan/bt/unifiedDownload;->IncentiveDownloadUtils()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 3
    invoke-static {}, Lccsancom/san/az/IncentiveDownloadUtils;->addDownloadListener()Lccsancom/san/az/IncentiveDownloadUtils;

    move-result-object v0

    iget-object v3, p0, Lccsancom/san/az/addDownloadListener$addDownloadListener;->addDownloadListener:Lccsansan/p/getDownloadedList;

    invoke-virtual {v3}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lccsancom/san/az/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;)V

    .line 20
    sget v0, Lccsancom/san/az/addDownloadListener$addDownloadListener;->getDownloadedList:I

    add-int/lit8 v0, v0, 0x79

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsancom/san/az/addDownloadListener$addDownloadListener;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 6
    :cond_1
    :pswitch_0
    iget-boolean v0, p0, Lccsancom/san/az/addDownloadListener$addDownloadListener;->IncentiveDownloadUtils:Z

    if-eqz v0, :cond_2

    .line 20
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    packed-switch v0, :pswitch_data_1

    sget v0, Lccsancom/san/az/addDownloadListener$addDownloadListener;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x4f

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsancom/san/az/addDownloadListener$addDownloadListener;->getDownloadedList:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    iget-object v0, p0, Lccsancom/san/az/addDownloadListener$addDownloadListener;->removeDownloadListener:Ljava/lang/String;

    invoke-static {v0}, Lccsansan/bt/unifiedDownload;->IncentiveDownloadUtils(Ljava/lang/String;)Z

    move-result v0

    const/16 v2, 0xe

    :try_start_0
    div-int/2addr v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_5

    goto :goto_3

    :catchall_0
    move-exception v0

    throw v0

    .line 6
    :cond_3
    iget-object v0, p0, Lccsancom/san/az/addDownloadListener$addDownloadListener;->removeDownloadListener:Ljava/lang/String;

    invoke-static {v0}, Lccsansan/bt/unifiedDownload;->IncentiveDownloadUtils(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 20
    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    nop

    :goto_2
    packed-switch v2, :pswitch_data_2

    :goto_3
    goto :goto_4

    .line 13
    :cond_5
    :pswitch_1
    iget-object v0, p0, Lccsancom/san/az/addDownloadListener$addDownloadListener;->addDownloadListener:Lccsansan/p/getDownloadedList;

    invoke-static {v0}, Lccsancom/san/az/addDownloadListener;->getDownloadingList(Lccsansan/p/getDownloadedList;)V

    .line 14
    iget-object v0, p0, Lccsancom/san/az/addDownloadListener$addDownloadListener;->addDownloadListener:Lccsansan/p/getDownloadedList;

    const-string v2, ""

    const/16 v3, 0x30

    invoke-static {v2, v3}, Lccsanandroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v5

    rsub-int/lit8 v5, v5, -0x1

    invoke-static {v2, v3, v1}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v1

    rsub-int/lit8 v1, v1, -0x1

    int-to-char v1, v1

    const-string v2, "\ua48d\u9be8\uf84c\u1f61"

    const-string v3, "\u611f\ub634\u131d\u28b7\ueffa\u96bd\u3ddf\u34c3\u23d7\u235a\uf320\u5ebc\uf9ce\u8cb7\uf14e\u8f63\uc059\u8871\ucf7b\uf55e"

    invoke-static {v5, v2, v4, v1, v3}, Lccsancom/san/az/addDownloadListener$addDownloadListener;->addDownloadListener(ILjava/lang/String;Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsansan/bn/deleteDownItem;->unifiedDownload(Lccsansan/p/getDownloadedList;Ljava/lang/String;)V

    .line 20
    sget v0, Lccsancom/san/az/addDownloadListener$addDownloadListener;->getDownloadedList:I

    add-int/lit8 v0, v0, 0x79

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/az/addDownloadListener$addDownloadListener;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    goto :goto_5

    .line 7
    :goto_4
    invoke-static {}, Lccsansan/bt/unifiedDownload;->getDownloadStatusByUrl()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 20
    sget v0, Lccsancom/san/az/addDownloadListener$addDownloadListener;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x3f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/az/addDownloadListener$addDownloadListener;->getDownloadedList:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_6

    .line 8
    :cond_6
    iget-object v0, p0, Lccsancom/san/az/addDownloadListener$addDownloadListener;->addDownloadListener:Lccsansan/p/getDownloadedList;

    sget-object v1, Lccsansan/bh/IncentiveDownloadUtils;->P2P_SUCCESS:Lccsansan/bh/IncentiveDownloadUtils;

    invoke-static {v0, v1}, Lccsancom/san/az/addDownloadListener;->getDownloadingList(Lccsansan/p/getDownloadedList;Lccsansan/bh/IncentiveDownloadUtils;)V

    goto :goto_5

    .line 10
    :cond_7
    iget-object v0, p0, Lccsancom/san/az/addDownloadListener$addDownloadListener;->addDownloadListener:Lccsansan/p/getDownloadedList;

    iget-object v1, p0, Lccsancom/san/az/addDownloadListener$addDownloadListener;->removeDownloadListener:Ljava/lang/String;

    invoke-static {v0, v1}, Lccsancom/san/az/getDownloadStatusByUrl;->getDownloadingList(Lccsansan/p/getDownloadedList;Ljava/lang/String;)V

    .line 17
    :goto_5
    iget-object v0, p0, Lccsancom/san/az/addDownloadListener$addDownloadListener;->addDownloadListener:Lccsansan/p/getDownloadedList;

    const-string v1, "silence_result"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lccsansan/p/getDownloadedList;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lccsancom/san/az/addDownloadListener$addDownloadListener;->addDownloadListener:Lccsansan/p/getDownloadedList;

    invoke-static {v0}, Lccsancom/san/az/addDownloadListener;->getDownloadingList(Lccsansan/p/getDownloadedList;)V

    .line 19
    iget-object v0, p0, Lccsancom/san/az/addDownloadListener$addDownloadListener;->addDownloadListener:Lccsansan/p/getDownloadedList;

    const-string v1, "p2p_success"

    invoke-static {v0, v1}, Lccsansan/bn/deleteDownItem;->unifiedDownload(Lccsansan/p/getDownloadedList;Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lccsancom/san/az/addDownloadListener$addDownloadListener;->addDownloadListener:Lccsansan/p/getDownloadedList;

    invoke-static {v0, v1}, Lccsansan/bn/getDownloadedRecordByUrl;->unifiedDownload(Lccsansan/p/getDownloadedList;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method
