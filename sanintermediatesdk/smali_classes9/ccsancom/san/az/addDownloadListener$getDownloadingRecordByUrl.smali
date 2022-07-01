.class final Lccsancom/san/az/addDownloadListener$getDownloadingRecordByUrl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsancom/san/az/getDownloadedRecordByUrl$deleteDownItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/az/addDownloadListener;->getDownloadingList(Lccsansan/p/getDownloadedList;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# static fields
.field private static IncentiveDownloadUtils:I

.field private static deleteDownItem:I

.field private static getDownloadedList:I

.field private static getDownloadingList:C

.field private static removeDownloadListener:J


# instance fields
.field final synthetic addDownloadListener:Ljava/lang/String;

.field final synthetic unifiedDownload:Lccsansan/p/getDownloadedList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    sput v0, Lccsancom/san/az/addDownloadListener$getDownloadingRecordByUrl;->deleteDownItem:I

    const/4 v1, 0x1

    sput v1, Lccsancom/san/az/addDownloadListener$getDownloadingRecordByUrl;->getDownloadedList:I

    const-wide v1, -0x3d797c5f9c14afa6L    # -3.094323428714044E12

    sput-wide v1, Lccsancom/san/az/addDownloadListener$getDownloadingRecordByUrl;->removeDownloadListener:J

    sput-char v0, Lccsancom/san/az/addDownloadListener$getDownloadingRecordByUrl;->getDownloadingList:C

    sput v0, Lccsancom/san/az/addDownloadListener$getDownloadingRecordByUrl;->IncentiveDownloadUtils:I

    return-void
.end method

.method constructor <init>(Lccsansan/p/getDownloadedList;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/az/addDownloadListener$getDownloadingRecordByUrl;->unifiedDownload:Lccsansan/p/getDownloadedList;

    iput-object p2, p0, Lccsancom/san/az/addDownloadListener$getDownloadingRecordByUrl;->addDownloadListener:Ljava/lang/String;

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

    sget-wide v5, Lccsancom/san/az/addDownloadListener$getDownloadingRecordByUrl;->removeDownloadListener:J

    xor-long/2addr v3, v5

    sget v5, Lccsancom/san/az/addDownloadListener$getDownloadingRecordByUrl;->IncentiveDownloadUtils:I

    int-to-long v5, v5

    xor-long/2addr v3, v5

    sget-char v5, Lccsancom/san/az/addDownloadListener$getDownloadingRecordByUrl;->getDownloadingList:C

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
.method public unifiedDownload(ZLjava/lang/String;)V
    .locals 5

    .line 5
    sget p2, Lccsancom/san/az/addDownloadListener$getDownloadingRecordByUrl;->deleteDownItem:I

    add-int/lit8 p2, p2, 0x3

    rem-int/lit16 v0, p2, 0x80

    sput v0, Lccsancom/san/az/addDownloadListener$getDownloadingRecordByUrl;->getDownloadedList:I

    rem-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_0

    .line 0
    :cond_0
    const/4 p2, 0x0

    if-nez p1, :cond_1

    .line 5
    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    packed-switch p1, :pswitch_data_0

    :goto_1
    goto :goto_2

    .line 1
    :pswitch_0
    iget-object p1, p0, Lccsancom/san/az/addDownloadListener$getDownloadingRecordByUrl;->unifiedDownload:Lccsansan/p/getDownloadedList;

    const-string v0, "mode"

    const-string v1, "full_intent_active"

    invoke-virtual {p1, v0, v1}, Lccsansan/p/getDownloadedList;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lccsancom/san/az/addDownloadListener$getDownloadingRecordByUrl;->unifiedDownload:Lccsansan/p/getDownloadedList;

    const v1, 0x75e1f882

    const/16 v2, 0x30

    const-string v3, ""

    invoke-static {v3, v2, p2}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {p2, p2}, Lccsanandroid/view/View;->resolveSize(II)I

    move-result p2

    int-to-char p2, p2

    const-string v2, "\u83d4\ue1f8\u4275\u7a76"

    const-string v3, "\u505a\u63eb\u83a0\uc286"

    const-string v4, "\uaea2\udba0\ub80a\ue8bb\uf70d\u4c17\udcef\u4d69\u3b4a\u4b2d\ub4fd"

    invoke-static {v1, v2, v3, p2, v4}, Lccsancom/san/az/addDownloadListener$getDownloadingRecordByUrl;->addDownloadListener(ILjava/lang/String;Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v0}, Lccsancom/san/az/getDownloadedRecordByUrl;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;Lccsansan/p/getDownloadedList;)V

    .line 5
    sget p1, Lccsancom/san/az/addDownloadListener$getDownloadingRecordByUrl;->getDownloadedList:I

    const/16 p2, 0x57

    add-int/2addr p1, p2

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/az/addDownloadListener$getDownloadingRecordByUrl;->deleteDownItem:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/16 p2, 0x19

    goto :goto_1

    :goto_2
    new-instance p1, Lccsanandroid/os/Handler;

    invoke-direct {p1}, Lccsanandroid/os/Handler;-><init>()V

    new-instance p2, Lccsancom/san/az/addDownloadListener$getDownloadingRecordByUrl$IncentiveDownloadUtils;

    invoke-direct {p2, p0}, Lccsancom/san/az/addDownloadListener$getDownloadingRecordByUrl$IncentiveDownloadUtils;-><init>(Lccsancom/san/az/addDownloadListener$getDownloadingRecordByUrl;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Lccsanandroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
