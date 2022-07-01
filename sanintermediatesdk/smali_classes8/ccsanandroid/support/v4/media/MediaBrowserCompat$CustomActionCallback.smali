.class public abstract Lccsanandroid/support/v4/media/MediaBrowserCompat$CustomActionCallback;
.super Ljava/lang/Object;
.source "MediaBrowserCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroid/support/v4/media/MediaBrowserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CustomActionCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 921
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Lccsanandroid/os/Bundle;Lccsanandroid/os/Bundle;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "extras"    # Lccsanandroid/os/Bundle;
    .param p3, "data"    # Lccsanandroid/os/Bundle;

    .line 952
    return-void
.end method

.method public onProgressUpdate(Ljava/lang/String;Lccsanandroid/os/Bundle;Lccsanandroid/os/Bundle;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "extras"    # Lccsanandroid/os/Bundle;
    .param p3, "data"    # Lccsanandroid/os/Bundle;

    .line 931
    return-void
.end method

.method public onResult(Ljava/lang/String;Lccsanandroid/os/Bundle;Lccsanandroid/os/Bundle;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "extras"    # Lccsanandroid/os/Bundle;
    .param p3, "resultData"    # Lccsanandroid/os/Bundle;

    .line 941
    return-void
.end method
