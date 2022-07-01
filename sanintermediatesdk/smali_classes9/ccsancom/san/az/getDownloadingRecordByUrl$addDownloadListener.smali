.class final Lccsancom/san/az/getDownloadingRecordByUrl$addDownloadListener;
.super Lccsanandroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/san/az/getDownloadingRecordByUrl;
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

    sput v0, Lccsancom/san/az/getDownloadingRecordByUrl$addDownloadListener;->IncentiveDownloadUtils:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/az/getDownloadingRecordByUrl$addDownloadListener;->unifiedDownload:I

    return-void
.end method

.method constructor <init>(Lccsanandroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Lccsanandroid/os/Message;)V
    .locals 3

    .line 6
    sget v0, Lccsancom/san/az/getDownloadingRecordByUrl$addDownloadListener;->unifiedDownload:I

    xor-int/lit8 v1, v0, 0xf

    and-int/lit8 v0, v0, 0xf

    shl-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/az/getDownloadingRecordByUrl$addDownloadListener;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 1
    :cond_0
    iget v0, p1, Lccsanandroid/os/Message;->what:I

    const/16 v1, 0x65

    if-eq v0, v1, :cond_1

    .line 6
    sget v0, Lccsancom/san/az/getDownloadingRecordByUrl$addDownloadListener;->IncentiveDownloadUtils:I

    and-int/lit8 v1, v0, -0x60

    xor-int/lit8 v2, v0, -0x1

    and-int/lit8 v2, v2, 0x5f

    or-int/2addr v1, v2

    and-int/lit8 v0, v0, 0x5f

    shl-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/az/getDownloadingRecordByUrl$addDownloadListener;->unifiedDownload:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_3

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p1, Lccsanandroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lccsancom/san/az/getDownloadingRecordByUrl;->removeDownloadListener(Ljava/lang/String;)V

    .line 6
    sget v0, Lccsancom/san/az/getDownloadingRecordByUrl$addDownloadListener;->unifiedDownload:I

    or-int/lit8 v1, v0, 0x5

    shl-int/lit8 v1, v1, 0x1

    xor-int/lit8 v0, v0, 0x5

    sub-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/az/getDownloadingRecordByUrl$addDownloadListener;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    const/16 v0, 0x61

    goto :goto_0

    :cond_2
    const/16 v0, 0x30

    :cond_3
    :goto_0
    invoke-super {p0, p1}, Lccsanandroid/os/Handler;->handleMessage(Lccsanandroid/os/Message;)V

    sget p1, Lccsancom/san/az/getDownloadingRecordByUrl$addDownloadListener;->unifiedDownload:I

    xor-int/lit8 v0, p1, 0x54

    and-int/lit8 p1, p1, 0x54

    shl-int/lit8 p1, p1, 0x1

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x0

    add-int/lit8 v0, v0, -0x1

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsancom/san/az/getDownloadingRecordByUrl$addDownloadListener;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method
