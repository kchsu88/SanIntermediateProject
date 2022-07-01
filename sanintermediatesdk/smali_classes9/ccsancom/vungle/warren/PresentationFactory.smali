.class public interface abstract Lccsancom/vungle/warren/PresentationFactory;
.super Ljava/lang/Object;
.source "PresentationFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/vungle/warren/PresentationFactory$ViewCallback;,
        Lccsancom/vungle/warren/PresentationFactory$FullScreenCallback;
    }
.end annotation


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract getFullScreenPresentation(Lccsanandroid/content/Context;Lccsancom/vungle/warren/AdRequest;Lccsancom/vungle/warren/ui/view/FullAdWidget;Lccsancom/vungle/warren/ui/state/OptionsState;Lccsancom/vungle/warren/ui/CloseDelegate;Lccsancom/vungle/warren/ui/OrientationDelegate;Lccsanandroid/os/Bundle;Lccsancom/vungle/warren/PresentationFactory$FullScreenCallback;)V
.end method

.method public abstract getNativeViewPresentation(Lccsancom/vungle/warren/AdRequest;Lccsancom/vungle/warren/AdConfig;Lccsancom/vungle/warren/ui/CloseDelegate;Lccsancom/vungle/warren/PresentationFactory$ViewCallback;)V
.end method

.method public abstract saveState(Lccsanandroid/os/Bundle;)V
.end method
