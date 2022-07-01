.class Lccsancom/san/ads/Task$UICallBackTask$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/ads/Task$UICallBackTask;->callBack(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsancom/san/ads/Task$UICallBackTask;


# direct methods
.method constructor <init>(Lccsancom/san/ads/Task$UICallBackTask;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/ads/Task$UICallBackTask$1;->IncentiveDownloadUtils:Lccsancom/san/ads/Task$UICallBackTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/ads/Task$UICallBackTask$1;->IncentiveDownloadUtils:Lccsancom/san/ads/Task$UICallBackTask;

    invoke-virtual {v0}, Lccsancom/san/ads/Task$UICallBackTask;->callBackOnUIThread()V

    return-void
.end method
