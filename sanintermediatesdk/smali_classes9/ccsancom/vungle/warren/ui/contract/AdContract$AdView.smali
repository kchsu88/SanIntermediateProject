.class public interface abstract Lccsancom/vungle/warren/ui/contract/AdContract$AdView;
.super Ljava/lang/Object;
.source "AdContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/vungle/warren/ui/contract/AdContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AdView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract close()V
.end method

.method public abstract destroyAdView(J)V
.end method

.method public abstract getWebsiteUrl()Ljava/lang/String;
.end method

.method public abstract hasWebView()Z
.end method

.method public abstract open(Ljava/lang/String;Lccsancom/vungle/warren/utility/ActivityManager$LeftApplicationCallback;)V
.end method

.method public abstract pauseWeb()V
.end method

.method public abstract refreshDialogIfVisible()V
.end method

.method public abstract removeWebView()V
.end method

.method public abstract resumeWeb()V
.end method

.method public abstract setImmersiveMode()V
.end method

.method public abstract setOrientation(I)V
.end method

.method public abstract setPresenter(Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract showCloseButton()V
.end method

.method public abstract showDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsanandroid/content/DialogInterface$OnClickListener;)V
.end method

.method public abstract showWebsite(Ljava/lang/String;)V
.end method
