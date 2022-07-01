.class final Lccsancom/san/az/getDownloadedRecordByUrl$addDownloadListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/az/getDownloadedRecordByUrl;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;Lccsansan/p/getDownloadedList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# static fields
.field private static addDownloadListener:I

.field private static removeDownloadListener:I


# instance fields
.field final synthetic getDownloadingList:Lccsanandroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/az/getDownloadedRecordByUrl$addDownloadListener;->addDownloadListener:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/az/getDownloadedRecordByUrl$addDownloadListener;->removeDownloadListener:I

    return-void
.end method

.method constructor <init>(Lccsanandroid/app/NotificationManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/az/getDownloadedRecordByUrl$addDownloadListener;->getDownloadingList:Lccsanandroid/app/NotificationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 2
    sget v0, Lccsancom/san/az/getDownloadedRecordByUrl$addDownloadListener;->addDownloadListener:I

    and-int/lit8 v1, v0, 0x6d

    xor-int/lit8 v0, v0, 0x6d

    or-int/2addr v0, v1

    neg-int v0, v0

    neg-int v0, v0

    xor-int v2, v1, v0

    and-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x1

    add-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/az/getDownloadedRecordByUrl$addDownloadListener;->removeDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    .line 1
    :cond_0
    iget-object v1, p0, Lccsancom/san/az/getDownloadedRecordByUrl$addDownloadListener;->getDownloadingList:Lccsanandroid/app/NotificationManager;

    if-eqz v1, :cond_1

    .line 2
    const/16 v2, 0x34

    goto :goto_0

    :cond_1
    const/16 v2, 0x3b

    :goto_0
    packed-switch v2, :pswitch_data_0

    xor-int/lit8 v2, v0, 0x13

    and-int/lit8 v0, v0, 0x13

    shl-int/lit8 v0, v0, 0x1

    add-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/az/getDownloadedRecordByUrl$addDownloadListener;->addDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    .line 1
    :cond_2
    const/16 v0, 0x1002

    .line 2
    invoke-virtual {v1, v0}, Lccsanandroid/app/NotificationManager;->cancel(I)V

    sget v0, Lccsancom/san/az/getDownloadedRecordByUrl$addDownloadListener;->removeDownloadListener:I

    const/16 v1, 0x47

    and-int/lit8 v2, v0, -0x48

    xor-int/lit8 v3, v0, -0x1

    and-int/2addr v3, v1

    or-int/2addr v2, v3

    and-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    neg-int v0, v0

    or-int v1, v2, v0

    shl-int/lit8 v1, v1, 0x1

    xor-int/2addr v0, v2

    sub-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/az/getDownloadedRecordByUrl$addDownloadListener;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    :cond_3
    :pswitch_0
    sget v0, Lccsancom/san/az/getDownloadedRecordByUrl$addDownloadListener;->addDownloadListener:I

    const/16 v1, 0x6b

    and-int/lit8 v2, v0, -0x6c

    xor-int/lit8 v3, v0, -0x1

    and-int/2addr v3, v1

    or-int/2addr v2, v3

    and-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x1

    or-int v1, v2, v0

    shl-int/lit8 v1, v1, 0x1

    xor-int/2addr v0, v2

    sub-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/az/getDownloadedRecordByUrl$addDownloadListener;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    return-void

    :pswitch_data_0
    .packed-switch 0x3b
        :pswitch_0
    .end packed-switch
.end method
