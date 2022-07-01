.class public Lccsancom/san/proaz/OutProAzOperatorActivity;
.super Lccsanandroid/app/Activity;
.source ""


# static fields
.field private static IncentiveDownloadUtils:I

.field private static addDownloadListener:C

.field private static getDownloadingList:I

.field private static removeDownloadListener:J

.field private static unifiedDownload:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    sput v0, Lccsancom/san/proaz/OutProAzOperatorActivity;->unifiedDownload:I

    const/4 v1, 0x1

    sput v1, Lccsancom/san/proaz/OutProAzOperatorActivity;->IncentiveDownloadUtils:I

    const-wide v1, -0xe2f933d4d90518cL    # -1.711267330057281E240

    sput-wide v1, Lccsancom/san/proaz/OutProAzOperatorActivity;->removeDownloadListener:J

    sput-char v0, Lccsancom/san/proaz/OutProAzOperatorActivity;->addDownloadListener:C

    sput v0, Lccsancom/san/proaz/OutProAzOperatorActivity;->getDownloadingList:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsanandroid/app/Activity;-><init>()V

    return-void
.end method

.method private static addDownloadListener(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;
    .locals 7

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->toCharArray()[C

    move-result-object p4

    :cond_0
    check-cast p4, [C

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    :cond_1
    check-cast p1, [C

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_2
    check-cast p0, [C

    .line 1123
    sget-object v0, Lccsansan/d/getDownloadingCount;->addDownloadListener:Ljava/lang/Object;

    monitor-enter v0

    .line 1125
    :try_start_0
    invoke-virtual {p4}, [C->clone()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [C

    .line 1126
    invoke-virtual {p1}, [C->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [C

    .line 1127
    const/4 v1, 0x0

    aget-char v2, p4, v1

    xor-int/2addr p2, v2

    int-to-char p2, p2

    aput-char p2, p4, v1

    .line 1128
    const/4 p2, 0x2

    aget-char v2, p1, p2

    int-to-char p3, p3

    add-int/2addr v2, p3

    int-to-char p3, v2

    aput-char p3, p1, p2

    .line 1130
    array-length p3, p0

    .line 1131
    new-array v2, p3, [C

    .line 1132
    sput v1, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    :goto_0
    sget v1, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    if-ge v1, p3, :cond_3

    .line 1134
    sget v1, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    add-int/2addr v1, p2

    rem-int/lit8 v1, v1, 0x4

    .line 1135
    sget v3, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    add-int/lit8 v3, v3, 0x3

    rem-int/lit8 v3, v3, 0x4

    .line 1138
    sget v4, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    rem-int/lit8 v4, v4, 0x4

    aget-char v4, p4, v4

    mul-int/lit16 v4, v4, 0x7fce

    aget-char v5, p1, v1

    add-int/2addr v4, v5

    const v5, 0xffff

    rem-int/2addr v4, v5

    int-to-char v4, v4

    sput-char v4, Lccsansan/d/getDownloadingCount;->unifiedDownload:C

    .line 1141
    aget-char v4, p4, v3

    mul-int/lit16 v4, v4, 0x7fce

    aget-char v1, p1, v1

    add-int/2addr v4, v1

    div-int/2addr v4, v5

    int-to-char v1, v4

    aput-char v1, p1, v3

    .line 1144
    sget-char v1, Lccsansan/d/getDownloadingCount;->unifiedDownload:C

    aput-char v1, p4, v3

    .line 1147
    sget v1, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    sget v4, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    aget-char v4, p0, v4

    aget-char v3, p4, v3

    xor-int/2addr v3, v4

    int-to-long v3, v3

    sget-wide v5, Lccsancom/san/proaz/OutProAzOperatorActivity;->removeDownloadListener:J

    xor-long/2addr v3, v5

    sget v5, Lccsancom/san/proaz/OutProAzOperatorActivity;->getDownloadingList:I

    int-to-long v5, v5

    xor-long/2addr v3, v5

    sget-char v5, Lccsancom/san/proaz/OutProAzOperatorActivity;->addDownloadListener:C

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

.method private getDownloadingList(Lccsanandroid/app/Activity;II)V
    .locals 3

    .line 43
    nop

    .line 38
    sget v0, Lccsancom/san/proaz/OutProAzOperatorActivity;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x45

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proaz/OutProAzOperatorActivity;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 31
    :cond_0
    invoke-virtual {p1}, Lccsanandroid/app/Activity;->getWindow()Lccsanandroid/view/Window;

    move-result-object p1

    .line 33
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 43
    sget v0, Lccsancom/san/proaz/OutProAzOperatorActivity;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proaz/OutProAzOperatorActivity;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    .line 38
    const/16 v0, 0x2d

    goto :goto_0

    :cond_1
    const/16 v0, 0x2f

    :goto_0
    const/high16 v1, -0x80000000

    const/high16 v2, 0xc000000

    packed-switch v0, :pswitch_data_0

    .line 33
    nop

    .line 34
    invoke-virtual {p1, v2}, Lccsanandroid/view/Window;->clearFlags(I)V

    .line 35
    invoke-virtual {p1}, Lccsanandroid/view/Window;->getDecorView()Lccsanandroid/view/View;

    move-result-object v0

    const/16 v2, 0x700

    :goto_1
    invoke-virtual {v0, v2}, Lccsanandroid/view/View;->setSystemUiVisibility(I)V

    .line 36
    invoke-virtual {p1, v1}, Lccsanandroid/view/Window;->addFlags(I)V

    .line 37
    invoke-virtual {p1, p2}, Lccsanandroid/view/Window;->setStatusBarColor(I)V

    .line 38
    invoke-virtual {p1, p3}, Lccsanandroid/view/Window;->setNavigationBarColor(I)V

    return-void

    .line 43
    :pswitch_0
    nop

    .line 34
    invoke-virtual {p1, v2}, Lccsanandroid/view/Window;->clearFlags(I)V

    .line 35
    invoke-virtual {p1}, Lccsanandroid/view/Window;->getDecorView()Lccsanandroid/view/View;

    move-result-object v0

    const/16 v2, 0x200f

    goto :goto_1

    .line 38
    :cond_2
    const/16 p2, 0x13

    if-lt v0, p2, :cond_3

    const/16 p2, 0x2a

    goto :goto_2

    :cond_3
    const/16 p2, 0x56

    :goto_2
    packed-switch p2, :pswitch_data_1

    const/high16 p2, 0x4000000

    .line 42
    invoke-virtual {p1, p2}, Lccsanandroid/view/Window;->addFlags(I)V

    const/high16 p2, 0x8000000

    .line 43
    invoke-virtual {p1, p2}, Lccsanandroid/view/Window;->addFlags(I)V

    :pswitch_1
    return-void

    :pswitch_data_0
    .packed-switch 0x2d
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x56
        :pswitch_1
    .end packed-switch
.end method

.method private unifiedDownload()V
    .locals 10

    .line 30
    nop

    .line 0
    const/4 v0, 0x0

    invoke-static {v0, v0}, Lccsanandroid/graphics/PointF;->length(FF)F

    move-result v1

    const/4 v2, 0x1

    const-string v3, "\uae74\ub26f\u6cc2\uf1d0"

    const/4 v4, 0x0

    const-string v5, "\u1855\ubcee\ua43e\u4001\u55ae\uce0f\ud323\uf5ea\u4cf4\ue23e\uc6e8\u7255\uc1c2\u0a76\ua306\u3dbc\u86ff\u1de4\uedf6\u344b\u507a\u5e60\u2d28\u42c2\ufa71\u3047\u1e56\u4093\uf5b0"

    const-string v6, "\uc44c\u6946\u49e4\udc6c"

    const-string v7, "#execFullScreenPop"

    const-string v8, "source_key"

    cmpl-float v0, v1, v0

    rsub-int v0, v0, 0x6c49

    int-to-char v0, v0

    const v1, -0x1b96b93c

    invoke-static {v4, v4}, Lccsanandroid/view/KeyEvent;->getDeadChar(II)I

    move-result v9

    sub-int/2addr v1, v9

    invoke-static {v5, v3, v0, v1, v6}, Lccsancom/san/proaz/OutProAzOperatorActivity;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 1
    invoke-static {v0, v7}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lccsanandroid/app/Activity;->getIntent()Lccsanandroid/content/Intent;

    move-result-object v1

    .line 3
    invoke-virtual {v1, v8}, Lccsanandroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4
    invoke-static {v5}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 5
    const-string v1, "#execFullScreenPop return for sourceKey is null"

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lccsanandroid/app/Activity;->finish()V

    .line 30
    sget v0, Lccsancom/san/proaz/OutProAzOperatorActivity;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x25

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proaz/OutProAzOperatorActivity;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 15
    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 30
    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    .line 6
    :cond_1
    nop

    .line 10
    const-string v6, "source_fullscreen"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 11
    const-string v5, "intent_pkg"

    invoke-virtual {v1, v5}, Lccsanandroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 12
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "#execFullScreenPop packageName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 15
    const/16 v5, 0xd

    goto :goto_2

    :cond_2
    const/16 v5, 0x58

    :goto_2
    packed-switch v5, :pswitch_data_1

    .line 19
    const-string v4, "source_app_item"

    invoke-static {v4}, Lccsansan/bw/setErrorMessage;->unifiedDownload(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsansan/p/getDownloadedList;

    if-eqz v4, :cond_6

    goto :goto_4

    .line 30
    :pswitch_1
    sget v1, Lccsancom/san/proaz/OutProAzOperatorActivity;->unifiedDownload:I

    add-int/lit8 v1, v1, 0x23

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/proaz/OutProAzOperatorActivity;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    const-string v2, "#execFullScreenPop return for packageName is null"

    if-nez v1, :cond_3

    .line 14
    invoke-static {v0, v2}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0}, Lccsanandroid/app/Activity;->finish()V

    const/16 v0, 0x15

    :try_start_1
    div-int/2addr v0, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    .line 30
    :catchall_1
    move-exception v0

    throw v0

    .line 13
    :cond_3
    nop

    .line 14
    invoke-static {v0, v2}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0}, Lccsanandroid/app/Activity;->finish()V

    .line 30
    :goto_3
    return-void

    :goto_4
    sget v5, Lccsancom/san/proaz/OutProAzOperatorActivity;->unifiedDownload:I

    add-int/lit8 v5, v5, 0x4b

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lccsancom/san/proaz/OutProAzOperatorActivity;->IncentiveDownloadUtils:I

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_4

    .line 20
    :cond_4
    invoke-virtual {v4}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_5

    .line 26
    :cond_5
    const-string v0, "out_fullScreenIntent"

    const-string v2, "fullScreen_button"

    invoke-static {v0, v1, v2}, Lccsansan/bn/getDownloadedCount;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsancom/san/proaz/OutProAzOperatorActivity$getDownloadingList;

    invoke-direct {v1, p0, v4}, Lccsancom/san/proaz/OutProAzOperatorActivity$getDownloadingList;-><init>(Lccsancom/san/proaz/OutProAzOperatorActivity;Lccsansan/p/getDownloadedList;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    goto :goto_6

    .line 29
    :cond_6
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-static {v5, v5}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v5

    int-to-char v5, v5

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v6

    add-int/2addr v6, v2

    const-string v2, "\u1913\ue1a1\uf36f\u7143\u708c\u62f5\u5740\u0d63\uf8c4\u12c7\ue7c3\u1ed3\u6238\u4ac1\u02e3\u84e3\ub7ff\udda2\u02ed\ufac6\u16ba\u8906\u788a\u8f01\u3084\uce73\u9e88\u116b\u56d9\u470b\u85a4\ud6ef\u1184\ua6f3\ubf25\u2309\uad46\u245f\u1369\u4a09\ua608\uca6e\u0241\u7e32\ubec4\u1e02\uc1a0\u8c29\uf534\u5cd9\u9572\u38a1\u04cb\u9eaf\u79b0\u31da\ucc26\u8ebb\u1cd6\udd21\u504e\ub3c8\u646a\u990c\udb35\u77ca\uc403\u9cb8\ud56d\u1443\ub3ac\ufb76\u3e85\udceb\u48e6\u3412\u5f19\u8ca1\udead\uf776\u3bdd\u02ac\u660f\u9599\u644a\ub2c4"

    const-string v7, "\ue20c\u9e75\u8e9d\ue735"

    invoke-static {v2, v3, v5, v6, v7}, Lccsancom/san/proaz/OutProAzOperatorActivity;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0}, Lccsanandroid/app/Activity;->finish()V

    :cond_7
    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xd
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getResources()Lccsanandroid/content/res/Resources;
    .locals 2

    sget v0, Lccsancom/san/proaz/OutProAzOperatorActivity;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x69

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proaz/OutProAzOperatorActivity;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Lccsanandroid/app/Activity;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lccsansan/d/deleteDownItem;->IncentiveDownloadUtils(Lccsanandroid/content/res/Resources;)Lccsanandroid/content/res/Resources;

    move-result-object v0

    goto :goto_1

    :pswitch_0
    invoke-super {p0}, Lccsanandroid/app/Activity;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lccsansan/d/deleteDownItem;->IncentiveDownloadUtils(Lccsanandroid/content/res/Resources;)Lccsanandroid/content/res/Resources;

    move-result-object v0

    goto :goto_2

    :goto_1
    const/4 v1, 0x0

    :try_start_0
    array-length v1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Lccsanandroid/os/Bundle;)V
    .locals 3

    .line 13
    sget v0, Lccsancom/san/proaz/OutProAzOperatorActivity;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x49

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proaz/OutProAzOperatorActivity;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 3
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1
    invoke-super {p0, p1}, Lccsanandroid/app/Activity;->onCreate(Lccsanandroid/os/Bundle;)V

    .line 3
    sget p1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-le p1, v0, :cond_2

    goto :goto_2

    .line 1
    :pswitch_0
    invoke-super {p0, p1}, Lccsanandroid/app/Activity;->onCreate(Lccsanandroid/os/Bundle;)V

    .line 3
    sget p1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x65

    if-le p1, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    packed-switch v1, :pswitch_data_1

    goto :goto_4

    :goto_2
    const/16 p1, 0xd

    goto :goto_3

    :cond_2
    const/4 p1, 0x0

    :goto_3
    packed-switch p1, :pswitch_data_2

    :pswitch_1
    :try_start_0
    const-string p1, "notification"

    .line 5
    invoke-virtual {p0, p1}, Lccsanandroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsanandroid/app/NotificationManager;

    const v0, 0x186a1

    .line 6
    invoke-virtual {p1, v0}, Lccsanandroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    goto :goto_4

    .line 6
    :catch_0
    move-exception p1

    :goto_4
    :pswitch_2
    nop

    .line 11
    invoke-direct {p0, p0, v2, v2}, Lccsancom/san/proaz/OutProAzOperatorActivity;->getDownloadingList(Lccsanandroid/app/Activity;II)V

    .line 13
    invoke-direct {p0}, Lccsancom/san/proaz/OutProAzOperatorActivity;->unifiedDownload()V

    .line 3
    sget p1, Lccsancom/san/proaz/OutProAzOperatorActivity;->IncentiveDownloadUtils:I

    add-int/lit8 p1, p1, 0x4f

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/proaz/OutProAzOperatorActivity;->unifiedDownload:I

    rem-int/lit8 p1, p1, 0x2

    .line 13
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method
