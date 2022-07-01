.class Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21$6;
.super Ljava/lang/Object;
.source "MediaBrowserCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->sendCustomAction(Ljava/lang/String;Lccsanandroid/os/Bundle;Lccsanandroid/support/v4/media/MediaBrowserCompat$CustomActionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$callback:Lccsanandroid/support/v4/media/MediaBrowserCompat$CustomActionCallback;

.field final synthetic val$extras:Lccsanandroid/os/Bundle;


# direct methods
.method constructor <init>(Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;Lccsanandroid/support/v4/media/MediaBrowserCompat$CustomActionCallback;Ljava/lang/String;Lccsanandroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;

    .line 1850
    iput-object p1, p0, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21$6;->this$0:Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;

    iput-object p2, p0, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21$6;->val$callback:Lccsanandroid/support/v4/media/MediaBrowserCompat$CustomActionCallback;

    iput-object p3, p0, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21$6;->val$action:Ljava/lang/String;

    iput-object p4, p0, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21$6;->val$extras:Lccsanandroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1853
    iget-object v0, p0, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21$6;->val$callback:Lccsanandroid/support/v4/media/MediaBrowserCompat$CustomActionCallback;

    iget-object v1, p0, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21$6;->val$action:Ljava/lang/String;

    iget-object v2, p0, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21$6;->val$extras:Lccsanandroid/os/Bundle;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lccsanandroid/support/v4/media/MediaBrowserCompat$CustomActionCallback;->onError(Ljava/lang/String;Lccsanandroid/os/Bundle;Lccsanandroid/os/Bundle;)V

    .line 1854
    return-void
.end method
