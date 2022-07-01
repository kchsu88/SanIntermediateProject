.class public interface abstract Lccsancom/vungle/warren/ui/contract/LocalAdContract$LocalView;
.super Ljava/lang/Object;
.source "LocalAdContract.java"

# interfaces
.implements Lccsancom/vungle/warren/ui/contract/AdContract$AdView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/vungle/warren/ui/contract/LocalAdContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LocalView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsancom/vungle/warren/ui/contract/AdContract$AdView<",
        "Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getVideoPosition()I
.end method

.method public abstract isDialogVisible()Z
.end method

.method public abstract isVideoPlaying()Z
.end method

.method public abstract pauseVideo()V
.end method

.method public abstract playVideo(Ljava/io/File;ZI)V
.end method

.method public abstract showCTAOverlay(ZZ)V
.end method
