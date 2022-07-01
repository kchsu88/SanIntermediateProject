.class public abstract Lccsancom/san/ads/Task$UICallBackTask;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/san/ads/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "UICallBackTask"
.end annotation


# instance fields
.field private tempHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lccsanandroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private uiCallBackDelay:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lccsancom/san/ads/Task$UICallBackTask;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lccsancom/san/ads/Task;-><init>()V

    .line 3
    iput-wide p1, p0, Lccsancom/san/ads/Task$UICallBackTask;->uiCallBackDelay:J

    return-void
.end method


# virtual methods
.method public final callBack(Ljava/lang/Exception;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lccsancom/san/ads/Task$UICallBackTask;->tempHandler:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lccsancom/san/ads/Task$UICallBackTask;->tempHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsanandroid/os/Handler;

    new-instance v0, Lccsancom/san/ads/Task$UICallBackTask$1;

    invoke-direct {v0, p0}, Lccsancom/san/ads/Task$UICallBackTask$1;-><init>(Lccsancom/san/ads/Task$UICallBackTask;)V

    iget-wide v1, p0, Lccsancom/san/ads/Task$UICallBackTask;->uiCallBackDelay:J

    invoke-virtual {p1, v0, v1, v2}, Lccsanandroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public abstract callBackOnUIThread()V
.end method

.method public execute()V
    .locals 0

    return-void
.end method

.method public setUIHandler(Lccsanandroid/os/Handler;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lccsancom/san/ads/Task$UICallBackTask;->tempHandler:Ljava/lang/ref/WeakReference;

    return-void
.end method
