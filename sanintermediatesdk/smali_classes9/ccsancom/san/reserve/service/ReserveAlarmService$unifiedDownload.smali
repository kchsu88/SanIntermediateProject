.class Lccsancom/san/reserve/service/ReserveAlarmService$unifiedDownload;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/r/addDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/san/reserve/service/ReserveAlarmService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static addDownloadListener:I

.field private static getDownloadingList:I


# instance fields
.field final synthetic unifiedDownload:Lccsancom/san/reserve/service/ReserveAlarmService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/reserve/service/ReserveAlarmService$unifiedDownload;->getDownloadingList:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/reserve/service/ReserveAlarmService$unifiedDownload;->addDownloadListener:I

    return-void
.end method

.method constructor <init>(Lccsancom/san/reserve/service/ReserveAlarmService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/reserve/service/ReserveAlarmService$unifiedDownload;->unifiedDownload:Lccsancom/san/reserve/service/ReserveAlarmService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onListenerChange(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    sget p1, Lccsancom/san/reserve/service/ReserveAlarmService$unifiedDownload;->getDownloadingList:I

    and-int/lit8 p2, p1, 0x4b

    xor-int/lit8 p1, p1, 0x4b

    or-int/2addr p1, p2

    add-int/2addr p2, p1

    rem-int/lit16 p1, p2, 0x80

    sput p1, Lccsancom/san/reserve/service/ReserveAlarmService$unifiedDownload;->addDownloadListener:I

    rem-int/lit8 p2, p2, 0x2

    const/4 p1, 0x0

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    packed-switch p2, :pswitch_data_0

    iget-object p1, p0, Lccsancom/san/reserve/service/ReserveAlarmService$unifiedDownload;->unifiedDownload:Lccsancom/san/reserve/service/ReserveAlarmService;

    invoke-static {p1}, Lccsancom/san/reserve/service/ReserveAlarmService;->access$200(Lccsancom/san/reserve/service/ReserveAlarmService;)V

    goto :goto_1

    :pswitch_0
    iget-object p2, p0, Lccsancom/san/reserve/service/ReserveAlarmService$unifiedDownload;->unifiedDownload:Lccsancom/san/reserve/service/ReserveAlarmService;

    invoke-static {p2}, Lccsancom/san/reserve/service/ReserveAlarmService;->access$200(Lccsancom/san/reserve/service/ReserveAlarmService;)V

    const/4 p2, 0x6

    :try_start_0
    div-int/2addr p2, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    throw p1

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
