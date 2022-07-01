.class Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord$1;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;->binderDied()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;


# direct methods
.method constructor <init>(Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;)V
    .locals 0
    .param p1, "this$1"    # Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;

    .line 723
    iput-object p1, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord$1;->this$1:Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 726
    iget-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord$1;->this$1:Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;

    iget-object v0, v0, Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;->this$0:Lccsanandroidx/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Lccsanandroidx/media/MediaBrowserServiceCompat;->mConnections:Lccsanandroidx/collection/ArrayMap;

    iget-object v1, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord$1;->this$1:Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;

    iget-object v1, v1, Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;->callbacks:Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;

    invoke-interface {v1}, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;->asBinder()Lccsanandroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    return-void
.end method
