.class public interface abstract Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;
.super Ljava/lang/Object;
.source "AdContract.java"

# interfaces
.implements Lccsancom/vungle/warren/ui/JavascriptBridge$MraidHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/vungle/warren/ui/contract/AdContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AdvertisementPresenter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lccsancom/vungle/warren/ui/contract/AdContract$AdView;",
        ">",
        "Ljava/lang/Object;",
        "Lccsancom/vungle/warren/ui/JavascriptBridge$MraidHandler;"
    }
.end annotation


# virtual methods
.method public abstract attach(Lccsancom/vungle/warren/ui/contract/AdContract$AdView;Lccsancom/vungle/warren/ui/state/OptionsState;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lccsancom/vungle/warren/ui/state/OptionsState;",
            ")V"
        }
    .end annotation
.end method

.method public abstract detach(I)V
.end method

.method public abstract generateSaveState(Lccsancom/vungle/warren/ui/state/OptionsState;)V
.end method

.method public abstract handleExit()Z
.end method

.method public abstract onViewConfigurationChanged()V
.end method

.method public abstract restoreFromSave(Lccsancom/vungle/warren/ui/state/OptionsState;)V
.end method

.method public abstract setEventListener(Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;)V
.end method

.method public abstract start()V
.end method

.method public abstract stop(I)V
.end method
