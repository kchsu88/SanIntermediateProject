.class final Lccsancom/san/az/getDownloadedRecordByUrl$IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsanandroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/az/getDownloadedRecordByUrl;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# static fields
.field private static IncentiveDownloadUtils:I

.field private static unifiedDownload:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/az/getDownloadedRecordByUrl$IncentiveDownloadUtils;->unifiedDownload:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/az/getDownloadedRecordByUrl$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Lccsanandroid/app/Activity;Lccsanandroid/os/Bundle;)V
    .locals 2

    sget p1, Lccsancom/san/az/getDownloadedRecordByUrl$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    const/16 p2, 0x5b

    and-int/lit8 v0, p1, -0x5c

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v1, p2

    or-int/2addr v0, v1

    and-int/2addr p1, p2

    shl-int/lit8 p1, p1, 0x1

    xor-int p2, v0, p1

    and-int/2addr p1, v0

    shl-int/lit8 p1, p1, 0x1

    add-int/2addr p2, p1

    rem-int/lit16 p1, p2, 0x80

    sput p1, Lccsancom/san/az/getDownloadedRecordByUrl$IncentiveDownloadUtils;->unifiedDownload:I

    rem-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    const/16 p1, 0x25

    goto :goto_0

    :cond_0
    const/16 p1, 0x11

    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/4 p1, 0x0

    :try_start_0
    array-length p1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch
.end method

.method public onActivityDestroyed(Lccsanandroid/app/Activity;)V
    .locals 2

    sget p1, Lccsancom/san/az/getDownloadedRecordByUrl$IncentiveDownloadUtils;->unifiedDownload:I

    xor-int/lit8 v0, p1, 0x25

    and-int/lit8 v1, p1, 0x25

    or-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x1

    and-int/lit8 v1, p1, -0x26

    xor-int/lit8 p1, p1, -0x1

    and-int/lit8 p1, p1, 0x25

    or-int/2addr p1, v1

    sub-int/2addr v0, p1

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsancom/san/az/getDownloadedRecordByUrl$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method public onActivityPaused(Lccsanandroid/app/Activity;)V
    .locals 3

    sget p1, Lccsancom/san/az/getDownloadedRecordByUrl$IncentiveDownloadUtils;->unifiedDownload:I

    and-int/lit8 v0, p1, 0x79

    xor-int/lit8 v1, v0, -0x1

    or-int/lit8 p1, p1, 0x79

    and-int/2addr p1, v1

    const/4 v1, 0x1

    shl-int/2addr v0, v1

    neg-int v0, v0

    neg-int v0, v0

    or-int v2, p1, v0

    shl-int/2addr v2, v1

    xor-int/2addr p1, v0

    sub-int/2addr v2, p1

    rem-int/lit16 p1, v2, 0x80

    sput p1, Lccsancom/san/az/getDownloadedRecordByUrl$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    rem-int/lit8 v2, v2, 0x2

    const/4 p1, 0x0

    if-nez v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    packed-switch v1, :pswitch_data_0

    return-void

    :pswitch_0
    const/16 v0, 0x44

    :try_start_0
    div-int/2addr v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onActivityResumed(Lccsanandroid/app/Activity;)V
    .locals 3

    .line 3
    sget v0, Lccsancom/san/az/getDownloadedRecordByUrl$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    and-int/lit8 v1, v0, 0x57

    or-int/lit8 v0, v0, 0x57

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/az/getDownloadedRecordByUrl$IncentiveDownloadUtils;->unifiedDownload:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 1
    :cond_0
    invoke-static {}, Lccsancom/san/az/getDownloadedRecordByUrl;->getDownloadingList()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lccsanandroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 3
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    packed-switch p1, :pswitch_data_0

    :cond_2
    :goto_1
    goto :goto_4

    :pswitch_0
    sget p1, Lccsancom/san/az/getDownloadedRecordByUrl$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    and-int/lit8 v2, p1, 0x4a

    or-int/lit8 p1, p1, 0x4a

    add-int/2addr v2, p1

    sub-int/2addr v2, v0

    sub-int/2addr v2, v1

    rem-int/lit16 p1, v2, 0x80

    sput p1, Lccsancom/san/az/getDownloadedRecordByUrl$IncentiveDownloadUtils;->unifiedDownload:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3

    const/4 p1, 0x1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    packed-switch p1, :pswitch_data_1

    goto :goto_3

    .line 2
    :pswitch_1
    nop

    .line 3
    :goto_3
    invoke-static {v1}, Lccsancom/san/az/getDownloadedRecordByUrl;->unifiedDownload(Z)Z

    sget p1, Lccsancom/san/az/getDownloadedRecordByUrl$IncentiveDownloadUtils;->unifiedDownload:I

    and-int/lit8 v2, p1, 0x29

    or-int/lit8 p1, p1, 0x29

    add-int/2addr v2, p1

    rem-int/lit16 p1, v2, 0x80

    sput p1, Lccsancom/san/az/getDownloadedRecordByUrl$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :goto_4
    sget p1, Lccsancom/san/az/getDownloadedRecordByUrl$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    xor-int/lit8 v0, p1, 0x3d

    and-int/lit8 p1, p1, 0x3d

    shl-int/2addr p1, v1

    add-int/2addr v0, p1

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsancom/san/az/getDownloadedRecordByUrl$IncentiveDownloadUtils;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public onActivitySaveInstanceState(Lccsanandroid/app/Activity;Lccsanandroid/os/Bundle;)V
    .locals 0

    sget p1, Lccsancom/san/az/getDownloadedRecordByUrl$IncentiveDownloadUtils;->unifiedDownload:I

    and-int/lit8 p2, p1, 0x1b

    or-int/lit8 p1, p1, 0x1b

    xor-int/lit8 p1, p1, -0x1

    sub-int/2addr p2, p1

    add-int/lit8 p2, p2, -0x1

    rem-int/lit16 p1, p2, 0x80

    sput p1, Lccsancom/san/az/getDownloadedRecordByUrl$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    rem-int/lit8 p2, p2, 0x2

    return-void
.end method

.method public onActivityStarted(Lccsanandroid/app/Activity;)V
    .locals 1

    sget p1, Lccsancom/san/az/getDownloadedRecordByUrl$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    and-int/lit8 v0, p1, 0x1f

    xor-int/lit8 p1, p1, 0x1f

    or-int/2addr p1, v0

    xor-int/lit8 p1, p1, -0x1

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsancom/san/az/getDownloadedRecordByUrl$IncentiveDownloadUtils;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 p1, 0x15

    goto :goto_0

    :cond_0
    const/16 p1, 0x34

    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/16 p1, 0x25

    :try_start_0
    div-int/lit8 p1, p1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x34
        :pswitch_0
    .end packed-switch
.end method

.method public onActivityStopped(Lccsanandroid/app/Activity;)V
    .locals 1

    sget p1, Lccsancom/san/az/getDownloadedRecordByUrl$IncentiveDownloadUtils;->unifiedDownload:I

    add-int/lit8 p1, p1, 0x77

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/az/getDownloadedRecordByUrl$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method
