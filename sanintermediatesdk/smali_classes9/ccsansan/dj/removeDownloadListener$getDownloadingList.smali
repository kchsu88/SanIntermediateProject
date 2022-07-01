.class Lccsansan/dj/removeDownloadListener$getDownloadingList;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/cv/IncentiveDownloadUtils$IncentiveDownloadUtils;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/dj/removeDownloadListener;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static addDownloadListener:I

.field private static removeDownloadListener:J

.field private static unifiedDownload:I


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsansan/dj/removeDownloadListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lccsansan/dj/removeDownloadListener$getDownloadingList;->unifiedDownload:I

    const/4 v0, 0x1

    sput v0, Lccsansan/dj/removeDownloadListener$getDownloadingList;->addDownloadListener:I

    const-wide v0, 0x4d0cf3c8179b3313L    # 1.4887842306467466E63

    sput-wide v0, Lccsansan/dj/removeDownloadListener$getDownloadingList;->removeDownloadListener:J

    return-void
.end method

.method constructor <init>(Lccsansan/dj/removeDownloadListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/dj/removeDownloadListener$getDownloadingList;->IncentiveDownloadUtils:Lccsansan/dj/removeDownloadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static IncentiveDownloadUtils(Ljava/lang/String;I)Ljava/lang/String;
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
    sget-wide v1, Lccsansan/dj/removeDownloadListener$getDownloadingList;->removeDownloadListener:J

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

    sget-wide v6, Lccsansan/dj/removeDownloadListener$getDownloadingList;->removeDownloadListener:J

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
.method public IncentiveDownloadUtils(Ljava/lang/String;JJ)V
    .locals 9

    .line 18
    sget v0, Lccsansan/dj/removeDownloadListener$getDownloadingList;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x63

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dj/removeDownloadListener$getDownloadingList;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1
    :cond_0
    iget-object v0, p0, Lccsansan/dj/removeDownloadListener$getDownloadingList;->IncentiveDownloadUtils:Lccsansan/dj/removeDownloadListener;

    invoke-static {v0}, Lccsansan/dj/removeDownloadListener;->addDownloadListener(Lccsansan/dj/removeDownloadListener;)Lccsansan/aw/IncentiveDownloadUtils;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/aw/IncentiveDownloadUtils;->IncentiveSDK()J

    move-result-wide v0

    cmp-long v2, p2, v0

    if-nez v2, :cond_1

    .line 18
    const/16 v0, 0x2d

    goto :goto_0

    :cond_1
    const/16 v0, 0x1e

    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1
    const/4 v0, 0x0

    goto :goto_1

    .line 18
    :pswitch_0
    sget v0, Lccsansan/dj/removeDownloadListener$getDownloadingList;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x19

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsansan/dj/removeDownloadListener$getDownloadingList;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    .line 1
    :cond_2
    nop

    .line 18
    const/4 v0, 0x1

    .line 1
    :goto_1
    invoke-static {v0}, Lccsansan/bw/trackReportShow;->unifiedDownload(Z)V

    .line 2
    iget-object v0, p0, Lccsansan/dj/removeDownloadListener$getDownloadingList;->IncentiveDownloadUtils:Lccsansan/dj/removeDownloadListener;

    invoke-static {v0}, Lccsansan/dj/removeDownloadListener;->unifiedDownload(Lccsansan/dj/removeDownloadListener;)Lccsansan/dj/getDownloadingList;

    move-result-object v3

    move-object v4, p1

    move-wide v5, p2

    move-wide v7, p4

    invoke-virtual/range {v3 .. v8}, Lccsansan/dj/getDownloadingList;->IncentiveDownloadUtils(Ljava/lang/String;JJ)V

    .line 4
    iget-object v0, p0, Lccsansan/dj/removeDownloadListener$getDownloadingList;->IncentiveDownloadUtils:Lccsansan/dj/removeDownloadListener;

    invoke-static {v0}, Lccsansan/dj/removeDownloadListener;->addDownloadListener(Lccsansan/dj/removeDownloadListener;)Lccsansan/aw/IncentiveDownloadUtils;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/aw/IncentiveDownloadUtils;->IncentiveSDK()J

    move-result-wide v3

    cmp-long v0, p2, v3

    if-eqz v0, :cond_3

    .line 6
    :try_start_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v3, "url"

    .line 7
    invoke-virtual {v0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "origin_length"

    .line 8
    :try_start_1
    iget-object v4, p0, Lccsansan/dj/removeDownloadListener$getDownloadingList;->IncentiveDownloadUtils:Lccsansan/dj/removeDownloadListener;

    invoke-static {v4}, Lccsansan/dj/removeDownloadListener;->addDownloadListener(Lccsansan/dj/removeDownloadListener;)Lccsansan/aw/IncentiveDownloadUtils;

    move-result-object v4

    invoke-virtual {v4}, Lccsansan/aw/IncentiveDownloadUtils;->IncentiveSDK()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v3, "content_length"

    .line 9
    :try_start_2
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v3, "start"

    .line 10
    :try_start_3
    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v3, p0, Lccsansan/dj/removeDownloadListener$getDownloadingList;->IncentiveDownloadUtils:Lccsansan/dj/removeDownloadListener;

    invoke-static {v3}, Lccsansan/dj/removeDownloadListener;->addDownloadListener(Lccsansan/dj/removeDownloadListener;)Lccsansan/aw/IncentiveDownloadUtils;

    move-result-object v3

    invoke-virtual {v3, p1}, Lccsansan/aw/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "contentId"

    .line 12
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {v0}, Lccsansan/l/unifiedDownload;->getDownloadingList(Ljava/util/HashMap;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 17
    :cond_3
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStart threadId : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lccsansan/dj/removeDownloadListener$getDownloadingList;->IncentiveDownloadUtils:Lccsansan/dj/removeDownloadListener;

    invoke-static {v4}, Lccsansan/dj/removeDownloadListener;->removeDownloadListener(Lccsansan/dj/removeDownloadListener;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " url : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2}, Lccsanandroid/graphics/Color;->alpha(I)I

    move-result v0

    sub-int/2addr v1, v0

    const-string v0, "\ua9f8\u8bb9\ua9b5\ub8df\u98bf\ufef5\u5562\u65dd\ucc2f\u74b6\uaaac\ua9d8\u3114\u4056\u666e\ufd89\ucd72\u1c22\u53da\u3253\u98ac"

    invoke-static {v0, v1}, Lccsansan/dj/removeDownloadListener$getDownloadingList;->IncentiveDownloadUtils(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/dj/removeDownloadListener$getDownloadingList;->IncentiveDownloadUtils:Lccsansan/dj/removeDownloadListener;

    invoke-static {v1}, Lccsansan/dj/removeDownloadListener;->removeDownloadListener(Lccsansan/dj/removeDownloadListener;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " length : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " start : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lccsanandroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p2

    const-wide/16 p4, 0x0

    cmp-long v1, p2, p4

    invoke-static {v0, v1}, Lccsansan/dj/removeDownloadListener$getDownloadingList;->IncentiveDownloadUtils(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    sget p1, Lccsansan/dj/removeDownloadListener$getDownloadingList;->addDownloadListener:I

    add-int/lit8 p1, p1, 0x75

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/dj/removeDownloadListener$getDownloadingList;->unifiedDownload:I

    rem-int/lit8 p1, p1, 0x2

    return-void

    :pswitch_data_0
    .packed-switch 0x2d
        :pswitch_0
    .end packed-switch
.end method

.method public IncentiveDownloadUtils(Ljava/lang/String;Z)V
    .locals 3

    .line 21
    nop

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResult threadId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/dj/removeDownloadListener$getDownloadingList;->IncentiveDownloadUtils:Lccsansan/dj/removeDownloadListener;

    invoke-static {v1}, Lccsansan/dj/removeDownloadListener;->removeDownloadListener(Lccsansan/dj/removeDownloadListener;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " succeeded : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " url : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v1, v1, v1}, Lccsanandroid/graphics/Color;->argb(IIII)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x1

    const-string v2, "\ua9f8\u8bb9\ua9b5\ub8df\u98bf\ufef5\u5562\u65dd\ucc2f\u74b6\uaaac\ua9d8\u3114\u4056\u666e\ufd89\ucd72\u1c22\u53da\u3253\u98ac"

    invoke-static {v2, v1}, Lccsansan/dj/removeDownloadListener$getDownloadingList;->IncentiveDownloadUtils(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lccsansan/dj/removeDownloadListener$getDownloadingList;->IncentiveDownloadUtils:Lccsansan/dj/removeDownloadListener;

    invoke-static {v0}, Lccsansan/dj/removeDownloadListener;->unifiedDownload(Lccsansan/dj/removeDownloadListener;)Lccsansan/dj/getDownloadingList;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lccsansan/dj/getDownloadingList;->getDownloadingList(Ljava/lang/String;Z)V

    sget p1, Lccsansan/dj/removeDownloadListener$getDownloadingList;->addDownloadListener:I

    add-int/lit8 p1, p1, 0x7b

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/dj/removeDownloadListener$getDownloadingList;->unifiedDownload:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    const/16 p1, 0x12

    goto :goto_0

    :cond_0
    const/16 p1, 0x55

    :goto_0
    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 p1, 0x0

    :try_start_0
    array-length p1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
    .end packed-switch
.end method

.method public removeDownloadListener(Ljava/lang/String;JJ)V
    .locals 7

    .line 2
    nop

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onProgress threadId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/dj/removeDownloadListener$getDownloadingList;->IncentiveDownloadUtils:Lccsansan/dj/removeDownloadListener;

    invoke-static {v1}, Lccsansan/dj/removeDownloadListener;->removeDownloadListener(Lccsansan/dj/removeDownloadListener;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " length : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " completed : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v1, v1}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const-string v2, "\ua9f8\u8bb9\ua9b5\ub8df\u98bf\ufef5\u5562\u65dd\ucc2f\u74b6\uaaac\ua9d8\u3114\u4056\u666e\ufd89\ucd72\u1c22\u53da\u3253\u98ac"

    invoke-static {v2, v1}, Lccsansan/dj/removeDownloadListener$getDownloadingList;->IncentiveDownloadUtils(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lccsansan/dj/removeDownloadListener$getDownloadingList;->IncentiveDownloadUtils:Lccsansan/dj/removeDownloadListener;

    invoke-static {v0}, Lccsansan/dj/removeDownloadListener;->unifiedDownload(Lccsansan/dj/removeDownloadListener;)Lccsansan/dj/getDownloadingList;

    move-result-object v1

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lccsansan/dj/getDownloadingList;->getDownloadingList(Ljava/lang/String;JJ)V

    sget p1, Lccsansan/dj/removeDownloadListener$getDownloadingList;->unifiedDownload:I

    add-int/lit8 p1, p1, 0x3b

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/dj/removeDownloadListener$getDownloadingList;->addDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    const/16 p1, 0x51

    goto :goto_0

    :cond_0
    const/16 p1, 0x2e

    :goto_0
    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 p1, 0x0

    :try_start_0
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x51
        :pswitch_0
    .end packed-switch
.end method
