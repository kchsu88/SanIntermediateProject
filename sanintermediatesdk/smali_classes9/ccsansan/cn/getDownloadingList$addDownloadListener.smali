.class Lccsansan/cn/getDownloadingList$addDownloadListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/cv/resume;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/cn/getDownloadingList;->getDownloadingList(Lccsansan/cn/addDownloadListener;Ljava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static getDownloadStatusByUrl:I

.field private static getDownloadedList:J

.field private static getDownloadingRecordByUrl:I


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsansan/cn/getDownloadingList;

.field final synthetic addDownloadListener:Ljava/lang/String;

.field final synthetic getDownloadingList:J

.field final synthetic removeDownloadListener:Lccsansan/cn/addDownloadListener;

.field final synthetic unifiedDownload:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lccsansan/cn/getDownloadingList$addDownloadListener;->getDownloadStatusByUrl:I

    const/4 v0, 0x1

    sput v0, Lccsansan/cn/getDownloadingList$addDownloadListener;->getDownloadingRecordByUrl:I

    const-wide v0, -0x65fd209351a57d20L    # -2.220792000706524E-183

    sput-wide v0, Lccsansan/cn/getDownloadingList$addDownloadListener;->getDownloadedList:J

    return-void
.end method

.method constructor <init>(Lccsansan/cn/getDownloadingList;JLccsansan/cn/addDownloadListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/cn/getDownloadingList$addDownloadListener;->IncentiveDownloadUtils:Lccsansan/cn/getDownloadingList;

    iput-wide p2, p0, Lccsansan/cn/getDownloadingList$addDownloadListener;->getDownloadingList:J

    iput-object p4, p0, Lccsansan/cn/getDownloadingList$addDownloadListener;->removeDownloadListener:Lccsansan/cn/addDownloadListener;

    iput-object p5, p0, Lccsansan/cn/getDownloadingList$addDownloadListener;->unifiedDownload:Ljava/lang/String;

    iput-object p6, p0, Lccsansan/cn/getDownloadingList$addDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;
    .locals 8

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_0
    check-cast p0, [C

    .line 1073
    sget-object v0, Lccsansan/d/pause;->IncentiveDownloadUtils:Ljava/lang/Object;

    monitor-enter v0

    .line 1076
    :try_start_0
    sget-wide v1, Lccsansan/cn/getDownloadingList$addDownloadListener;->getDownloadedList:J

    invoke-static {v1, v2, p0, p1}, Lccsansan/d/pause;->removeDownloadListener(J[CI)[C

    move-result-object p0

    .line 1081
    const/4 p1, 0x4

    sput p1, Lccsansan/d/pause;->unifiedDownload:I

    :goto_0
    sget v1, Lccsansan/d/pause;->unifiedDownload:I

    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 1083
    sget v1, Lccsansan/d/pause;->unifiedDownload:I

    sub-int/2addr v1, p1

    sput v1, Lccsansan/d/pause;->removeDownloadListener:I

    .line 1084
    sget v1, Lccsansan/d/pause;->unifiedDownload:I

    sget v2, Lccsansan/d/pause;->unifiedDownload:I

    aget-char v2, p0, v2

    sget v3, Lccsansan/d/pause;->unifiedDownload:I

    rem-int/2addr v3, p1

    aget-char v3, p0, v3

    xor-int/2addr v2, v3

    int-to-long v2, v2

    sget v4, Lccsansan/d/pause;->removeDownloadListener:I

    int-to-long v4, v4

    sget-wide v6, Lccsansan/cn/getDownloadingList$addDownloadListener;->getDownloadedList:J

    mul-long v4, v4, v6

    xor-long/2addr v2, v4

    long-to-int v3, v2

    int-to-char v2, v3

    aput-char v2, p0, v1

    .line 1081
    sget v1, Lccsansan/d/pause;->unifiedDownload:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lccsansan/d/pause;->unifiedDownload:I

    goto :goto_0

    .line 1088
    :cond_1
    new-instance v1, Ljava/lang/String;

    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-direct {v1, p0, p1, v2}, Ljava/lang/String;-><init>([CII)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 1089
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
.method public addDownloadListener(ZLccsansan/cs/IncentiveDownloadUtils;ILjava/lang/String;)V
    .locals 14

    move-object v1, p0

    .line 16
    nop

    .line 0
    if-eqz p1, :cond_0

    .line 16
    const/16 v0, 0x60

    goto :goto_0

    :cond_0
    const/16 v0, 0x32

    :goto_0
    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    goto :goto_4

    :pswitch_0
    sget v0, Lccsansan/cn/getDownloadingList$addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 v0, v0, 0x6f

    rem-int/lit16 v5, v0, 0x80

    sput v5, Lccsansan/cn/getDownloadingList$addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/2addr v0, v3

    if-nez v0, :cond_2

    const/16 v0, 0x2b

    :try_start_0
    div-int/2addr v0, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_1

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v2, v0

    throw v2

    .line 0
    :cond_2
    if-eqz p2, :cond_3

    .line 16
    const/16 v0, 0x2c

    goto :goto_2

    :cond_3
    const/16 v0, 0x5f

    :goto_2
    packed-switch v0, :pswitch_data_1

    goto :goto_1

    :goto_3
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_5

    .line 0
    :goto_4
    const/4 v0, 0x0

    :goto_5
    invoke-static {}, Lccsanandroid/view/KeyEvent;->getModifierMetaStateMask()I

    move-result v5

    int-to-byte v5, v5

    add-int/2addr v5, v2

    const-string v6, "\u425a\u3e7a\ua24d\u2c2e\u420c\ubcfb\ua7fe\ua4fa\u499e\ub075\ub37a\ub860\u5536\ua7f5\ubeec\ub3ea\u6097\u9b7b\u8a63\u876f\u6c3d\u8eff\u91ff"

    invoke-static {v6, v5}, Lccsansan/cn/getDownloadingList$addDownloadListener;->unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v6

    shr-int/lit8 v6, v6, 0x8

    const-string v7, "\u6e70\u3213\u1a23\ubd46\u6e1f\ub09d\u1fb1\u3583\u6583\ubc06\u0b0f\u2912\u7950\uabb7\u068c\u2291\u4c9e\u971f\u320c\u1607\u4014\u82a5\u298a\u0b82\u5795\u8e1c\u2543\u7f43\u2b03\uf5df\u50c3\u7094\u3e95\ue110\u4c0c\u6414\u3214\uecd3\u7b96\u5994\u099c\ud853\u775e\u4d46\u1d55\uc780\u62c3\u468a\u109f\u3310\u9e02\uba0a\ue450\u3e86\u9591\uaf8a\ufbd0\u2a4e\u8143\ua343\ucf03"

    invoke-static {v7, v6}, Lccsansan/cn/getDownloadingList$addDownloadListener;->unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    .line 3
    new-array v7, v7, [Ljava/lang/Object;

    .line 4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v4

    const-string v8, "null"

    if-nez p2, :cond_5

    .line 16
    sget v9, Lccsansan/cn/getDownloadingList$addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 v9, v9, 0x13

    rem-int/lit16 v10, v9, 0x80

    sput v10, Lccsansan/cn/getDownloadingList$addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/2addr v9, v3

    if-nez v9, :cond_4

    goto :goto_6

    :cond_4
    const/4 v4, 0x1

    :goto_6
    packed-switch v4, :pswitch_data_2

    .line 4
    move-object v4, v8

    goto :goto_7

    .line 16
    :pswitch_2
    const/4 v4, 0x0

    :try_start_1
    invoke-super {v4}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v4, v8

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v2, v0

    throw v2

    .line 4
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lccsansan/cs/IncentiveDownloadUtils;->removeDownloadListener()Ljava/lang/String;

    move-result-object v4

    :goto_7
    aput-object v4, v7, v2

    if-nez p2, :cond_6

    .line 16
    const/16 v2, 0x28

    goto :goto_8

    :cond_6
    const/16 v2, 0x25

    :goto_8
    packed-switch v2, :pswitch_data_3

    sget v2, Lccsansan/cn/getDownloadingList$addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v2, v2, 0x7b

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lccsansan/cn/getDownloadingList$addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/2addr v2, v3

    if-eqz v2, :cond_7

    goto :goto_9

    .line 4
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Lccsansan/cs/IncentiveDownloadUtils;->getDownloadedRecordByUrl()Ljava/lang/String;

    move-result-object v8

    goto :goto_a

    :cond_7
    :goto_9
    nop

    :goto_a
    aput-object v8, v7, v3

    .line 5
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v1, Lccsansan/cn/getDownloadingList$addDownloadListener;->getDownloadingList:J

    sub-long v10, v2, v4

    if-eqz v0, :cond_8

    .line 10
    iget-object v2, v1, Lccsansan/cn/getDownloadingList$addDownloadListener;->removeDownloadListener:Lccsansan/cn/addDownloadListener;

    invoke-virtual/range {p2 .. p2}, Lccsansan/cs/IncentiveDownloadUtils;->removeDownloadListener()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lccsansan/cs/IncentiveDownloadUtils;->getDownloadedRecordByUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lccsansan/cs/IncentiveDownloadUtils;->deleteDownItem()J

    move-result-wide v5

    invoke-interface {v2, v3, v4, v5, v6}, Lccsansan/cn/addDownloadListener;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;J)V

    .line 16
    goto :goto_b

    .line 12
    :cond_8
    iget-object v2, v1, Lccsansan/cn/getDownloadingList$addDownloadListener;->removeDownloadListener:Lccsansan/cn/addDownloadListener;

    new-instance v3, Lccsansan/cn/removeDownloadListener;

    const/16 v4, 0x1770

    move-object/from16 v5, p4

    invoke-direct {v3, v4, v5}, Lccsansan/cn/removeDownloadListener;-><init>(ILjava/lang/String;)V

    const-string v4, ""

    invoke-interface {v2, v4, v3}, Lccsansan/cn/addDownloadListener;->removeDownloadListener(Ljava/lang/String;Lccsansan/cn/removeDownloadListener;)V

    .line 14
    :goto_b
    iget-object v6, v1, Lccsansan/cn/getDownloadingList$addDownloadListener;->unifiedDownload:Ljava/lang/String;

    iget-object v7, v1, Lccsansan/cn/getDownloadingList$addDownloadListener;->addDownloadListener:Ljava/lang/String;

    iget-object v2, v1, Lccsansan/cn/getDownloadingList$addDownloadListener;->IncentiveDownloadUtils:Lccsansan/cn/getDownloadingList;

    .line 15
    invoke-static {v2}, Lccsansan/cn/getDownloadingList;->getDownloadingList(Lccsansan/cn/getDownloadingList;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v12

    .line 16
    const-string v9, "startload"

    const-string v13, "vast"

    invoke-static/range {v6 .. v13}, Lccsansan/bn/pause;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x60
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2c
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x25
        :pswitch_3
    .end packed-switch
.end method

.method public getDownloadingList()Ljava/lang/String;
    .locals 2

    .line 1
    sget v0, Lccsansan/cn/getDownloadingList$addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 v0, v0, 0x5

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cn/getDownloadingList$addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x29

    goto :goto_0

    :cond_0
    const/16 v0, 0x5d

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsansan/cn/getDownloadingList$addDownloadListener;->IncentiveDownloadUtils:Lccsansan/cn/getDownloadingList;

    invoke-static {v0}, Lccsansan/cn/getDownloadingList;->getDownloadingList(Lccsansan/cn/getDownloadingList;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lccsansan/cn/getDownloadingList$addDownloadListener;->IncentiveDownloadUtils:Lccsansan/cn/getDownloadingList;

    invoke-static {v0}, Lccsansan/cn/getDownloadingList;->getDownloadingList(Lccsansan/cn/getDownloadingList;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :goto_1
    const/16 v1, 0x15

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
    .packed-switch 0x5d
        :pswitch_0
    .end packed-switch
.end method

.method public unifiedDownload(Lccsansan/cs/IncentiveDownloadUtils;)V
    .locals 4

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Lccsanandroid/graphics/Color;->red(I)I

    move-result v2

    const-string v3, "\uae99\u33e6\uf971\u1c5f\uaef6\ub168\ufce2\u948b\ua578\ubdf4\ue845\u885f\ub9dd\uaa69\ue5c6\u8391\u8c75\u96e9\ud150\ub71b\u80cf\u836f\ucad5\uaa9a\u9776\u8faa\uc611\ude0d\uebfc\uf465\ub3de\ud18d\ufe7d\ue0a6\uaf44\uc50d\uf2f5\ued26\u988c\uf8df"

    invoke-static {v3, v2}, Lccsansan/cn/getDownloadingList$addDownloadListener;->unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsansan/cs/IncentiveDownloadUtils;->removeDownloadListener()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-static {v0, v1}, Lccsanandroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    const-string v1, "\u425a\u3e7a\ua24d\u2c2e\u420c\ubcfb\ua7fe\ua4fa\u499e\ub075\ub37a\ub860\u5536\ua7f5\ubeec\ub3ea\u6097\u9b7b\u8a63\u876f\u6c3d\u8eff\u91ff"

    invoke-static {v1, v0}, Lccsansan/cn/getDownloadingList$addDownloadListener;->unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    sget p1, Lccsansan/cn/getDownloadingList$addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 p1, p1, 0x65

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/cn/getDownloadingList$addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method
