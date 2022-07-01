.class Lccsancom/vungle/warren/persistence/CacheManager$1;
.super Lccsanandroid/os/FileObserver;
.source "CacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/persistence/CacheManager;->observeDirectory(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/vungle/warren/persistence/CacheManager;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/persistence/CacheManager;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/vungle/warren/persistence/CacheManager;
    .param p2, "arg0"    # Ljava/lang/String;
    .param p3, "arg1"    # I

    .line 155
    iput-object p1, p0, Lccsancom/vungle/warren/persistence/CacheManager$1;->this$0:Lccsancom/vungle/warren/persistence/CacheManager;

    invoke-direct {p0, p2, p3}, Lccsanandroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 1
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    .line 158
    invoke-virtual {p0}, Lccsancom/vungle/warren/persistence/CacheManager$1;->stopWatching()V

    .line 159
    iget-object v0, p0, Lccsancom/vungle/warren/persistence/CacheManager$1;->this$0:Lccsancom/vungle/warren/persistence/CacheManager;

    invoke-static {v0}, Lccsancom/vungle/warren/persistence/CacheManager;->access$000(Lccsancom/vungle/warren/persistence/CacheManager;)V

    .line 160
    return-void
.end method
