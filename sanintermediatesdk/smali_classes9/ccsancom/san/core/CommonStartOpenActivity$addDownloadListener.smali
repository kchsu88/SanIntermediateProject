.class Lccsancom/san/core/CommonStartOpenActivity$addDownloadListener;
.super Lccsancom/san/ads/Task$UICallBackTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/core/CommonStartOpenActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsancom/san/core/CommonStartOpenActivity;


# direct methods
.method constructor <init>(Lccsancom/san/core/CommonStartOpenActivity;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/core/CommonStartOpenActivity$addDownloadListener;->IncentiveDownloadUtils:Lccsancom/san/core/CommonStartOpenActivity;

    invoke-direct {p0, p2, p3}, Lccsancom/san/ads/Task$UICallBackTask;-><init>(J)V

    return-void
.end method


# virtual methods
.method public callBackOnUIThread()V
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/core/CommonStartOpenActivity$addDownloadListener;->IncentiveDownloadUtils:Lccsancom/san/core/CommonStartOpenActivity;

    invoke-virtual {v0}, Lccsanandroid/app/Activity;->finish()V

    return-void
.end method
