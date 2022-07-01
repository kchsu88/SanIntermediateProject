.class public Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$a;
.super Ljava/lang/Object;
.source "MediaViewPlayerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;)V
    .locals 0

    .line 842
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 843
    iput-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$a;->a:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    .line 844
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 848
    const-string v0, "MediaViewPlayerView"

    :try_start_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$a;->a:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    if-nez v1, :cond_0

    .line 849
    return-void

    .line 852
    :cond_0
    invoke-static {v1}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->j(Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 853
    const-string v1, "play end and display endcardView"

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$a;->a:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-static {v1}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->k(Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 858
    :cond_1
    goto :goto_0

    .line 856
    :catch_0
    move-exception v1

    .line 857
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    :goto_0
    return-void
.end method
