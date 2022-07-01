.class Lccsansan/w/IncentiveDownloadUtils$getDownloadingList$addDownloadListener;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/w/IncentiveDownloadUtils$getDownloadingList;->onListenerChange(Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static IncentiveDownloadUtils:J

.field private static getDownloadingRecordByUrl:I

.field private static removeDownloadListener:I


# instance fields
.field final synthetic addDownloadListener:Ljava/lang/String;

.field final synthetic getDownloadingList:Ljava/lang/String;

.field final synthetic unifiedDownload:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lccsansan/w/IncentiveDownloadUtils$getDownloadingList$addDownloadListener;->removeDownloadListener:I

    const/4 v0, 0x1

    sput v0, Lccsansan/w/IncentiveDownloadUtils$getDownloadingList$addDownloadListener;->getDownloadingRecordByUrl:I

    const-wide v0, 0x4a2e48ee74106fc2L    # 2.2130707071700946E49

    sput-wide v0, Lccsansan/w/IncentiveDownloadUtils$getDownloadingList$addDownloadListener;->IncentiveDownloadUtils:J

    return-void
.end method

.method constructor <init>(Lccsansan/w/IncentiveDownloadUtils$getDownloadingList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lccsansan/w/IncentiveDownloadUtils$getDownloadingList$addDownloadListener;->getDownloadingList:Ljava/lang/String;

    iput-object p3, p0, Lccsansan/w/IncentiveDownloadUtils$getDownloadingList$addDownloadListener;->addDownloadListener:Ljava/lang/String;

    iput-object p4, p0, Lccsansan/w/IncentiveDownloadUtils$getDownloadingList$addDownloadListener;->unifiedDownload:Ljava/lang/String;

    invoke-direct {p0}, Lccsancom/san/ads/Task;-><init>()V

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
    sget-wide v1, Lccsansan/w/IncentiveDownloadUtils$getDownloadingList$addDownloadListener;->IncentiveDownloadUtils:J

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

    sget-wide v6, Lccsansan/w/IncentiveDownloadUtils$getDownloadingList$addDownloadListener;->IncentiveDownloadUtils:J

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
.method public execute()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 27
    nop

    .line 1
    iget-object v0, p0, Lccsansan/w/IncentiveDownloadUtils$getDownloadingList$addDownloadListener;->getDownloadingList:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    invoke-static {v3}, Lccsanandroid/graphics/Color;->red(I)I

    move-result v2

    const-string v3, "\ub528\ub549\u0a27\u8978\ue8da\u6581\u56a3\ua7f8\u0a4f\u249a\u179a\ue6f8\ucb57\ue794\ud488\u25d3\u8843\ua689\u9585\u64f6\u497c"

    invoke-static {v3, v2}, Lccsansan/w/IncentiveDownloadUtils$getDownloadingList$addDownloadListener;->unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v1, 0x5

    .line 27
    sget v0, Lccsansan/w/IncentiveDownloadUtils$getDownloadingList$addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x33

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/w/IncentiveDownloadUtils$getDownloadingList$addDownloadListener;->removeDownloadListener:I

    rem-int/2addr v0, v4

    if-eqz v0, :cond_1

    :cond_1
    :goto_0
    goto/16 :goto_3

    .line 1
    :sswitch_1
    const-string v2, ""

    invoke-static {v2, v2}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v2

    const-string v3, "\ubbed\ubb8c\ucc97\ua60b\u45ae\ua331\u79d0\u0a8c\u048a\ue22a\u38e9\u4b8c\uc592\u2124\ufbfb\u88a7\u8685\u602c\ubae2\uc983\u47a8"

    invoke-static {v3, v2}, Lccsansan/w/IncentiveDownloadUtils$getDownloadingList$addDownloadListener;->unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x4

    goto/16 :goto_3

    :sswitch_2
    invoke-static {v5, v5}, Lccsanandroid/graphics/PointF;->length(FF)F

    move-result v2

    const-string v3, "\uad15\uad74\uf2b5\u6120\u6267\u9d13\ubefb\u2d45\u1272\udc08\uffc2\u6c45\ud36a\u1f06\u3cd0\uaf6e\u907e\u5e1b\u7dd3\uee4b\u5154\u9930\ubae1\u295e\u1658\ud82d\ufbfe\u6866\ud757"

    cmpl-float v2, v2, v5

    invoke-static {v3, v2}, Lccsansan/w/IncentiveDownloadUtils$getDownloadingList$addDownloadListener;->unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x3

    goto :goto_3

    :sswitch_3
    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    const-string v3, "\ud5d3\ud5b2\u2443\ua86a\uaaf0\u4be5\u77b1\ue5d2\u6ab4\u0afe\u3688\ua4d2\uabac\uc9f0\uf59a\u67f9\ue8ad\u88f8\ub49f\u26c2\u2996\u4fc5"

    invoke-static {v3, v2}, Lccsansan/w/IncentiveDownloadUtils$getDownloadingList$addDownloadListener;->unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x2

    goto :goto_3

    :sswitch_4
    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    const-string v3, "\ub6fd\ub69c\u7a72\u99ea\u5644\u15d4\u4631\u1966\u099a\u54cf\u0708\u5866\uc882\u97c1\uc41a\u9b4d\u8b81\ud6cd\u851a\uda7f\u4aa9\u11f5"

    invoke-static {v3, v2}, Lccsansan/w/IncentiveDownloadUtils$getDownloadingList$addDownloadListener;->unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :goto_1
    goto :goto_3

    :cond_5
    const/4 v1, 0x1

    goto :goto_3

    :sswitch_5
    invoke-static {}, Lccsanandroid/media/AudioTrack;->getMinVolume()F

    move-result v2

    const-string v4, "\udaa6\udac7\u06f4\u191d\u95ae\u6952\uc6c6\uda8c\u65c1\u2849\u87ff\u9b8c\ua4d9\ueb47\u44ed\u58a7\ue7cd\uaa5b\u05e2\u1993\u26e3\u6d65\uc2ca"

    cmpl-float v2, v2, v5

    invoke-static {v4, v2}, Lccsansan/w/IncentiveDownloadUtils$getDownloadingList$addDownloadListener;->unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    goto :goto_3

    .line 27
    :goto_2
    sget v0, Lccsansan/w/IncentiveDownloadUtils$getDownloadingList$addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/w/IncentiveDownloadUtils$getDownloadingList$addDownloadListener;->removeDownloadListener:I

    rem-int/2addr v0, v4

    if-eqz v0, :cond_7

    const/16 v0, 0x2c

    goto/16 :goto_0

    :cond_7
    const/16 v0, 0x4b

    goto/16 :goto_0

    .line 1
    :goto_3
    packed-switch v1, :pswitch_data_0

    goto :goto_4

    .line 3
    :pswitch_0
    iget-object v0, p0, Lccsansan/w/IncentiveDownloadUtils$getDownloadingList$addDownloadListener;->addDownloadListener:Ljava/lang/String;

    iget-object v1, p0, Lccsansan/w/IncentiveDownloadUtils$getDownloadingList$addDownloadListener;->unifiedDownload:Ljava/lang/String;

    invoke-static {v0, v1}, Lccsansan/ay/getDownloadingList;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 15
    :pswitch_1
    iget-object v0, p0, Lccsansan/w/IncentiveDownloadUtils$getDownloadingList$addDownloadListener;->addDownloadListener:Ljava/lang/String;

    iget-object v1, p0, Lccsansan/w/IncentiveDownloadUtils$getDownloadingList$addDownloadListener;->unifiedDownload:Ljava/lang/String;

    invoke-static {v0, v1}, Lccsansan/ay/getDownloadingList;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    goto :goto_4

    .line 16
    :pswitch_2
    iget-object v0, p0, Lccsansan/w/IncentiveDownloadUtils$getDownloadingList$addDownloadListener;->addDownloadListener:Ljava/lang/String;

    iget-object v1, p0, Lccsansan/w/IncentiveDownloadUtils$getDownloadingList$addDownloadListener;->unifiedDownload:Ljava/lang/String;

    invoke-static {v0, v1}, Lccsansan/ay/getDownloadingList;->getDownloadStatusByUrl(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 25
    :pswitch_3
    iget-object v0, p0, Lccsansan/w/IncentiveDownloadUtils$getDownloadingList$addDownloadListener;->addDownloadListener:Ljava/lang/String;

    iget-object v1, p0, Lccsansan/w/IncentiveDownloadUtils$getDownloadingList$addDownloadListener;->unifiedDownload:Ljava/lang/String;

    invoke-static {v0, v1}, Lccsansan/ay/getDownloadingList;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 26
    :pswitch_4
    iget-object v0, p0, Lccsansan/w/IncentiveDownloadUtils$getDownloadingList$addDownloadListener;->addDownloadListener:Ljava/lang/String;

    iget-object v1, p0, Lccsansan/w/IncentiveDownloadUtils$getDownloadingList$addDownloadListener;->unifiedDownload:Ljava/lang/String;

    invoke-static {v0, v1}, Lccsansan/ay/getDownloadingList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 27
    :pswitch_5
    iget-object v0, p0, Lccsansan/w/IncentiveDownloadUtils$getDownloadingList$addDownloadListener;->addDownloadListener:Ljava/lang/String;

    iget-object v1, p0, Lccsansan/w/IncentiveDownloadUtils$getDownloadingList$addDownloadListener;->unifiedDownload:Ljava/lang/String;

    invoke-static {v0, v1}, Lccsansan/ay/getDownloadingList;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x66f89818 -> :sswitch_5
        -0x4712b2da -> :sswitch_4
        -0x43e2a448 -> :sswitch_3
        -0x1ebda897 -> :sswitch_2
        0x406d031b -> :sswitch_1
        0x409fa187 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
