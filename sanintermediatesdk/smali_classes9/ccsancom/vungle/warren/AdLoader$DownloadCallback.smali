.class interface abstract Lccsancom/vungle/warren/AdLoader$DownloadCallback;
.super Ljava/lang/Object;
.source "AdLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/vungle/warren/AdLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "DownloadCallback"
.end annotation


# virtual methods
.method public abstract onDownloadCompleted(Lccsancom/vungle/warren/AdRequest;Ljava/lang/String;)V
.end method

.method public abstract onDownloadFailed(Lccsancom/vungle/warren/error/VungleException;Lccsancom/vungle/warren/AdRequest;Ljava/lang/String;)V
.end method

.method public abstract onReady(Lccsancom/vungle/warren/AdRequest;Lccsancom/vungle/warren/model/Placement;Lccsancom/vungle/warren/model/Advertisement;)V
.end method
