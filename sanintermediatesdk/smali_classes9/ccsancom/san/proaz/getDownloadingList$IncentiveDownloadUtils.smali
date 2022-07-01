.class Lccsancom/san/proaz/getDownloadingList$IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsanandroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/san/proaz/getDownloadingList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static addDownloadListener:I

.field private static removeDownloadListener:I


# instance fields
.field final synthetic unifiedDownload:Lccsancom/san/proaz/getDownloadingList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/proaz/getDownloadingList$IncentiveDownloadUtils;->removeDownloadListener:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/proaz/getDownloadingList$IncentiveDownloadUtils;->addDownloadListener:I

    return-void
.end method

.method constructor <init>(Lccsancom/san/proaz/getDownloadingList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/proaz/getDownloadingList$IncentiveDownloadUtils;->unifiedDownload:Lccsancom/san/proaz/getDownloadingList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lccsanandroid/view/View;)V
    .locals 3

    .line 4
    sget p1, Lccsancom/san/proaz/getDownloadingList$IncentiveDownloadUtils;->removeDownloadListener:I

    add-int/lit8 p1, p1, 0x2e

    add-int/lit8 p1, p1, -0x1

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/proaz/getDownloadingList$IncentiveDownloadUtils;->addDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    .line 1
    :cond_0
    iget-object p1, p0, Lccsancom/san/proaz/getDownloadingList$IncentiveDownloadUtils;->unifiedDownload:Lccsancom/san/proaz/getDownloadingList;

    invoke-static {p1}, Lccsancom/san/proaz/getDownloadingList;->addDownloadListener(Lccsancom/san/proaz/getDownloadingList;)Lccsansan/p/getDownloadedList;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    const/16 p1, 0xb

    goto :goto_0

    :cond_1
    const/16 p1, 0x47

    :goto_0
    packed-switch p1, :pswitch_data_0

    :cond_2
    :goto_1
    goto :goto_2

    :pswitch_0
    sget p1, Lccsancom/san/proaz/getDownloadingList$IncentiveDownloadUtils;->addDownloadListener:I

    const/16 v0, 0x1f

    and-int/lit8 v1, p1, -0x20

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v2, v0

    or-int/2addr v1, v2

    and-int/2addr p1, v0

    shl-int/lit8 p1, p1, 0x1

    add-int/2addr v1, p1

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsancom/san/proaz/getDownloadingList$IncentiveDownloadUtils;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    .line 2
    :cond_3
    iget-object p1, p0, Lccsancom/san/proaz/getDownloadingList$IncentiveDownloadUtils;->unifiedDownload:Lccsancom/san/proaz/getDownloadingList;

    invoke-static {p1}, Lccsancom/san/proaz/getDownloadingList;->addDownloadListener(Lccsancom/san/proaz/getDownloadingList;)Lccsansan/p/getDownloadedList;

    move-result-object p1

    invoke-virtual {p1}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object p1

    const-string v0, "inner_dialog"

    invoke-static {v0, p1}, Lccsansan/bn/getDownloadedCount;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget p1, Lccsancom/san/proaz/getDownloadingList$IncentiveDownloadUtils;->addDownloadListener:I

    add-int/lit8 p1, p1, 0x6

    add-int/lit8 p1, p1, -0x1

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/proaz/getDownloadingList$IncentiveDownloadUtils;->removeDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_2

    goto :goto_1

    :goto_2
    iget-object p1, p0, Lccsancom/san/proaz/getDownloadingList$IncentiveDownloadUtils;->unifiedDownload:Lccsancom/san/proaz/getDownloadingList;

    invoke-virtual {p1}, Lccsancom/san/proaz/getDownloadingList;->getDownloadingList()V

    sget p1, Lccsancom/san/proaz/getDownloadingList$IncentiveDownloadUtils;->removeDownloadListener:I

    xor-int/lit8 v0, p1, 0x67

    and-int/lit8 v1, p1, 0x67

    or-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x1

    xor-int/lit8 v1, v1, -0x1

    or-int/lit8 p1, p1, 0x67

    and-int/2addr p1, v1

    neg-int p1, p1

    or-int v1, v0, p1

    shl-int/lit8 v1, v1, 0x1

    xor-int/2addr p1, v0

    sub-int/2addr v1, p1

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsancom/san/proaz/getDownloadingList$IncentiveDownloadUtils;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    return-void

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method
