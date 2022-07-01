.class Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21$5;
.super Ljava/lang/Object;
.source "MediaBrowserCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->search(Ljava/lang/String;Lccsanandroid/os/Bundle;Lccsanandroid/support/v4/media/MediaBrowserCompat$SearchCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;

.field final synthetic val$callback:Lccsanandroid/support/v4/media/MediaBrowserCompat$SearchCallback;

.field final synthetic val$extras:Lccsanandroid/os/Bundle;

.field final synthetic val$query:Ljava/lang/String;


# direct methods
.method constructor <init>(Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;Lccsanandroid/support/v4/media/MediaBrowserCompat$SearchCallback;Ljava/lang/String;Lccsanandroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;

    .line 1830
    iput-object p1, p0, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21$5;->this$0:Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;

    iput-object p2, p0, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21$5;->val$callback:Lccsanandroid/support/v4/media/MediaBrowserCompat$SearchCallback;

    iput-object p3, p0, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21$5;->val$query:Ljava/lang/String;

    iput-object p4, p0, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21$5;->val$extras:Lccsanandroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1833
    iget-object v0, p0, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21$5;->val$callback:Lccsanandroid/support/v4/media/MediaBrowserCompat$SearchCallback;

    iget-object v1, p0, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21$5;->val$query:Ljava/lang/String;

    iget-object v2, p0, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21$5;->val$extras:Lccsanandroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lccsanandroid/support/v4/media/MediaBrowserCompat$SearchCallback;->onError(Ljava/lang/String;Lccsanandroid/os/Bundle;)V

    .line 1834
    return-void
.end method
