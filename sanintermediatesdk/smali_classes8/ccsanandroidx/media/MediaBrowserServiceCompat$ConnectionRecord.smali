.class Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompat.java"

# interfaces
.implements Lccsanandroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/media/MediaBrowserServiceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionRecord"
.end annotation


# instance fields
.field public final browserInfo:Lccsanandroidx/media/MediaSessionManager$RemoteUserInfo;

.field public final callbacks:Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;

.field public final pid:I

.field public final pkg:Ljava/lang/String;

.field public root:Lccsanandroidx/media/MediaBrowserServiceCompat$BrowserRoot;

.field public final rootHints:Lccsanandroid/os/Bundle;

.field public final subscriptions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lccsanandroidx/core/util/Pair<",
            "Lccsanandroid/os/IBinder;",
            "Lccsanandroid/os/Bundle;",
            ">;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lccsanandroidx/media/MediaBrowserServiceCompat;

.field public final uid:I


# direct methods
.method constructor <init>(Lccsanandroidx/media/MediaBrowserServiceCompat;Ljava/lang/String;IILccsanandroid/os/Bundle;Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;)V
    .locals 0
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "uid"    # I
    .param p5, "rootHints"    # Lccsanandroid/os/Bundle;
    .param p6, "callback"    # Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;

    .line 712
    iput-object p1, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;->this$0:Lccsanandroidx/media/MediaBrowserServiceCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 708
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;->subscriptions:Ljava/util/HashMap;

    .line 713
    iput-object p2, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;->pkg:Ljava/lang/String;

    .line 714
    iput p3, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;->pid:I

    .line 715
    iput p4, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;->uid:I

    .line 716
    new-instance p1, Lccsanandroidx/media/MediaSessionManager$RemoteUserInfo;

    invoke-direct {p1, p2, p3, p4}, Lccsanandroidx/media/MediaSessionManager$RemoteUserInfo;-><init>(Ljava/lang/String;II)V

    iput-object p1, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;->browserInfo:Lccsanandroidx/media/MediaSessionManager$RemoteUserInfo;

    .line 717
    iput-object p5, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;->rootHints:Lccsanandroid/os/Bundle;

    .line 718
    iput-object p6, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;->callbacks:Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;

    .line 719
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 723
    iget-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;->this$0:Lccsanandroidx/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Lccsanandroidx/media/MediaBrowserServiceCompat;->mHandler:Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceHandler;

    new-instance v1, Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord$1;

    invoke-direct {v1, p0}, Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord$1;-><init>(Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;)V

    invoke-virtual {v0, v1}, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceHandler;->post(Ljava/lang/Runnable;)Z

    .line 729
    return-void
.end method
