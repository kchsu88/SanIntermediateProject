.class Lccsancom/san/mads/mraid/getDownloadedList$addDownloadListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsanandroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/mads/mraid/getDownloadedList;-><init>(Lccsanandroid/content/Context;Lccsanandroid/os/Bundle;Lccsancom/san/mads/mraid/unifiedDownload$addDownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lccsancom/san/mads/mraid/getDownloadedList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Lccsanandroid/media/MediaPlayer;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lccsanandroid/media/MediaPlayer;->setVideoScalingMode(I)V

    return-void
.end method
