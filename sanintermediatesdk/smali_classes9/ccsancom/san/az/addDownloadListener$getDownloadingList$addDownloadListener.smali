.class Lccsancom/san/az/addDownloadListener$getDownloadingList$addDownloadListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/az/addDownloadListener$getDownloadingList;->unifiedDownload(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static addDownloadListener:I

.field private static unifiedDownload:I


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsancom/san/az/addDownloadListener$getDownloadingList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/az/addDownloadListener$getDownloadingList$addDownloadListener;->unifiedDownload:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/az/addDownloadListener$getDownloadingList$addDownloadListener;->addDownloadListener:I

    return-void
.end method

.method constructor <init>(Lccsancom/san/az/addDownloadListener$getDownloadingList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/az/addDownloadListener$getDownloadingList$addDownloadListener;->IncentiveDownloadUtils:Lccsancom/san/az/addDownloadListener$getDownloadingList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 2
    sget v0, Lccsancom/san/az/addDownloadListener$getDownloadingList$addDownloadListener;->unifiedDownload:I

    and-int/lit8 v1, v0, 0x8

    or-int/lit8 v0, v0, 0x8

    add-int/2addr v1, v0

    or-int/lit8 v0, v1, -0x1

    const/4 v2, 0x1

    shl-int/2addr v0, v2

    xor-int/lit8 v1, v1, -0x1

    sub-int/2addr v0, v1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/az/addDownloadListener$getDownloadingList$addDownloadListener;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x22

    goto :goto_0

    :cond_0
    const/16 v0, 0x51

    :goto_0
    const/4 v1, 0x0

    const-string v3, "application_permission"

    packed-switch v0, :pswitch_data_0

    .line 1
    :pswitch_0
    iget-object v0, p0, Lccsancom/san/az/addDownloadListener$getDownloadingList$addDownloadListener;->IncentiveDownloadUtils:Lccsancom/san/az/addDownloadListener$getDownloadingList;

    iget-object v4, v0, Lccsancom/san/az/addDownloadListener$getDownloadingList;->IncentiveDownloadUtils:Lccsansan/p/getDownloadedList;

    iget-object v0, v0, Lccsancom/san/az/addDownloadListener$getDownloadingList;->unifiedDownload:Ljava/lang/String;

    invoke-static {v4, v2, v0, v3, v1}, Lccsancom/san/az/getDownloadedRecordByUrl;->removeDownloadListener(Lccsansan/p/getDownloadedList;ZLjava/lang/String;Ljava/lang/String;Lccsancom/san/az/getDownloadedRecordByUrl$deleteDownItem;)V

    .line 2
    iget-object v0, p0, Lccsancom/san/az/addDownloadListener$getDownloadingList$addDownloadListener;->IncentiveDownloadUtils:Lccsancom/san/az/addDownloadListener$getDownloadingList;

    iget-object v0, v0, Lccsancom/san/az/addDownloadListener$getDownloadingList;->IncentiveDownloadUtils:Lccsansan/p/getDownloadedList;

    invoke-static {v0}, Lccsancom/san/az/addDownloadListener;->IncentiveDownloadUtils(Lccsansan/p/getDownloadedList;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_0
    .end packed-switch
.end method
