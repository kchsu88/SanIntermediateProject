.class public interface abstract Lccsansan/ck/getDownloadedRecordByUrl;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/ck/getDownloadedRecordByUrl$unifiedDownload;
    }
.end annotation


# virtual methods
.method public abstract getActionType()I
.end method

.method public abstract performAction(Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;Ljava/lang/String;Lccsansan/ck/IncentiveDownloadUtils;)Lccsansan/ck/unifiedDownload;
.end method

.method public abstract performActionWhenOffline(Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;Ljava/lang/String;Lccsansan/ck/IncentiveDownloadUtils;)Lccsansan/ck/unifiedDownload;
.end method

.method public abstract resolveUrl(Ljava/lang/String;Ljava/lang/String;Lccsansan/ck/getDownloadedRecordByUrl$unifiedDownload;)V
.end method

.method public abstract shouldTryHandlingAction(Lccsansan/dt/removeDownloadListener;I)Z
.end method
